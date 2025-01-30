; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/cjpeg.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.jpeg_component_info.19 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.my_destination_mgr = type { %struct.jpeg_destination_mgr, ptr, ptr }
%struct.jpeg_memory_mgr.27 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_comp_master = type { %struct.jpeg_comp_master, i32, i32, i32, i32 }
%struct.jpeg_entropy_encoder.37 = type { ptr, ptr, ptr }
%struct.my_main_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x ptr] }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.my_prep_controller = type { %struct.jpeg_c_coef_controller, [10 x ptr], i32, i32, i32, i32 }
%struct.my_coef_controller.63 = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x ptr], [10 x ptr] }
%struct.my_color_converter = type { %struct.jpeg_c_coef_controller, ptr }
%struct.my_downsampler = type { %struct.jpeg_downsampler, [10 x ptr] }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }
%struct.huff_entropy_encoder = type { %struct.jpeg_entropy_encoder.37, %struct.savable_state, i32, i32, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr] }
%struct.savable_state = type { i64, i32, [4 x i32] }
%struct.working_state = type { ptr, i64, %struct.savable_state, ptr }
%struct.phuff_entropy_encoder = type { %struct.jpeg_entropy_encoder.37, i32, ptr, i64, i64, i32, ptr, [4 x i32], i32, i32, i32, ptr, i32, i32, [4 x ptr], [4 x ptr] }
%struct.my_fdct_controller = type { %struct.jpeg_c_coef_controller, ptr, [4 x ptr], ptr, [4 x ptr] }
%struct.my_memory_mgr = type { %struct.jpeg_memory_mgr.27, [2 x ptr], [2 x ptr], ptr, ptr, i64, i32 }
%struct.anon.0 = type { ptr, i64, i64 }
%union.large_pool_struct = type { %struct.anon.0 }
%struct.jvirt_sarray_control = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.backing_store_struct }
%struct.backing_store_struct = type { ptr, ptr, ptr, ptr, [64 x i8] }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ppm_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, i64, ptr }
%struct.gif_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, [260 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct._tga_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, ptr, [4 x i8], i32, i32, i32, ptr }
%struct._bmp_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, i32, i32 }

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
@jpeg_natural_order = internal constant [80 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 48, i32 41, i32 34, i32 27, i32 20, i32 13, i32 6, i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56, i32 57, i32 50, i32 43, i32 36, i32 29, i32 22, i32 15, i32 23, i32 30, i32 37, i32 44, i32 51, i32 58, i32 59, i32 52, i32 45, i32 38, i32 31, i32 39, i32 46, i32 53, i32 60, i32 61, i32 54, i32 47, i32 55, i32 62, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16
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
@.str.72 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
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
@jpeg_std_message_table = internal constant [121 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr null], align 16
@.str.120 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"JPEGMEM\00", align 1
@.str.1.122 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
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

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_CreateCompress(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !7
  %5 = icmp eq i32 %1, 61
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 10, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 61, ptr %9, align 4, !tbaa !19
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 6, i32 0, i64 1
  store i32 %1, ptr %11, align 4, !tbaa !19
  %12 = load ptr, ptr %0, align 8, !tbaa !15
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  tail call void %13(ptr noundef nonnull %0) #28
  br label %14

14:                                               ; preds = %6, %3
  %15 = icmp eq i64 %2, 496
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 19, ptr %18, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 6
  store i32 496, ptr %19, align 4, !tbaa !19
  %20 = trunc i64 %2 to i32
  %21 = load ptr, ptr %0, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 6, i32 0, i64 1
  store i32 %20, ptr %22, align 4, !tbaa !19
  %23 = load ptr, ptr %0, align 8, !tbaa !15
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  tail call void %24(ptr noundef nonnull %0) #28
  br label %25

25:                                               ; preds = %16, %14
  %26 = load ptr, ptr %0, align 8, !tbaa !15
  %27 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(496) %27, i8 0, i64 488, i1 false)
  store ptr %26, ptr %0, align 8, !tbaa !15
  tail call void @jinit_memory_mgr(ptr noundef nonnull %0) #28
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !21
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  store ptr null, ptr %29, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %30, i8 0, i64 104, i1 false)
  store double 1.000000e+00, ptr %31, align 8, !tbaa !23
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  store i32 100, ptr %32, align 4, !tbaa !24
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_destroy_compress(ptr noundef %0) #0 {
  tail call void @jpeg_destroy(ptr noundef %0) #28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @jpeg_suppress_tables(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi i64 [ 0, %2 ], [ %11, %10 ]
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.JQUANT_TBL, ptr %6, i64 0, i32 1
  store i32 %1, ptr %9, align 4, !tbaa !26
  br label %10

10:                                               ; preds = %8, %3
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %3, !llvm.loop !28

13:                                               ; preds = %26, %10
  %14 = phi i64 [ %27, %26 ], [ 0, %10 ]
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.JHUFF_TBL, ptr %16, i64 0, i32 2
  store i32 %1, ptr %19, align 4, !tbaa !30
  br label %20

20:                                               ; preds = %18, %13
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %14
  %22 = load ptr, ptr %21, align 8, !tbaa !25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.JHUFF_TBL, ptr %22, i64 0, i32 2
  store i32 %1, ptr %25, align 4, !tbaa !30
  br label %26

26:                                               ; preds = %24, %20
  %27 = add nuw nsw i64 %14, 1
  %28 = icmp eq i64 %27, 4
  br i1 %28, label %29, label %13, !llvm.loop !32

29:                                               ; preds = %26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_finish_compress(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !24
  switch i32 %3, label %18 [
    i32 101, label %4
    i32 102, label %4
    i32 103, label %26
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 36
  %6 = load i32, ptr %5, align 8, !tbaa !33
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 66, ptr %12, align 8, !tbaa !16
  %13 = load ptr, ptr %11, align 8, !tbaa !20
  tail call void %13(ptr noundef nonnull %0) #28
  br label %14

14:                                               ; preds = %10, %4
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.jpeg_comp_master, ptr %16, i64 0, i32 2
  br label %23

18:                                               ; preds = %1
  %19 = load ptr, ptr %0, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 18, ptr %20, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 6
  store i32 %3, ptr %21, align 4, !tbaa !19
  %22 = load ptr, ptr %0, align 8, !tbaa !15
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi ptr [ %22, %18 ], [ %17, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !25
  tail call void %25(ptr noundef nonnull %0) #28
  br label %26

26:                                               ; preds = %23, %1
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.jpeg_comp_master, ptr %28, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !36
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  br label %36

36:                                               ; preds = %66, %32
  %37 = phi ptr [ %28, %32 ], [ %70, %66 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  tail call void %38(ptr noundef nonnull %0) #28
  %39 = load i32, ptr %33, align 8, !tbaa !39
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %61, %36
  %42 = phi i64 [ %62, %61 ], [ 0, %36 ]
  %43 = phi i32 [ %63, %61 ], [ %39, %36 ]
  %44 = load ptr, ptr %34, align 8, !tbaa !21
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %44, i64 0, i32 1
  store i64 %42, ptr %47, align 8, !tbaa !40
  %48 = zext i32 %43 to i64
  %49 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %44, i64 0, i32 2
  store i64 %48, ptr %49, align 8, !tbaa !42
  %50 = load ptr, ptr %44, align 8, !tbaa !43
  tail call void %50(ptr noundef nonnull %0) #28
  br label %51

51:                                               ; preds = %46, %41
  %52 = load ptr, ptr %35, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = tail call i32 %54(ptr noundef nonnull %0, ptr noundef null) #28
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load ptr, ptr %0, align 8, !tbaa !15
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 5
  store i32 22, ptr %59, align 8, !tbaa !16
  %60 = load ptr, ptr %58, align 8, !tbaa !20
  tail call void %60(ptr noundef nonnull %0) #28
  br label %61

61:                                               ; preds = %57, %51
  %62 = add nuw nsw i64 %42, 1
  %63 = load i32, ptr %33, align 8, !tbaa !39
  %64 = zext i32 %63 to i64
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %41, label %66, !llvm.loop !47

66:                                               ; preds = %61, %36
  %67 = load ptr, ptr %27, align 8, !tbaa !35
  %68 = getelementptr inbounds %struct.jpeg_comp_master, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !48
  tail call void %69(ptr noundef nonnull %0) #28
  %70 = load ptr, ptr %27, align 8, !tbaa !35
  %71 = getelementptr inbounds %struct.jpeg_comp_master, ptr %70, i64 0, i32 4
  %72 = load i32, ptr %71, align 4, !tbaa !36
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %36, label %74, !llvm.loop !49

74:                                               ; preds = %66, %26
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %76 = load ptr, ptr %75, align 8, !tbaa !50
  %77 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !51
  tail call void %78(ptr noundef nonnull %0) #28
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !22
  %81 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %80, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !53
  tail call void %82(ptr noundef nonnull %0) #28
  tail call void @jpeg_abort(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_start_compress(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !24
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 18, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %4, ptr %9, align 4, !tbaa !19
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  tail call void %11(ptr noundef nonnull %0) #28
  br label %12

12:                                               ; preds = %6, %2
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call void @jpeg_suppress_tables(ptr noundef nonnull %0, i32 noundef 0) #28
  br label %15

15:                                               ; preds = %14, %12
  %16 = load ptr, ptr %0, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  tail call void %18(ptr noundef nonnull %0) #28
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  tail call void %22(ptr noundef nonnull %0) #28
  tail call void @jinit_compress_master(ptr noundef nonnull %0) #28
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  tail call void %25(ptr noundef nonnull %0) #28
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 36
  store i32 0, ptr %26, align 8, !tbaa !33
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 23
  %28 = load i32, ptr %27, align 8, !tbaa !57
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 101, i32 102
  store i32 %30, ptr %3, align 4, !tbaa !24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @jpeg_write_scanlines(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #29
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !24
  %7 = icmp eq i32 %6, 101
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 18, ptr %10, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 6
  store i32 %6, ptr %11, align 4, !tbaa !19
  %12 = load ptr, ptr %0, align 8, !tbaa !15
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  tail call void %13(ptr noundef nonnull %0) #28
  br label %14

14:                                               ; preds = %8, %3
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 36
  %16 = load i32, ptr %15, align 8, !tbaa !33
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !34
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 5
  store i32 119, ptr %22, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !58
  tail call void %24(ptr noundef nonnull %0, i32 noundef -1) #28
  br label %25

25:                                               ; preds = %20, %14
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %15, align 8, !tbaa !33
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %27, i64 0, i32 1
  store i64 %31, ptr %32, align 8, !tbaa !40
  %33 = load i32, ptr %17, align 4, !tbaa !34
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %27, i64 0, i32 2
  store i64 %34, ptr %35, align 8, !tbaa !42
  %36 = load ptr, ptr %27, align 8, !tbaa !43
  tail call void %36(ptr noundef nonnull %0) #28
  br label %37

37:                                               ; preds = %29, %25
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.jpeg_comp_master, ptr %39, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !59
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.jpeg_comp_master, ptr %39, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !60
  tail call void %45(ptr noundef nonnull %0) #28
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, ptr %17, align 4, !tbaa !34
  %48 = load i32, ptr %15, align 8, !tbaa !33
  %49 = sub i32 %47, %48
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 %2)
  store i32 0, ptr %4, align 4, !tbaa !61
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 52
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !63
  call void %54(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %50) #28
  %55 = load i32, ptr %4, align 4, !tbaa !61
  %56 = load i32, ptr %15, align 8, !tbaa !33
  %57 = add i32 %56, %55
  store i32 %57, ptr %15, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #29
  ret i32 %55
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_add_quant_table(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %6
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !24
  %10 = icmp eq i32 %9, 100
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 18, ptr %13, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 6
  store i32 %9, ptr %14, align 4, !tbaa !19
  %15 = load ptr, ptr %0, align 8, !tbaa !15
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  tail call void %16(ptr noundef nonnull %0) #28
  br label %17

17:                                               ; preds = %11, %5
  %18 = load ptr, ptr %7, align 8, !tbaa !25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %0) #28
  store ptr %21, ptr %7, align 8, !tbaa !25
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi ptr [ %21, %20 ], [ %18, %17 ]
  %24 = sext i32 %3 to i64
  %25 = icmp ne i32 %4, 0
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi i64 [ 0, %22 ], [ %41, %26 ]
  %28 = getelementptr inbounds i32, ptr %2, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !61
  %30 = zext i32 %29 to i64
  %31 = mul nsw i64 %30, %24
  %32 = add nsw i64 %31, 50
  %33 = sdiv i64 %32, 100
  %34 = tail call i64 @llvm.smax.i64(i64 %33, i64 1)
  %35 = tail call i64 @llvm.umin.i64(i64 %34, i64 32767)
  %36 = icmp ugt i64 %35, 255
  %37 = select i1 %25, i1 %36, i1 false
  %38 = trunc i64 %35 to i16
  %39 = select i1 %37, i16 255, i16 %38
  %40 = getelementptr inbounds [64 x i16], ptr %23, i64 0, i64 %27
  store i16 %39, ptr %40, align 2, !tbaa !65
  %41 = add nuw nsw i64 %27, 1
  %42 = icmp eq i64 %41, 64
  br i1 %42, label %43, label %26, !llvm.loop !66

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.JQUANT_TBL, ptr %23, i64 0, i32 1
  store i32 0, ptr %44, align 4, !tbaa !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @jpeg_quality_scaling(i32 noundef %0) #5 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 100)
  %4 = icmp ult i32 %3, 50
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = trunc i32 %3 to i16
  %7 = udiv i16 5000, %6
  %8 = zext i16 %7 to i32
  br label %12

9:                                                ; preds = %1
  %10 = shl nuw nsw i32 %3, 1
  %11 = sub nuw nsw i32 200, %10
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ %8, %5 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_set_quality(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 100)
  %6 = icmp ult i32 %5, 50
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = trunc i32 %5 to i16
  %9 = udiv i16 5000, %8
  %10 = zext i16 %9 to i32
  br label %14

11:                                               ; preds = %3
  %12 = shl nuw nsw i32 %5, 1
  %13 = sub nuw nsw i32 200, %12
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i32 [ %10, %7 ], [ %13, %11 ]
  tail call void @jpeg_add_quant_table(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @jpeg_set_linear_quality.std_luminance_quant_tbl, i32 noundef %15, i32 noundef %2) #30
  tail call void @jpeg_add_quant_table(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @jpeg_set_linear_quality.std_chrominance_quant_tbl, i32 noundef %15, i32 noundef %2) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_set_defaults(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !24
  %4 = icmp eq i32 %3, 100
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 18, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 6
  store i32 %3, ptr %8, align 4, !tbaa !19
  %9 = load ptr, ptr %0, align 8, !tbaa !15
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  tail call void %10(ptr noundef nonnull %0) #28
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = tail call ptr %18(ptr noundef nonnull %0, i32 noundef 0, i64 noundef 960) #28
  store ptr %19, ptr %12, align 8, !tbaa !67
  br label %20

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %21, align 8, !tbaa !70
  tail call void @jpeg_add_quant_table(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @jpeg_set_linear_quality.std_luminance_quant_tbl, i32 noundef 50, i32 noundef 1) #30
  tail call void @jpeg_add_quant_table(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @jpeg_set_linear_quality.std_chrominance_quant_tbl, i32 noundef 50, i32 noundef 1) #30
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #28
  store ptr %26, ptr %22, align 8, !tbaa !25
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi ptr [ %26, %25 ], [ %23, %20 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %28, ptr noundef nonnull align 16 dereferenceable(17) @std_huff_tables.bits_dc_luminance, i64 17, i1 false)
  %29 = load ptr, ptr %22, align 8, !tbaa !25
  %30 = getelementptr inbounds %struct.JHUFF_TBL, ptr %29, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %30, ptr noundef nonnull align 1 dereferenceable(256) @std_huff_tables.val_dc_chrominance, i64 256, i1 false)
  %31 = load ptr, ptr %22, align 8, !tbaa !25
  %32 = getelementptr inbounds %struct.JHUFF_TBL, ptr %31, i64 0, i32 2
  store i32 0, ptr %32, align 4, !tbaa !30
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !25
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #28
  store ptr %37, ptr %33, align 8, !tbaa !25
  br label %38

38:                                               ; preds = %36, %27
  %39 = phi ptr [ %37, %36 ], [ %34, %27 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %39, ptr noundef nonnull align 16 dereferenceable(17) @std_huff_tables.bits_ac_luminance, i64 17, i1 false)
  %40 = load ptr, ptr %33, align 8, !tbaa !25
  %41 = getelementptr inbounds %struct.JHUFF_TBL, ptr %40, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %41, ptr noundef nonnull align 16 dereferenceable(256) @std_huff_tables.val_ac_luminance, i64 256, i1 false)
  %42 = load ptr, ptr %33, align 8, !tbaa !25
  %43 = getelementptr inbounds %struct.JHUFF_TBL, ptr %42, i64 0, i32 2
  store i32 0, ptr %43, align 4, !tbaa !30
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !25
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #28
  store ptr %48, ptr %44, align 8, !tbaa !25
  br label %49

49:                                               ; preds = %47, %38
  %50 = phi ptr [ %48, %47 ], [ %45, %38 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %50, ptr noundef nonnull align 16 dereferenceable(17) @std_huff_tables.bits_dc_chrominance, i64 17, i1 false)
  %51 = load ptr, ptr %44, align 8, !tbaa !25
  %52 = getelementptr inbounds %struct.JHUFF_TBL, ptr %51, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %52, ptr noundef nonnull align 1 dereferenceable(256) @std_huff_tables.val_dc_chrominance, i64 256, i1 false)
  %53 = load ptr, ptr %44, align 8, !tbaa !25
  %54 = getelementptr inbounds %struct.JHUFF_TBL, ptr %53, i64 0, i32 2
  store i32 0, ptr %54, align 4, !tbaa !30
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !25
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #28
  store ptr %59, ptr %55, align 8, !tbaa !25
  br label %60

60:                                               ; preds = %58, %49
  %61 = phi ptr [ %59, %58 ], [ %56, %49 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %61, ptr noundef nonnull align 16 dereferenceable(17) @std_huff_tables.bits_ac_chrominance, i64 17, i1 false)
  %62 = load ptr, ptr %55, align 8, !tbaa !25
  %63 = getelementptr inbounds %struct.JHUFF_TBL, ptr %62, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %63, ptr noundef nonnull align 16 dereferenceable(256) @std_huff_tables.val_ac_chrominance, i64 256, i1 false)
  %64 = load ptr, ptr %55, align 8, !tbaa !25
  %65 = getelementptr inbounds %struct.JHUFF_TBL, ptr %64, i64 0, i32 2
  store i32 0, ptr %65, align 4, !tbaa !30
  %66 = getelementptr i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %66, i8 0, i64 16, i1 false), !tbaa !19
  %67 = getelementptr i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %67, i8 1, i64 16, i1 false), !tbaa !19
  %68 = getelementptr i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %68, i8 5, i64 16, i1 false), !tbaa !19
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  %70 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  store i32 0, ptr %70, align 8, !tbaa !71
  %71 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  %72 = load i32, ptr %21, align 8, !tbaa !70
  %73 = icmp sgt i32 %72, 8
  %74 = zext i1 %73 to i32
  store i32 %74, ptr %71, align 8
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 26
  %76 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 32
  store i8 0, ptr %76, align 4, !tbaa !72
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %75, i8 0, i64 20, i1 false)
  store i16 1, ptr %77, align 2, !tbaa !73
  %78 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 34
  store i16 1, ptr %78, align 8, !tbaa !74
  tail call void @jpeg_default_colorspace(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_default_colorspace(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !75
  switch i32 %3, label %10 [
    i32 1, label %4
    i32 2, label %5
    i32 3, label %6
    i32 4, label %7
    i32 5, label %8
    i32 0, label %9
  ]

4:                                                ; preds = %1
  tail call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 1) #30
  br label %14

5:                                                ; preds = %1
  tail call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 3) #30
  br label %14

6:                                                ; preds = %1
  tail call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 3) #30
  br label %14

7:                                                ; preds = %1
  tail call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 4) #30
  br label %14

8:                                                ; preds = %1
  tail call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 5) #30
  br label %14

9:                                                ; preds = %1
  tail call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 0) #30
  br label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 7, ptr %12, align 8, !tbaa !16
  %13 = load ptr, ptr %11, align 8, !tbaa !20
  tail call void %13(ptr noundef nonnull %0) #28
  br label %14

14:                                               ; preds = %10, %9, %8, %7, %6, %5, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_set_colorspace(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !24
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 18, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %4, ptr %9, align 4, !tbaa !19
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  tail call void %11(ptr noundef nonnull %0) #28
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  store i32 %1, ptr %13, align 8, !tbaa !76
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 31
  store i32 0, ptr %14, align 8, !tbaa !77
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 35
  store i32 0, ptr %15, align 4, !tbaa !78
  switch i32 %1, label %105 [
    i32 1, label %16
    i32 2, label %22
    i32 3, label %34
    i32 4, label %46
    i32 5, label %61
    i32 0, label %76
  ]

16:                                               ; preds = %12
  store i32 1, ptr %14, align 8, !tbaa !77
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 1, ptr %17, align 4, !tbaa !79
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  store i32 1, ptr %19, align 8, !tbaa !80
  %20 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 0, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %20, align 8, !tbaa !61
  %21 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 0, i32 6
  store i32 0, ptr %21, align 8, !tbaa !82
  br label %109

22:                                               ; preds = %12
  store i32 1, ptr %15, align 4, !tbaa !78
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 3, ptr %23, align 4, !tbaa !79
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  store i32 82, ptr %25, align 8, !tbaa !80
  %26 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 0, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %26, align 8, !tbaa !61
  %27 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 0, i32 6
  store i32 0, ptr %27, align 8, !tbaa !82
  %28 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 1
  store i32 71, ptr %28, align 8, !tbaa !80
  %29 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 1, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %29, align 8, !tbaa !61
  %30 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 1, i32 6
  store i32 0, ptr %30, align 8, !tbaa !82
  %31 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 2
  store i32 66, ptr %31, align 8, !tbaa !80
  %32 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 2, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %32, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 2, i32 6
  store i32 0, ptr %33, align 8, !tbaa !82
  br label %109

34:                                               ; preds = %12
  store i32 1, ptr %14, align 8, !tbaa !77
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 3, ptr %35, align 4, !tbaa !79
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !67
  store i32 1, ptr %37, align 8, !tbaa !80
  %38 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 0, i32 2
  store <4 x i32> <i32 2, i32 2, i32 0, i32 0>, ptr %38, align 8, !tbaa !61
  %39 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 0, i32 6
  store i32 0, ptr %39, align 8, !tbaa !82
  %40 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 1
  store i32 2, ptr %40, align 8, !tbaa !80
  %41 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 1, i32 2
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %41, align 8, !tbaa !61
  %42 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 1, i32 6
  store i32 1, ptr %42, align 8, !tbaa !82
  %43 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 2
  store i32 3, ptr %43, align 8, !tbaa !80
  %44 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 2, i32 2
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %44, align 8, !tbaa !61
  %45 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 2, i32 6
  store i32 1, ptr %45, align 8, !tbaa !82
  br label %109

46:                                               ; preds = %12
  store i32 1, ptr %15, align 4, !tbaa !78
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 4, ptr %47, align 4, !tbaa !79
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %49 = load ptr, ptr %48, align 8, !tbaa !67
  store i32 67, ptr %49, align 8, !tbaa !80
  %50 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 0, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %50, align 8, !tbaa !61
  %51 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 0, i32 6
  store i32 0, ptr %51, align 8, !tbaa !82
  %52 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 1
  store i32 77, ptr %52, align 8, !tbaa !80
  %53 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 1, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %53, align 8, !tbaa !61
  %54 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 1, i32 6
  store i32 0, ptr %54, align 8, !tbaa !82
  %55 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 2
  store i32 89, ptr %55, align 8, !tbaa !80
  %56 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 2, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %56, align 8, !tbaa !61
  %57 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 2, i32 6
  store i32 0, ptr %57, align 8, !tbaa !82
  %58 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 3
  store i32 75, ptr %58, align 8, !tbaa !80
  %59 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 3, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %59, align 8, !tbaa !61
  %60 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 3, i32 6
  store i32 0, ptr %60, align 8, !tbaa !82
  br label %109

61:                                               ; preds = %12
  store i32 1, ptr %15, align 4, !tbaa !78
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 4, ptr %62, align 4, !tbaa !79
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %64 = load ptr, ptr %63, align 8, !tbaa !67
  store i32 1, ptr %64, align 8, !tbaa !80
  %65 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 0, i32 2
  store <4 x i32> <i32 2, i32 2, i32 0, i32 0>, ptr %65, align 8, !tbaa !61
  %66 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 0, i32 6
  store i32 0, ptr %66, align 8, !tbaa !82
  %67 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 1
  store i32 2, ptr %67, align 8, !tbaa !80
  %68 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 1, i32 2
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %68, align 8, !tbaa !61
  %69 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 1, i32 6
  store i32 1, ptr %69, align 8, !tbaa !82
  %70 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 2
  store i32 3, ptr %70, align 8, !tbaa !80
  %71 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 2, i32 2
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %71, align 8, !tbaa !61
  %72 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 2, i32 6
  store i32 1, ptr %72, align 8, !tbaa !82
  %73 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 3
  store i32 4, ptr %73, align 8, !tbaa !80
  %74 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 3, i32 2
  store <4 x i32> <i32 2, i32 2, i32 0, i32 0>, ptr %74, align 8, !tbaa !61
  %75 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 3, i32 6
  store i32 0, ptr %75, align 8, !tbaa !82
  br label %109

76:                                               ; preds = %12
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %78 = load i32, ptr %77, align 8, !tbaa !83
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 %78, ptr %79, align 4, !tbaa !79
  %80 = add i32 %78, -11
  %81 = icmp ult i32 %80, -10
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load ptr, ptr %0, align 8, !tbaa !15
  %84 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i64 0, i32 5
  store i32 24, ptr %84, align 8, !tbaa !16
  %85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i64 0, i32 6
  store i32 %78, ptr %85, align 4, !tbaa !19
  %86 = load ptr, ptr %0, align 8, !tbaa !15
  %87 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %86, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %87, align 4, !tbaa !19
  %88 = load ptr, ptr %0, align 8, !tbaa !15
  %89 = load ptr, ptr %88, align 8, !tbaa !20
  tail call void %89(ptr noundef nonnull %0) #28
  %90 = load i32, ptr %79, align 4, !tbaa !79
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %82, %76
  %93 = phi i32 [ %90, %82 ], [ %78, %76 ]
  %94 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %95 = load ptr, ptr %94, align 8, !tbaa !67
  %96 = zext i32 %93 to i64
  br label %97

97:                                               ; preds = %97, %92
  %98 = phi i64 [ 0, %92 ], [ %103, %97 ]
  %99 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %95, i64 %98
  %100 = trunc i64 %98 to i32
  store i32 %100, ptr %99, align 8, !tbaa !80
  %101 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %95, i64 %98, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %101, align 8, !tbaa !61
  %102 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %95, i64 %98, i32 6
  store i32 0, ptr %102, align 8, !tbaa !82
  %103 = add nuw nsw i64 %98, 1
  %104 = icmp eq i64 %103, %96
  br i1 %104, label %109, label %97, !llvm.loop !84

105:                                              ; preds = %12
  %106 = load ptr, ptr %0, align 8, !tbaa !15
  %107 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %106, i64 0, i32 5
  store i32 8, ptr %107, align 8, !tbaa !16
  %108 = load ptr, ptr %106, align 8, !tbaa !20
  tail call void %108(ptr noundef nonnull %0) #28
  br label %109

109:                                              ; preds = %105, %97, %82, %61, %46, %34, %22, %16
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_simple_progression(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 4, !tbaa !79
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !24
  %6 = icmp eq i32 %5, 100
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 18, ptr %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 %5, ptr %10, align 4, !tbaa !19
  %11 = load ptr, ptr %0, align 8, !tbaa !15
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  tail call void %12(ptr noundef nonnull %0) #28
  br label %13

13:                                               ; preds = %7, %1
  %14 = icmp eq i32 %3, 3
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !76
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %26, label %23

19:                                               ; preds = %13
  %20 = icmp sgt i32 %3, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = mul nsw i32 %3, 6
  br label %26

23:                                               ; preds = %19, %15
  %24 = shl nsw i32 %3, 2
  %25 = or i32 %24, 2
  br label %26

26:                                               ; preds = %23, %21, %15
  %27 = phi i32 [ %22, %21 ], [ %25, %23 ], [ 10, %15 ]
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  %31 = sext i32 %27 to i64
  %32 = mul nsw i64 %31, 36
  %33 = tail call ptr %30(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %32) #28
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  store ptr %33, ptr %34, align 8, !tbaa !85
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  store i32 %27, ptr %35, align 8, !tbaa !71
  br i1 %14, label %36, label %84

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  %38 = load i32, ptr %37, align 8, !tbaa !76
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call fastcc ptr @fill_dc_scans(ptr noundef %33, i32 noundef %3, i32 noundef 0, i32 noundef 1) #30
  br label %87

42:                                               ; preds = %36
  store i32 3, ptr %33, align 4, !tbaa !86
  br label %43

43:                                               ; preds = %43, %42
  %44 = phi i64 [ 0, %42 ], [ %47, %43 ]
  %45 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 0, i32 1, i64 %44
  %46 = trunc i64 %44 to i32
  store i32 %46, ptr %45, align 4, !tbaa !61
  %47 = add nuw nsw i64 %44, 1
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %49, label %43, !llvm.loop !88

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 0, i32 2
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %50, align 4, !tbaa !61
  %51 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 1
  store i32 1, ptr %51, align 4, !tbaa !86
  %52 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 1, i32 1
  store i32 0, ptr %52, align 4, !tbaa !61
  %53 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 1, i32 2
  store <4 x i32> <i32 1, i32 5, i32 0, i32 2>, ptr %53, align 4, !tbaa !61
  %54 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 2
  store i32 1, ptr %54, align 4, !tbaa !86
  %55 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 2, i32 1
  store i32 2, ptr %55, align 4, !tbaa !61
  %56 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 2, i32 2
  store <4 x i32> <i32 1, i32 63, i32 0, i32 1>, ptr %56, align 4, !tbaa !61
  %57 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 3
  store i32 1, ptr %57, align 4, !tbaa !86
  %58 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 3, i32 1
  store i32 1, ptr %58, align 4, !tbaa !61
  %59 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 3, i32 2
  store <4 x i32> <i32 1, i32 63, i32 0, i32 1>, ptr %59, align 4, !tbaa !61
  %60 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 4
  store i32 1, ptr %60, align 4, !tbaa !86
  %61 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 4, i32 1
  store i32 0, ptr %61, align 4, !tbaa !61
  %62 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 4, i32 2
  store <4 x i32> <i32 6, i32 63, i32 0, i32 2>, ptr %62, align 4, !tbaa !61
  %63 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 5
  store i32 1, ptr %63, align 4, !tbaa !86
  %64 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 5, i32 1
  store i32 0, ptr %64, align 4, !tbaa !61
  %65 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 5, i32 2
  store <4 x i32> <i32 1, i32 63, i32 2, i32 1>, ptr %65, align 4, !tbaa !61
  %66 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 6
  store i32 3, ptr %66, align 4, !tbaa !86
  br label %67

67:                                               ; preds = %67, %49
  %68 = phi i64 [ 0, %49 ], [ %71, %67 ]
  %69 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 6, i32 1, i64 %68
  %70 = trunc i64 %68 to i32
  store i32 %70, ptr %69, align 4, !tbaa !61
  %71 = add nuw nsw i64 %68, 1
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %73, label %67, !llvm.loop !88

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 6, i32 2
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %74, align 4, !tbaa !61
  %75 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 7
  store i32 1, ptr %75, align 4, !tbaa !86
  %76 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 7, i32 1
  store i32 2, ptr %76, align 4, !tbaa !61
  %77 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 7, i32 2
  store <4 x i32> <i32 1, i32 63, i32 1, i32 0>, ptr %77, align 4, !tbaa !61
  %78 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 8
  store i32 1, ptr %78, align 4, !tbaa !86
  %79 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 8, i32 1
  store i32 1, ptr %79, align 4, !tbaa !61
  %80 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 8, i32 2
  store <4 x i32> <i32 1, i32 63, i32 1, i32 0>, ptr %80, align 4, !tbaa !61
  %81 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 9
  store i32 1, ptr %81, align 4, !tbaa !86
  %82 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 9, i32 1
  store i32 0, ptr %82, align 4, !tbaa !61
  %83 = getelementptr inbounds %struct.jpeg_scan_info, ptr %33, i64 9, i32 2
  store <4 x i32> <i32 1, i32 63, i32 1, i32 0>, ptr %83, align 4, !tbaa !61
  br label %125

84:                                               ; preds = %26
  %85 = tail call fastcc ptr @fill_dc_scans(ptr noundef %33, i32 noundef %3, i32 noundef 0, i32 noundef 1) #30
  %86 = icmp sgt i32 %3, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %84, %40
  %88 = phi ptr [ %85, %84 ], [ %41, %40 ]
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i32 [ %95, %89 ], [ 0, %87 ]
  %91 = phi ptr [ %94, %89 ], [ %88, %87 ]
  store i32 1, ptr %91, align 4, !tbaa !86
  %92 = getelementptr inbounds %struct.jpeg_scan_info, ptr %91, i64 0, i32 1
  store i32 %90, ptr %92, align 4, !tbaa !61
  %93 = getelementptr inbounds %struct.jpeg_scan_info, ptr %91, i64 0, i32 2
  store <4 x i32> <i32 1, i32 5, i32 0, i32 2>, ptr %93, align 4, !tbaa !61
  %94 = getelementptr inbounds %struct.jpeg_scan_info, ptr %91, i64 1
  %95 = add nuw nsw i32 %90, 1
  %96 = icmp eq i32 %95, %3
  br i1 %96, label %97, label %89, !llvm.loop !89

97:                                               ; preds = %97, %89
  %98 = phi i32 [ %103, %97 ], [ 0, %89 ]
  %99 = phi ptr [ %102, %97 ], [ %94, %89 ]
  store i32 1, ptr %99, align 4, !tbaa !86
  %100 = getelementptr inbounds %struct.jpeg_scan_info, ptr %99, i64 0, i32 1
  store i32 %98, ptr %100, align 4, !tbaa !61
  %101 = getelementptr inbounds %struct.jpeg_scan_info, ptr %99, i64 0, i32 2
  store <4 x i32> <i32 6, i32 63, i32 0, i32 2>, ptr %101, align 4, !tbaa !61
  %102 = getelementptr inbounds %struct.jpeg_scan_info, ptr %99, i64 1
  %103 = add nuw nsw i32 %98, 1
  %104 = icmp eq i32 %103, %3
  br i1 %104, label %105, label %97, !llvm.loop !89

105:                                              ; preds = %105, %97
  %106 = phi i32 [ %111, %105 ], [ 0, %97 ]
  %107 = phi ptr [ %110, %105 ], [ %102, %97 ]
  store i32 1, ptr %107, align 4, !tbaa !86
  %108 = getelementptr inbounds %struct.jpeg_scan_info, ptr %107, i64 0, i32 1
  store i32 %106, ptr %108, align 4, !tbaa !61
  %109 = getelementptr inbounds %struct.jpeg_scan_info, ptr %107, i64 0, i32 2
  store <4 x i32> <i32 1, i32 63, i32 2, i32 1>, ptr %109, align 4, !tbaa !61
  %110 = getelementptr inbounds %struct.jpeg_scan_info, ptr %107, i64 1
  %111 = add nuw nsw i32 %106, 1
  %112 = icmp eq i32 %111, %3
  br i1 %112, label %115, label %105, !llvm.loop !89

113:                                              ; preds = %84
  %114 = tail call fastcc ptr @fill_dc_scans(ptr noundef nonnull %85, i32 noundef %3, i32 noundef 1, i32 noundef 0) #30
  br label %125

115:                                              ; preds = %105
  %.lcssa = phi ptr [ %110, %105 ]
  %116 = tail call fastcc ptr @fill_dc_scans(ptr noundef nonnull %.lcssa, i32 noundef %3, i32 noundef 1, i32 noundef 0) #30
  br label %117

117:                                              ; preds = %117, %115
  %118 = phi i32 [ %123, %117 ], [ 0, %115 ]
  %119 = phi ptr [ %122, %117 ], [ %116, %115 ]
  store i32 1, ptr %119, align 4, !tbaa !86
  %120 = getelementptr inbounds %struct.jpeg_scan_info, ptr %119, i64 0, i32 1
  store i32 %118, ptr %120, align 4, !tbaa !61
  %121 = getelementptr inbounds %struct.jpeg_scan_info, ptr %119, i64 0, i32 2
  store <4 x i32> <i32 1, i32 63, i32 1, i32 0>, ptr %121, align 4, !tbaa !61
  %122 = getelementptr inbounds %struct.jpeg_scan_info, ptr %119, i64 1
  %123 = add nuw nsw i32 %118, 1
  %124 = icmp eq i32 %123, %3
  br i1 %124, label %125, label %117, !llvm.loop !89

125:                                              ; preds = %117, %113, %73
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc nonnull ptr @fill_dc_scans(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 {
  %5 = icmp slt i32 %1, 5
  br i1 %5, label %6, label %35

6:                                                ; preds = %4
  store i32 %1, ptr %0, align 4, !tbaa !86
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
  store i32 0, ptr %16, align 4, !tbaa !61
  br label %17

17:                                               ; preds = %15, %8
  %18 = extractelement <4 x i1> %13, i64 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 1, i64 1
  store i32 1, ptr %20, align 4, !tbaa !61
  br label %21

21:                                               ; preds = %19, %17
  %22 = extractelement <4 x i1> %13, i64 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 1, i64 2
  store i32 2, ptr %24, align 4, !tbaa !61
  br label %25

25:                                               ; preds = %23, %21
  %26 = extractelement <4 x i1> %13, i64 3
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 1, i64 3
  store i32 3, ptr %28, align 4, !tbaa !61
  br label %29

29:                                               ; preds = %27, %25, %6
  %30 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 3
  store i32 0, ptr %30, align 4, !tbaa !90
  %31 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %31, align 4, !tbaa !91
  %32 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 4
  store i32 %2, ptr %32, align 4, !tbaa !92
  %33 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 5
  store i32 %3, ptr %33, align 4, !tbaa !93
  %34 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 1
  br label %46

35:                                               ; preds = %35, %4
  %36 = phi i32 [ %44, %35 ], [ 0, %4 ]
  %37 = phi ptr [ %43, %35 ], [ %0, %4 ]
  store i32 1, ptr %37, align 4, !tbaa !86
  %38 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 0, i32 1
  store i32 %36, ptr %38, align 4, !tbaa !61
  %39 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 0, i32 2
  store i32 0, ptr %39, align 4, !tbaa !91
  %40 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 0, i32 3
  store i32 0, ptr %40, align 4, !tbaa !90
  %41 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 0, i32 4
  store i32 %2, ptr %41, align 4, !tbaa !92
  %42 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 0, i32 5
  store i32 %3, ptr %42, align 4, !tbaa !93
  %43 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 1
  %44 = add nuw nsw i32 %36, 1
  %45 = icmp eq i32 %44, %1
  br i1 %45, label %46, label %35, !llvm.loop !89

46:                                               ; preds = %35, %29
  %47 = phi ptr [ %34, %29 ], [ %43, %35 ]
  ret ptr %47
}

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_stdio_dest(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call ptr %9(ptr noundef nonnull %0, i32 noundef 0, i64 noundef 56) #28
  store ptr %10, ptr %3, align 8, !tbaa !22
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %13 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %12, i64 0, i32 2
  store ptr @init_destination, ptr %13, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %12, i64 0, i32 3
  store ptr @empty_output_buffer, ptr %14, align 8, !tbaa !96
  %15 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %12, i64 0, i32 4
  store ptr @term_destination, ptr %15, align 8, !tbaa !97
  %16 = getelementptr inbounds %struct.my_destination_mgr, ptr %12, i64 0, i32 1
  store ptr %1, ptr %16, align 8, !tbaa !98
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_destination(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call ptr %6(ptr noundef %0, i32 noundef 1, i64 noundef 4096) #28
  %8 = getelementptr inbounds %struct.my_destination_mgr, ptr %3, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !99
  store ptr %7, ptr %3, align 8, !tbaa !100
  %9 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i64 0, i32 1
  store i64 4096, ptr %9, align 8, !tbaa !101
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @empty_output_buffer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.my_destination_mgr, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.my_destination_mgr, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = tail call i64 @fwrite(ptr noundef %5, i64 noundef 1, i64 noundef 4096, ptr noundef %7) #30
  %9 = icmp eq i64 %8, 4096
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 36, ptr %12, align 8, !tbaa !16
  %13 = load ptr, ptr %11, align 8, !tbaa !20
  tail call void %13(ptr noundef nonnull %0) #28
  br label %14

14:                                               ; preds = %10, %1
  %15 = load ptr, ptr %4, align 8, !tbaa !99
  store ptr %15, ptr %3, align 8, !tbaa !100
  %16 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i64 0, i32 1
  store i64 4096, ptr %16, align 8, !tbaa !101
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal void @term_destination(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !101
  %6 = icmp eq i64 %5, 4096
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = sub i64 4096, %5
  %9 = getelementptr inbounds %struct.my_destination_mgr, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.my_destination_mgr, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = tail call i64 @fwrite(ptr noundef %10, i64 noundef 1, i64 noundef %8, ptr noundef %12) #30
  %14 = icmp eq i64 %13, %8
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %0, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 5
  store i32 36, ptr %17, align 8, !tbaa !16
  %18 = load ptr, ptr %16, align 8, !tbaa !20
  tail call void %18(ptr noundef nonnull %0) #28
  br label %19

19:                                               ; preds = %15, %7, %1
  %20 = getelementptr inbounds %struct.my_destination_mgr, ptr %3, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  %22 = tail call i32 @fflush(ptr noundef %21) #30
  %23 = load ptr, ptr %20, align 8, !tbaa !98
  %24 = tail call i32 @ferror(ptr noundef %23) #28
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr %0, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 5
  store i32 36, ptr %28, align 8, !tbaa !16
  %29 = load ptr, ptr %27, align 8, !tbaa !20
  tail call void %29(ptr noundef nonnull %0) #28
  br label %30

30:                                               ; preds = %26, %19
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal void @jinit_compress_master(ptr noundef %0) #0 {
  tail call void @jinit_c_master_control(ptr noundef %0, i32 noundef 0) #28
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 23
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @jinit_color_converter(ptr noundef nonnull %0) #28
  tail call void @jinit_downsampler(ptr noundef nonnull %0) #28
  tail call void @jinit_c_prep_controller(ptr noundef nonnull %0, i32 noundef 0) #28
  br label %6

6:                                                ; preds = %5, %1
  tail call void @jinit_forward_dct(ptr noundef nonnull %0) #28
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 24
  %8 = load i32, ptr %7, align 4, !tbaa !102
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 1, ptr %12, align 8, !tbaa !16
  %13 = load ptr, ptr %11, align 8, !tbaa !20
  tail call void %13(ptr noundef nonnull %0) #28
  br label %20

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  %16 = load i32, ptr %15, align 4, !tbaa !103
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @jinit_phuff_encoder(ptr noundef nonnull %0) #28
  br label %20

19:                                               ; preds = %14
  tail call void @jinit_huff_encoder(ptr noundef nonnull %0) #28
  br label %20

20:                                               ; preds = %19, %18, %10
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  %22 = load i32, ptr %21, align 8, !tbaa !71
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %26 = load i32, ptr %25, align 8, !tbaa !104
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i32 [ 1, %20 ], [ %28, %24 ]
  tail call void @jinit_c_coef_controller(ptr noundef nonnull %0, i32 noundef %30) #28
  tail call void @jinit_c_main_controller(ptr noundef nonnull %0, i32 noundef 0) #28
  tail call void @jinit_marker_writer(ptr noundef nonnull %0) #28
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !105
  tail call void %34(ptr noundef nonnull %0) #28
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !106
  tail call void %38(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jinit_c_master_control(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [10 x i32], align 16
  %4 = alloca [10 x [64 x i32]], align 16
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr %7(ptr noundef %0, i32 noundef 1, i64 noundef 48) #28
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  store ptr %8, ptr %9, align 8, !tbaa !35
  store ptr @prepare_for_pass, ptr %8, align 8, !tbaa !107
  %10 = getelementptr inbounds %struct.jpeg_comp_master, ptr %8, i64 0, i32 1
  store ptr @pass_startup, ptr %10, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.jpeg_comp_master, ptr %8, i64 0, i32 2
  store ptr @finish_pass_master, ptr %11, align 8, !tbaa !110
  %12 = getelementptr inbounds %struct.jpeg_comp_master, ptr %8, i64 0, i32 4
  store i32 0, ptr %12, align 4, !tbaa !111
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !34
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !112
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %22 = load i32, ptr %21, align 4, !tbaa !79
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !83
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %20, %16, %2
  %29 = load ptr, ptr %0, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i64 0, i32 5
  store i32 31, ptr %30, align 8, !tbaa !16
  %31 = load ptr, ptr %29, align 8, !tbaa !20
  tail call void %31(ptr noundef nonnull %0) #28
  %32 = load i32, ptr %13, align 4, !tbaa !34
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i32 [ %32, %28 ], [ %14, %24 ]
  %35 = icmp ugt i32 %34, 65500
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !112
  %39 = icmp ugt i32 %38, 65500
  br i1 %39, label %40, label %48

40:                                               ; preds = %36, %33
  %41 = load ptr, ptr %0, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i64 0, i32 5
  store i32 40, ptr %42, align 8, !tbaa !16
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i64 0, i32 6
  store i32 65500, ptr %43, align 4, !tbaa !19
  %44 = load ptr, ptr %0, align 8, !tbaa !15
  %45 = load ptr, ptr %44, align 8, !tbaa !20
  tail call void %45(ptr noundef nonnull %0) #28
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !112
  br label %48

48:                                               ; preds = %40, %36
  %49 = phi i32 [ %47, %40 ], [ %38, %36 ]
  %50 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %53 = load i32, ptr %52, align 8, !tbaa !83
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %54, %51
  %56 = icmp ult i64 %55, 4294967296
  br i1 %56, label %61, label %57

57:                                               ; preds = %48
  %58 = load ptr, ptr %0, align 8, !tbaa !15
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 5
  store i32 69, ptr %59, align 8, !tbaa !16
  %60 = load ptr, ptr %58, align 8, !tbaa !20
  tail call void %60(ptr noundef nonnull %0) #28
  br label %61

61:                                               ; preds = %57, %48
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  %63 = load i32, ptr %62, align 8, !tbaa !70
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %0, align 8, !tbaa !15
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 5
  store i32 13, ptr %67, align 8, !tbaa !16
  %68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 6
  store i32 %63, ptr %68, align 4, !tbaa !19
  %69 = load ptr, ptr %0, align 8, !tbaa !15
  %70 = load ptr, ptr %69, align 8, !tbaa !20
  tail call void %70(ptr noundef nonnull %0) #28
  br label %71

71:                                               ; preds = %65, %61
  %72 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %73 = load i32, ptr %72, align 4, !tbaa !79
  %74 = icmp sgt i32 %73, 10
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load ptr, ptr %0, align 8, !tbaa !15
  %77 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %76, i64 0, i32 5
  store i32 24, ptr %77, align 8, !tbaa !16
  %78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %76, i64 0, i32 6
  store i32 %73, ptr %78, align 4, !tbaa !19
  %79 = load ptr, ptr %0, align 8, !tbaa !15
  %80 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %79, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %80, align 4, !tbaa !19
  %81 = load ptr, ptr %0, align 8, !tbaa !15
  %82 = load ptr, ptr %81, align 8, !tbaa !20
  tail call void %82(ptr noundef nonnull %0) #28
  %83 = load i32, ptr %72, align 4, !tbaa !79
  br label %84

84:                                               ; preds = %75, %71
  %85 = phi i32 [ %83, %75 ], [ %73, %71 ]
  %86 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  store i32 1, ptr %86, align 8, !tbaa !113
  %87 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  store i32 1, ptr %87, align 4, !tbaa !114
  %88 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %89 = icmp sgt i32 %85, 0
  br i1 %89, label %90, label %188

90:                                               ; preds = %84
  %91 = load ptr, ptr %88, align 8, !tbaa !67
  br label %92

92:                                               ; preds = %117, %90
  %93 = phi i32 [ %118, %117 ], [ %85, %90 ]
  %94 = phi i32 [ %124, %117 ], [ 1, %90 ]
  %95 = phi i32 [ %123, %117 ], [ 1, %90 ]
  %96 = phi i32 [ %125, %117 ], [ 0, %90 ]
  %97 = phi ptr [ %126, %117 ], [ %91, %90 ]
  %98 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !115
  %100 = add i32 %99, -5
  %101 = icmp ult i32 %100, -4
  br i1 %101, label %107, label %102

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %97, i64 0, i32 3
  %104 = load i32, ptr %103, align 4, !tbaa !116
  %105 = add i32 %104, -5
  %106 = icmp ult i32 %105, -4
  br i1 %106, label %107, label %117

107:                                              ; preds = %102, %92
  %108 = load ptr, ptr %0, align 8, !tbaa !15
  %109 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %108, i64 0, i32 5
  store i32 16, ptr %109, align 8, !tbaa !16
  %110 = load ptr, ptr %108, align 8, !tbaa !20
  tail call void %110(ptr noundef nonnull %0) #28
  %111 = load i32, ptr %86, align 8, !tbaa !113
  %112 = load i32, ptr %98, align 8, !tbaa !115
  %113 = load i32, ptr %87, align 4, !tbaa !114
  %114 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %97, i64 0, i32 3
  %115 = load i32, ptr %114, align 4, !tbaa !116
  %116 = load i32, ptr %72, align 4, !tbaa !79
  br label %117

117:                                              ; preds = %107, %102
  %118 = phi i32 [ %93, %102 ], [ %116, %107 ]
  %119 = phi i32 [ %104, %102 ], [ %115, %107 ]
  %120 = phi i32 [ %94, %102 ], [ %113, %107 ]
  %121 = phi i32 [ %99, %102 ], [ %112, %107 ]
  %122 = phi i32 [ %95, %102 ], [ %111, %107 ]
  %123 = tail call i32 @llvm.smax.i32(i32 %122, i32 %121)
  store i32 %123, ptr %86, align 8, !tbaa !113
  %124 = tail call i32 @llvm.smax.i32(i32 %120, i32 %119)
  store i32 %124, ptr %87, align 4, !tbaa !114
  %125 = add nuw nsw i32 %96, 1
  %126 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %97, i64 1
  %127 = icmp slt i32 %125, %118
  br i1 %127, label %92, label %128, !llvm.loop !117

128:                                              ; preds = %117
  %.lcssa1 = phi i32 [ %118, %117 ]
  %.lcssa = phi i32 [ %124, %117 ]
  %129 = icmp sgt i32 %.lcssa1, 0
  br i1 %129, label %130, label %188

130:                                              ; preds = %128
  %131 = load ptr, ptr %88, align 8, !tbaa !67
  br label %132

132:                                              ; preds = %132, %130
  %133 = phi i32 [ %182, %132 ], [ 0, %130 ]
  %134 = phi ptr [ %183, %132 ], [ %131, %130 ]
  %135 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %134, i64 0, i32 1
  store i32 %133, ptr %135, align 4, !tbaa !118
  %136 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %134, i64 0, i32 9
  store i32 8, ptr %136, align 4, !tbaa !119
  %137 = load i32, ptr %50, align 8, !tbaa !112
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %134, i64 0, i32 2
  %140 = load i32, ptr %139, align 8, !tbaa !115
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %141, %138
  %143 = load i32, ptr %86, align 8, !tbaa !113
  %144 = shl nsw i32 %143, 3
  %145 = sext i32 %144 to i64
  %146 = tail call i64 @jdiv_round_up(i64 noundef %142, i64 noundef %145) #28
  %147 = trunc i64 %146 to i32
  %148 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %134, i64 0, i32 7
  store i32 %147, ptr %148, align 4, !tbaa !120
  %149 = load i32, ptr %13, align 4, !tbaa !34
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %134, i64 0, i32 3
  %152 = load i32, ptr %151, align 4, !tbaa !116
  %153 = sext i32 %152 to i64
  %154 = mul nsw i64 %153, %150
  %155 = load i32, ptr %87, align 4, !tbaa !114
  %156 = shl nsw i32 %155, 3
  %157 = sext i32 %156 to i64
  %158 = tail call i64 @jdiv_round_up(i64 noundef %154, i64 noundef %157) #28
  %159 = trunc i64 %158 to i32
  %160 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %134, i64 0, i32 8
  store i32 %159, ptr %160, align 8, !tbaa !121
  %161 = load i32, ptr %50, align 8, !tbaa !112
  %162 = zext i32 %161 to i64
  %163 = load i32, ptr %139, align 8, !tbaa !115
  %164 = sext i32 %163 to i64
  %165 = mul nsw i64 %164, %162
  %166 = load i32, ptr %86, align 8, !tbaa !113
  %167 = sext i32 %166 to i64
  %168 = tail call i64 @jdiv_round_up(i64 noundef %165, i64 noundef %167) #28
  %169 = trunc i64 %168 to i32
  %170 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %134, i64 0, i32 10
  store i32 %169, ptr %170, align 8, !tbaa !122
  %171 = load i32, ptr %13, align 4, !tbaa !34
  %172 = zext i32 %171 to i64
  %173 = load i32, ptr %151, align 4, !tbaa !116
  %174 = sext i32 %173 to i64
  %175 = mul nsw i64 %174, %172
  %176 = load i32, ptr %87, align 4, !tbaa !114
  %177 = sext i32 %176 to i64
  %178 = tail call i64 @jdiv_round_up(i64 noundef %175, i64 noundef %177) #28
  %179 = trunc i64 %178 to i32
  %180 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %134, i64 0, i32 11
  store i32 %179, ptr %180, align 4, !tbaa !123
  %181 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %134, i64 0, i32 12
  store i32 1, ptr %181, align 8, !tbaa !124
  %182 = add nuw nsw i32 %133, 1
  %183 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %134, i64 1
  %184 = load i32, ptr %72, align 4, !tbaa !79
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %132, label %186, !llvm.loop !125

186:                                              ; preds = %132
  %187 = load i32, ptr %87, align 4, !tbaa !114
  br label %188

188:                                              ; preds = %186, %128, %84
  %189 = phi i32 [ %187, %186 ], [ %.lcssa, %128 ], [ 1, %84 ]
  %190 = load i32, ptr %13, align 4, !tbaa !34
  %191 = zext i32 %190 to i64
  %192 = shl nsw i32 %189, 3
  %193 = sext i32 %192 to i64
  %194 = tail call i64 @jdiv_round_up(i64 noundef %191, i64 noundef %193) #28
  %195 = trunc i64 %194 to i32
  %196 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  store i32 %195, ptr %196, align 8, !tbaa !39
  %197 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  %198 = load ptr, ptr %197, align 8, !tbaa !85
  %199 = icmp eq ptr %198, null
  %200 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  br i1 %199, label %461, label %201

201:                                              ; preds = %188
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 2560, ptr nonnull %4) #29
  %202 = load i32, ptr %200, align 8, !tbaa !71
  %203 = icmp slt i32 %202, 1
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load ptr, ptr %0, align 8, !tbaa !15
  %206 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %205, i64 0, i32 5
  store i32 17, ptr %206, align 8, !tbaa !16
  %207 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %205, i64 0, i32 6
  store i32 0, ptr %207, align 4, !tbaa !19
  %208 = load ptr, ptr %0, align 8, !tbaa !15
  %209 = load ptr, ptr %208, align 8, !tbaa !20
  tail call void %209(ptr noundef nonnull %0) #28
  %210 = load ptr, ptr %197, align 8, !tbaa !85
  br label %211

211:                                              ; preds = %204, %201
  %212 = phi ptr [ %210, %204 ], [ %198, %201 ]
  %213 = getelementptr inbounds %struct.jpeg_scan_info, ptr %212, i64 0, i32 2
  %214 = load i32, ptr %213, align 4, !tbaa !91
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.jpeg_scan_info, ptr %212, i64 0, i32 3
  %218 = load i32, ptr %217, align 4, !tbaa !90
  %219 = icmp eq i32 %218, 63
  br i1 %219, label %227, label %220

220:                                              ; preds = %216, %211
  %221 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  store i32 1, ptr %221, align 4, !tbaa !103
  %222 = load i32, ptr %72, align 4, !tbaa !79
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %220
  %225 = zext i32 %222 to i64
  %226 = shl nuw nsw i64 %225, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %4, i8 -1, i64 %226, i1 false), !tbaa !61
  br label %234

227:                                              ; preds = %216
  %228 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  store i32 0, ptr %228, align 4, !tbaa !103
  %229 = load i32, ptr %72, align 4, !tbaa !79
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = zext i32 %229 to i64
  %233 = shl nuw nsw i64 %232, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 0, i64 %233, i1 false), !tbaa !61
  br label %234

234:                                              ; preds = %231, %227, %224, %220
  %235 = phi i32 [ %229, %231 ], [ %222, %220 ], [ %229, %227 ], [ %222, %224 ]
  %236 = phi i32 [ 0, %231 ], [ 1, %220 ], [ 0, %227 ], [ 1, %224 ]
  %237 = load i32, ptr %200, align 8, !tbaa !71
  %238 = icmp slt i32 %237, 1
  br i1 %238, label %422, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  br label %241

241:                                              ; preds = %414, %239
  %242 = phi ptr [ %212, %239 ], [ %415, %414 ]
  %243 = phi i32 [ 1, %239 ], [ %416, %414 ]
  %244 = load i32, ptr %242, align 4, !tbaa !86
  %245 = add i32 %244, -5
  %246 = icmp ult i32 %245, -4
  br i1 %246, label %247, label %256

247:                                              ; preds = %241
  %248 = load ptr, ptr %0, align 8, !tbaa !15
  %249 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %248, i64 0, i32 5
  store i32 24, ptr %249, align 8, !tbaa !16
  %250 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %248, i64 0, i32 6
  store i32 %244, ptr %250, align 4, !tbaa !19
  %251 = load ptr, ptr %0, align 8, !tbaa !15
  %252 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %251, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %252, align 4, !tbaa !19
  %253 = load ptr, ptr %0, align 8, !tbaa !15
  %254 = load ptr, ptr %253, align 8, !tbaa !20
  tail call void %254(ptr noundef nonnull %0) #28
  %255 = icmp sgt i32 %244, 0
  br i1 %255, label %256, label %289

256:                                              ; preds = %247, %241
  %257 = zext i32 %244 to i64
  br label %258

258:                                              ; preds = %286, %256
  %259 = phi i64 [ 0, %256 ], [ %287, %286 ]
  %260 = getelementptr inbounds %struct.jpeg_scan_info, ptr %242, i64 0, i32 1, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !61
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %258
  %264 = load i32, ptr %72, align 4, !tbaa !79
  %265 = icmp slt i32 %261, %264
  br i1 %265, label %272, label %266

266:                                              ; preds = %263, %258
  %267 = load ptr, ptr %0, align 8, !tbaa !15
  %268 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %267, i64 0, i32 5
  store i32 17, ptr %268, align 8, !tbaa !16
  %269 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %267, i64 0, i32 6
  store i32 %243, ptr %269, align 4, !tbaa !19
  %270 = load ptr, ptr %0, align 8, !tbaa !15
  %271 = load ptr, ptr %270, align 8, !tbaa !20
  tail call void %271(ptr noundef nonnull %0) #28
  br label %272

272:                                              ; preds = %266, %263
  %273 = icmp eq i64 %259, 0
  br i1 %273, label %286, label %274

274:                                              ; preds = %272
  %275 = add nuw i64 %259, 4294967295
  %276 = and i64 %275, 4294967295
  %277 = getelementptr inbounds %struct.jpeg_scan_info, ptr %242, i64 0, i32 1, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !61
  %279 = icmp sgt i32 %261, %278
  br i1 %279, label %286, label %280

280:                                              ; preds = %274
  %281 = load ptr, ptr %0, align 8, !tbaa !15
  %282 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %281, i64 0, i32 5
  store i32 17, ptr %282, align 8, !tbaa !16
  %283 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %281, i64 0, i32 6
  store i32 %243, ptr %283, align 4, !tbaa !19
  %284 = load ptr, ptr %0, align 8, !tbaa !15
  %285 = load ptr, ptr %284, align 8, !tbaa !20
  tail call void %285(ptr noundef nonnull %0) #28
  br label %286

286:                                              ; preds = %280, %274, %272
  %287 = add nuw nsw i64 %259, 1
  %288 = icmp eq i64 %287, %257
  br i1 %288, label %289, label %258, !llvm.loop !126

289:                                              ; preds = %286, %247
  %290 = phi i1 [ false, %247 ], [ true, %286 ]
  %291 = getelementptr inbounds %struct.jpeg_scan_info, ptr %242, i64 0, i32 2
  %292 = load i32, ptr %291, align 4, !tbaa !91
  %293 = getelementptr inbounds %struct.jpeg_scan_info, ptr %242, i64 0, i32 3
  %294 = load i32, ptr %293, align 4, !tbaa !90
  %295 = getelementptr inbounds %struct.jpeg_scan_info, ptr %242, i64 0, i32 4
  %296 = load i32, ptr %295, align 4, !tbaa !92
  %297 = getelementptr inbounds %struct.jpeg_scan_info, ptr %242, i64 0, i32 5
  %298 = load i32, ptr %297, align 4, !tbaa !93
  %299 = load i32, ptr %240, align 4, !tbaa !103
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %380, label %301

301:                                              ; preds = %289
  %302 = icmp ugt i32 %292, 63
  br i1 %302, label %315, label %303

303:                                              ; preds = %301
  %304 = icmp slt i32 %294, %292
  %305 = icmp sgt i32 %294, 63
  %306 = or i1 %304, %305
  %307 = icmp slt i32 %296, 0
  %308 = select i1 %306, i1 true, i1 %307
  %309 = icmp sgt i32 %296, 13
  %310 = select i1 %308, i1 true, i1 %309
  %311 = icmp slt i32 %298, 0
  %312 = select i1 %310, i1 true, i1 %311
  %313 = icmp sgt i32 %298, 13
  %314 = select i1 %312, i1 true, i1 %313
  br i1 %314, label %315, label %321

315:                                              ; preds = %303, %301
  %316 = load ptr, ptr %0, align 8, !tbaa !15
  %317 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %316, i64 0, i32 5
  store i32 15, ptr %317, align 8, !tbaa !16
  %318 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %316, i64 0, i32 6
  store i32 %243, ptr %318, align 4, !tbaa !19
  %319 = load ptr, ptr %0, align 8, !tbaa !15
  %320 = load ptr, ptr %319, align 8, !tbaa !20
  tail call void %320(ptr noundef nonnull %0) #28
  br label %321

321:                                              ; preds = %315, %303
  %322 = icmp eq i32 %292, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %321
  %324 = icmp eq i32 %294, 0
  br i1 %324, label %333, label %327

325:                                              ; preds = %321
  %326 = icmp eq i32 %244, 1
  br i1 %326, label %333, label %327

327:                                              ; preds = %325, %323
  %328 = load ptr, ptr %0, align 8, !tbaa !15
  %329 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %328, i64 0, i32 5
  store i32 15, ptr %329, align 8, !tbaa !16
  %330 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %328, i64 0, i32 6
  store i32 %243, ptr %330, align 4, !tbaa !19
  %331 = load ptr, ptr %0, align 8, !tbaa !15
  %332 = load ptr, ptr %331, align 8, !tbaa !20
  tail call void %332(ptr noundef nonnull %0) #28
  br label %333

333:                                              ; preds = %327, %325, %323
  br i1 %290, label %334, label %414

334:                                              ; preds = %333
  %335 = icmp sgt i32 %292, %294
  %336 = add nsw i32 %296, -1
  %337 = icmp eq i32 %298, %336
  %338 = icmp eq i32 %296, 0
  %339 = sext i32 %292 to i64
  %340 = add i32 %294, 1
  %341 = zext i32 %244 to i64
  br label %342

342:                                              ; preds = %377, %334
  %343 = phi i64 [ 0, %334 ], [ %378, %377 ]
  %344 = getelementptr inbounds %struct.jpeg_scan_info, ptr %242, i64 0, i32 1, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !61
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [10 x [64 x i32]], ptr %4, i64 0, i64 %346
  br i1 %322, label %357, label %348

348:                                              ; preds = %342
  %349 = load i32, ptr %347, align 16, !tbaa !61
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %348
  %352 = load ptr, ptr %0, align 8, !tbaa !15
  %353 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %352, i64 0, i32 5
  store i32 15, ptr %353, align 8, !tbaa !16
  %354 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %352, i64 0, i32 6
  store i32 %243, ptr %354, align 4, !tbaa !19
  %355 = load ptr, ptr %0, align 8, !tbaa !15
  %356 = load ptr, ptr %355, align 8, !tbaa !20
  tail call void %356(ptr noundef nonnull %0) #28
  br label %357

357:                                              ; preds = %351, %348, %342
  br i1 %335, label %377, label %358

358:                                              ; preds = %373, %357
  %359 = phi i64 [ %374, %373 ], [ %339, %357 ]
  %360 = getelementptr inbounds i32, ptr %347, i64 %359
  %361 = load i32, ptr %360, align 4, !tbaa !61
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %358
  br i1 %338, label %373, label %367

364:                                              ; preds = %358
  %365 = icmp eq i32 %296, %361
  %366 = select i1 %365, i1 %337, i1 false
  br i1 %366, label %373, label %367

367:                                              ; preds = %364, %363
  %368 = load ptr, ptr %0, align 8, !tbaa !15
  %369 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %368, i64 0, i32 5
  store i32 15, ptr %369, align 8, !tbaa !16
  %370 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %368, i64 0, i32 6
  store i32 %243, ptr %370, align 4, !tbaa !19
  %371 = load ptr, ptr %0, align 8, !tbaa !15
  %372 = load ptr, ptr %371, align 8, !tbaa !20
  tail call void %372(ptr noundef nonnull %0) #28
  br label %373

373:                                              ; preds = %367, %364, %363
  store i32 %298, ptr %360, align 4, !tbaa !61
  %374 = add nsw i64 %359, 1
  %375 = trunc i64 %374 to i32
  %376 = icmp eq i32 %340, %375
  br i1 %376, label %377, label %358, !llvm.loop !127

377:                                              ; preds = %373, %357
  %378 = add nuw nsw i64 %343, 1
  %379 = icmp eq i64 %378, %341
  br i1 %379, label %414, label %342, !llvm.loop !128

380:                                              ; preds = %289
  %381 = icmp ne i32 %292, 0
  %382 = icmp ne i32 %294, 63
  %383 = select i1 %381, i1 true, i1 %382
  %384 = icmp ne i32 %296, 0
  %385 = select i1 %383, i1 true, i1 %384
  %386 = icmp ne i32 %298, 0
  %387 = select i1 %385, i1 true, i1 %386
  br i1 %387, label %388, label %394

388:                                              ; preds = %380
  %389 = load ptr, ptr %0, align 8, !tbaa !15
  %390 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %389, i64 0, i32 5
  store i32 15, ptr %390, align 8, !tbaa !16
  %391 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %389, i64 0, i32 6
  store i32 %243, ptr %391, align 4, !tbaa !19
  %392 = load ptr, ptr %0, align 8, !tbaa !15
  %393 = load ptr, ptr %392, align 8, !tbaa !20
  tail call void %393(ptr noundef nonnull %0) #28
  br label %394

394:                                              ; preds = %388, %380
  br i1 %290, label %395, label %414

395:                                              ; preds = %394
  %396 = zext i32 %244 to i64
  br label %397

397:                                              ; preds = %411, %395
  %398 = phi i64 [ 0, %395 ], [ %412, %411 ]
  %399 = getelementptr inbounds %struct.jpeg_scan_info, ptr %242, i64 0, i32 1, i64 %398
  %400 = load i32, ptr %399, align 4, !tbaa !61
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [10 x i32], ptr %3, i64 0, i64 %401
  %403 = load i32, ptr %402, align 4, !tbaa !61
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %411, label %405

405:                                              ; preds = %397
  %406 = load ptr, ptr %0, align 8, !tbaa !15
  %407 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %406, i64 0, i32 5
  store i32 17, ptr %407, align 8, !tbaa !16
  %408 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %406, i64 0, i32 6
  store i32 %243, ptr %408, align 4, !tbaa !19
  %409 = load ptr, ptr %0, align 8, !tbaa !15
  %410 = load ptr, ptr %409, align 8, !tbaa !20
  tail call void %410(ptr noundef nonnull %0) #28
  br label %411

411:                                              ; preds = %405, %397
  store i32 1, ptr %402, align 4, !tbaa !61
  %412 = add nuw nsw i64 %398, 1
  %413 = icmp eq i64 %412, %396
  br i1 %413, label %414, label %397, !llvm.loop !129

414:                                              ; preds = %411, %394, %377, %333
  %415 = getelementptr inbounds %struct.jpeg_scan_info, ptr %242, i64 1
  %416 = add nuw nsw i32 %243, 1
  %417 = load i32, ptr %200, align 8, !tbaa !71
  %418 = icmp slt i32 %243, %417
  br i1 %418, label %241, label %419, !llvm.loop !130

419:                                              ; preds = %414
  %420 = load i32, ptr %240, align 4, !tbaa !103
  %421 = load i32, ptr %72, align 4, !tbaa !79
  br label %422

422:                                              ; preds = %419, %234
  %423 = phi i32 [ %421, %419 ], [ %235, %234 ]
  %424 = phi i32 [ %420, %419 ], [ %236, %234 ]
  %425 = icmp eq i32 %424, 0
  %426 = icmp sgt i32 %423, 0
  br i1 %425, label %428, label %427

427:                                              ; preds = %422
  br i1 %426, label %429, label %463

428:                                              ; preds = %422
  br i1 %426, label %445, label %463

429:                                              ; preds = %440, %427
  %430 = phi i32 [ %441, %440 ], [ %423, %427 ]
  %431 = phi i64 [ %442, %440 ], [ 0, %427 ]
  %432 = getelementptr inbounds [10 x [64 x i32]], ptr %4, i64 0, i64 %431
  %433 = load i32, ptr %432, align 16, !tbaa !61
  %434 = icmp slt i32 %433, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %429
  %436 = load ptr, ptr %0, align 8, !tbaa !15
  %437 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %436, i64 0, i32 5
  store i32 44, ptr %437, align 8, !tbaa !16
  %438 = load ptr, ptr %436, align 8, !tbaa !20
  tail call void %438(ptr noundef nonnull %0) #28
  %439 = load i32, ptr %72, align 4, !tbaa !79
  br label %440

440:                                              ; preds = %435, %429
  %441 = phi i32 [ %430, %429 ], [ %439, %435 ]
  %442 = add nuw nsw i64 %431, 1
  %443 = sext i32 %441 to i64
  %444 = icmp slt i64 %442, %443
  br i1 %444, label %429, label %463, !llvm.loop !131

445:                                              ; preds = %456, %428
  %446 = phi i32 [ %457, %456 ], [ %423, %428 ]
  %447 = phi i64 [ %458, %456 ], [ 0, %428 ]
  %448 = getelementptr inbounds [10 x i32], ptr %3, i64 0, i64 %447
  %449 = load i32, ptr %448, align 4, !tbaa !61
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %456

451:                                              ; preds = %445
  %452 = load ptr, ptr %0, align 8, !tbaa !15
  %453 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %452, i64 0, i32 5
  store i32 44, ptr %453, align 8, !tbaa !16
  %454 = load ptr, ptr %452, align 8, !tbaa !20
  tail call void %454(ptr noundef nonnull %0) #28
  %455 = load i32, ptr %72, align 4, !tbaa !79
  br label %456

456:                                              ; preds = %451, %445
  %457 = phi i32 [ %446, %445 ], [ %455, %451 ]
  %458 = add nuw nsw i64 %447, 1
  %459 = sext i32 %457 to i64
  %460 = icmp slt i64 %458, %459
  br i1 %460, label %445, label %463, !llvm.loop !132

461:                                              ; preds = %188
  %462 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  store i32 0, ptr %462, align 4, !tbaa !103
  br label %469

463:                                              ; preds = %456, %440, %428, %427
  call void @llvm.lifetime.end.p0(i64 2560, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #29
  %464 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  %465 = load i32, ptr %464, align 4, !tbaa !103
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %471, label %467

467:                                              ; preds = %463
  %468 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  br label %469

469:                                              ; preds = %467, %461
  %470 = phi ptr [ %200, %461 ], [ %468, %467 ]
  store i32 1, ptr %470, align 8, !tbaa !61
  br label %471

471:                                              ; preds = %469, %463
  %472 = icmp eq i32 %1, 0
  br i1 %472, label %482, label %473

473:                                              ; preds = %471
  %474 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %475 = load i32, ptr %474, align 8, !tbaa !104
  %476 = icmp eq i32 %475, 0
  %477 = getelementptr inbounds %struct.my_comp_master, ptr %8, i64 0, i32 1
  %478 = getelementptr inbounds %struct.my_comp_master, ptr %8, i64 0, i32 4
  %479 = getelementptr inbounds %struct.my_comp_master, ptr %8, i64 0, i32 2
  br i1 %476, label %481, label %480

480:                                              ; preds = %473
  store i32 1, ptr %477, align 8, !tbaa !133
  store i32 0, ptr %478, align 4, !tbaa !134
  store i32 0, ptr %479, align 4, !tbaa !135
  br label %489

481:                                              ; preds = %473
  store i32 2, ptr %477, align 8, !tbaa !133
  store i32 0, ptr %478, align 4, !tbaa !134
  store i32 0, ptr %479, align 4, !tbaa !135
  br label %493

482:                                              ; preds = %471
  %483 = getelementptr inbounds %struct.my_comp_master, ptr %8, i64 0, i32 1
  store i32 0, ptr %483, align 8, !tbaa !133
  %484 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %485 = load i32, ptr %484, align 8, !tbaa !104
  %486 = icmp eq i32 %485, 0
  %487 = getelementptr inbounds %struct.my_comp_master, ptr %8, i64 0, i32 4
  store i32 0, ptr %487, align 4, !tbaa !134
  %488 = getelementptr inbounds %struct.my_comp_master, ptr %8, i64 0, i32 2
  store i32 0, ptr %488, align 4, !tbaa !135
  br i1 %486, label %493, label %489

489:                                              ; preds = %482, %480
  %490 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  %491 = load i32, ptr %490, align 8, !tbaa !71
  %492 = shl nsw i32 %491, 1
  br label %496

493:                                              ; preds = %482, %481
  %494 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  %495 = load i32, ptr %494, align 8, !tbaa !71
  br label %496

496:                                              ; preds = %493, %489
  %497 = phi i32 [ %495, %493 ], [ %492, %489 ]
  %498 = getelementptr inbounds %struct.my_comp_master, ptr %8, i64 0, i32 3
  store i32 %497, ptr %498, align 8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @prepare_for_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !133
  switch i32 %5, label %94 [
    i32 0, label %6
    i32 1, label %44
    i32 2, label %68
  ]

6:                                                ; preds = %1
  tail call fastcc void @select_scan_parameters(ptr noundef nonnull %0) #30
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %0) #30
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 23
  %8 = load i32, ptr %7, align 8, !tbaa !57
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  tail call void %13(ptr noundef nonnull %0) #28
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  %15 = load ptr, ptr %14, align 8, !tbaa !139
  %16 = load ptr, ptr %15, align 8, !tbaa !140
  tail call void %16(ptr noundef nonnull %0) #28
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %18 = load ptr, ptr %17, align 8, !tbaa !142
  %19 = load ptr, ptr %18, align 8, !tbaa !143
  tail call void %19(ptr noundef nonnull %0, i32 noundef 0) #28
  br label %20

20:                                               ; preds = %10, %6
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %22 = load ptr, ptr %21, align 8, !tbaa !145
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  tail call void %23(ptr noundef nonnull %0) #28
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %25 = load ptr, ptr %24, align 8, !tbaa !148
  %26 = load ptr, ptr %25, align 8, !tbaa !149
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %28 = load i32, ptr %27, align 8, !tbaa !104
  tail call void %26(ptr noundef nonnull %0, i32 noundef %28) #28
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = load ptr, ptr %30, align 8, !tbaa !151
  %32 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !152
  %34 = icmp sgt i32 %33, 1
  %35 = select i1 %34, i32 3, i32 0
  tail call void %31(ptr noundef nonnull %0, i32 noundef %35) #28
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 52
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  %38 = load ptr, ptr %37, align 8, !tbaa !153
  tail call void %38(ptr noundef nonnull %0, i32 noundef 0) #28
  %39 = load i32, ptr %27, align 8, !tbaa !104
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  br i1 %40, label %43, label %42

42:                                               ; preds = %20
  store i32 0, ptr %41, align 8, !tbaa !154
  br label %98

43:                                               ; preds = %20
  store i32 1, ptr %41, align 8, !tbaa !154
  br label %98

44:                                               ; preds = %1
  tail call fastcc void @select_scan_parameters(ptr noundef nonnull %0) #30
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %0) #30
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %46 = load i32, ptr %45, align 4, !tbaa !155
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  %50 = load i32, ptr %49, align 4, !tbaa !156
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 24
  %54 = load i32, ptr %53, align 4, !tbaa !102
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52, %48, %44
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %58 = load ptr, ptr %57, align 8, !tbaa !148
  %59 = load ptr, ptr %58, align 8, !tbaa !149
  tail call void %59(ptr noundef nonnull %0, i32 noundef 1) #28
  %60 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %61 = load ptr, ptr %60, align 8, !tbaa !44
  %62 = load ptr, ptr %61, align 8, !tbaa !151
  tail call void %62(ptr noundef nonnull %0, i32 noundef 2) #28
  %63 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  store i32 0, ptr %63, align 8, !tbaa !154
  br label %98

64:                                               ; preds = %52
  store i32 2, ptr %4, align 8, !tbaa !133
  %65 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !135
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %65, align 4, !tbaa !135
  br label %68

68:                                               ; preds = %64, %1
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %70 = load i32, ptr %69, align 8, !tbaa !104
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  tail call fastcc void @select_scan_parameters(ptr noundef nonnull %0) #30
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %0) #30
  br label %73

73:                                               ; preds = %72, %68
  %74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %75 = load ptr, ptr %74, align 8, !tbaa !148
  %76 = load ptr, ptr %75, align 8, !tbaa !149
  tail call void %76(ptr noundef nonnull %0, i32 noundef 0) #28
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %78 = load ptr, ptr %77, align 8, !tbaa !44
  %79 = load ptr, ptr %78, align 8, !tbaa !151
  tail call void %79(ptr noundef nonnull %0, i32 noundef 2) #28
  %80 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 4
  %81 = load i32, ptr %80, align 4, !tbaa !134
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %85 = load ptr, ptr %84, align 8, !tbaa !50
  %86 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !157
  tail call void %87(ptr noundef nonnull %0) #28
  br label %88

88:                                               ; preds = %83, %73
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %90 = load ptr, ptr %89, align 8, !tbaa !50
  %91 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !158
  tail call void %92(ptr noundef nonnull %0) #28
  %93 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  store i32 0, ptr %93, align 8, !tbaa !154
  br label %98

94:                                               ; preds = %1
  %95 = load ptr, ptr %0, align 8, !tbaa !15
  %96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i64 0, i32 5
  store i32 47, ptr %96, align 8, !tbaa !16
  %97 = load ptr, ptr %95, align 8, !tbaa !20
  tail call void %97(ptr noundef nonnull %0) #28
  br label %98

98:                                               ; preds = %94, %88, %56, %43, %42
  %99 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !135
  %101 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !152
  %103 = add nsw i32 %102, -1
  %104 = icmp eq i32 %100, %103
  %105 = zext i1 %104 to i32
  %106 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 4
  store i32 %105, ptr %106, align 4, !tbaa !111
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !21
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %98
  %111 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %108, i64 0, i32 3
  store i32 %100, ptr %111, align 8, !tbaa !159
  %112 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %108, i64 0, i32 4
  store i32 %102, ptr %112, align 4, !tbaa !160
  br label %113

113:                                              ; preds = %110, %98
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @pass_startup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  tail call void %8(ptr noundef %0) #28
  %9 = load ptr, ptr %5, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  tail call void %11(ptr noundef %0) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @finish_pass_master(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  tail call void %7(ptr noundef %0) #28
  %8 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !133
  switch i32 %9, label %28 [
    i32 0, label %10
    i32 1, label %18
    i32 2, label %19
  ]

10:                                               ; preds = %1
  store i32 2, ptr %8, align 8, !tbaa !133
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %12 = load i32, ptr %11, align 8, !tbaa !104
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !134
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !134
  br label %28

18:                                               ; preds = %1
  store i32 2, ptr %8, align 8, !tbaa !133
  br label %28

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %21 = load i32, ptr %20, align 8, !tbaa !104
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 1, ptr %8, align 8, !tbaa !133
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

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @select_scan_parameters(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.my_comp_master, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !134
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !86
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  store i32 %12, ptr %13, align 4, !tbaa !162
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = zext i32 %12 to i64
  br label %19

19:                                               ; preds = %19, %15
  %20 = phi i64 [ 0, %15 ], [ %26, %19 ]
  %21 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 1, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !61
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %17, i64 %23
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %20
  store ptr %24, ptr %25, align 8, !tbaa !25
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !163

28:                                               ; preds = %19, %5
  %29 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 2
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %31 = load <2 x i32>, ptr %29, align 4, !tbaa !61
  store <2 x i32> %31, ptr %30, align 4, !tbaa !61
  %32 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !92
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  store i32 %33, ptr %34, align 4, !tbaa !156
  %35 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !93
  br label %85

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %39 = load i32, ptr %38, align 4, !tbaa !79
  %40 = icmp sgt i32 %39, 4
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load ptr, ptr %0, align 8, !tbaa !15
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 5
  store i32 24, ptr %43, align 8, !tbaa !16
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 6
  store i32 %39, ptr %44, align 4, !tbaa !19
  %45 = load ptr, ptr %0, align 8, !tbaa !15
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %46, align 4, !tbaa !19
  %47 = load ptr, ptr %0, align 8, !tbaa !15
  %48 = load ptr, ptr %47, align 8, !tbaa !20
  tail call void %48(ptr noundef nonnull %0) #28
  %49 = load i32, ptr %38, align 4, !tbaa !79
  br label %50

50:                                               ; preds = %41, %37
  %51 = phi i32 [ %49, %41 ], [ %39, %37 ]
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  store i32 %51, ptr %52, align 4, !tbaa !162
  %53 = icmp sgt i32 %51, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !67
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
  store ptr %70, ptr %69, align 8, !tbaa !25
  br label %71

71:                                               ; preds = %68, %63
  %72 = extractelement <2 x i1> %66, i64 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = or i64 %64, 1
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %74
  %76 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %56, i64 %74
  store ptr %76, ptr %75, align 8, !tbaa !25
  br label %77

77:                                               ; preds = %73, %71
  %78 = add i64 %64, 2
  %79 = add <2 x i64> %65, <i64 2, i64 2>
  %80 = icmp eq i64 %78, %59
  br i1 %80, label %81, label %63, !llvm.loop !164

81:                                               ; preds = %77, %50
  %82 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  store i32 0, ptr %82, align 4, !tbaa !155
  %83 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  store i32 63, ptr %83, align 8, !tbaa !167
  %84 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  store i32 0, ptr %84, align 4, !tbaa !156
  br label %85

85:                                               ; preds = %81, %28
  %86 = phi i32 [ 0, %81 ], [ %36, %28 ]
  %87 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  store i32 %86, ptr %87, align 8, !tbaa !168
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @per_scan_setup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %3 = load i32, ptr %2, align 4, !tbaa !162
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !120
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  store i32 %9, ptr %10, align 8, !tbaa !169
  %11 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %7, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 44
  store i32 %12, ptr %13, align 4, !tbaa !170
  %14 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %7, i64 0, i32 13
  store <4 x i32> <i32 1, i32 1, i32 1, i32 8>, ptr %14, align 4, !tbaa !61
  %15 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %7, i64 0, i32 17
  store i32 1, ptr %15, align 4, !tbaa !171
  %16 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %7, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !116
  %18 = urem i32 %12, %17
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 %17, i32 %18
  %21 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %7, i64 0, i32 18
  store i32 %20, ptr %21, align 8, !tbaa !172
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  store i32 1, ptr %22, align 8, !tbaa !173
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46
  store i32 0, ptr %23, align 4, !tbaa !61
  br label %109

24:                                               ; preds = %1
  %25 = add i32 %3, -5
  %26 = icmp ult i32 %25, -4
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 8, !tbaa !15
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 24, ptr %29, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 6
  store i32 %3, ptr %30, align 4, !tbaa !19
  %31 = load ptr, ptr %0, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %32, align 4, !tbaa !19
  %33 = load ptr, ptr %0, align 8, !tbaa !15
  %34 = load ptr, ptr %33, align 8, !tbaa !20
  tail call void %34(ptr noundef nonnull %0) #28
  br label %35

35:                                               ; preds = %27, %24
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !112
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %40 = load i32, ptr %39, align 8, !tbaa !113
  %41 = shl nsw i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = tail call i64 @jdiv_round_up(i64 noundef %38, i64 noundef %42) #28
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  store i32 %44, ptr %45, align 8, !tbaa !169
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %47 = load i32, ptr %46, align 4, !tbaa !34
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %50 = load i32, ptr %49, align 4, !tbaa !114
  %51 = shl nsw i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = tail call i64 @jdiv_round_up(i64 noundef %48, i64 noundef %52) #28
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 44
  store i32 %54, ptr %55, align 4, !tbaa !170
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  store i32 0, ptr %56, align 8, !tbaa !173
  %57 = load i32, ptr %2, align 4, !tbaa !162
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %109

59:                                               ; preds = %104, %35
  %60 = phi i64 [ %105, %104 ], [ 0, %35 ]
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !25
  %63 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !115
  %65 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %62, i64 0, i32 13
  store i32 %64, ptr %65, align 4, !tbaa !174
  %66 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %62, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !116
  %68 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %62, i64 0, i32 14
  store i32 %67, ptr %68, align 8, !tbaa !175
  %69 = mul nsw i32 %67, %64
  %70 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %62, i64 0, i32 15
  store i32 %69, ptr %70, align 4, !tbaa !176
  %71 = shl nsw i32 %64, 3
  %72 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %62, i64 0, i32 16
  store i32 %71, ptr %72, align 8, !tbaa !177
  %73 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %62, i64 0, i32 7
  %74 = load i32, ptr %73, align 4, !tbaa !120
  %75 = urem i32 %74, %64
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i32 %64, i32 %75
  %78 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %62, i64 0, i32 17
  store i32 %77, ptr %78, align 4, !tbaa !171
  %79 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %62, i64 0, i32 8
  %80 = load i32, ptr %79, align 8, !tbaa !121
  %81 = urem i32 %80, %67
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i32 %67, i32 %81
  %84 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %62, i64 0, i32 18
  store i32 %83, ptr %84, align 8, !tbaa !172
  %85 = load i32, ptr %56, align 8, !tbaa !173
  %86 = add nsw i32 %85, %69
  %87 = icmp sgt i32 %86, 10
  br i1 %87, label %88, label %92

88:                                               ; preds = %59
  %89 = load ptr, ptr %0, align 8, !tbaa !15
  %90 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i64 0, i32 5
  store i32 11, ptr %90, align 8, !tbaa !16
  %91 = load ptr, ptr %89, align 8, !tbaa !20
  tail call void %91(ptr noundef nonnull %0) #28
  br label %92

92:                                               ; preds = %88, %59
  %93 = icmp sgt i32 %69, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %92
  %95 = trunc i64 %60 to i32
  br label %96

96:                                               ; preds = %96, %94
  %97 = phi i32 [ %98, %96 ], [ %69, %94 ]
  %98 = add nsw i32 %97, -1
  %99 = load i32, ptr %56, align 8, !tbaa !173
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %56, align 8, !tbaa !173
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %101
  store i32 %95, ptr %102, align 4, !tbaa !61
  %103 = icmp ugt i32 %97, 1
  br i1 %103, label %96, label %104, !llvm.loop !178

104:                                              ; preds = %96, %92
  %105 = add nuw nsw i64 %60, 1
  %106 = load i32, ptr %2, align 4, !tbaa !162
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %59, label %109, !llvm.loop !179

109:                                              ; preds = %104, %35, %5
  %110 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 30
  %111 = load i32, ptr %110, align 4, !tbaa !180
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = zext i32 %111 to i64
  %115 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  %116 = load i32, ptr %115, align 8, !tbaa !169
  %117 = zext i32 %116 to i64
  %118 = mul nuw nsw i64 %117, %114
  %119 = tail call i64 @llvm.umin.i64(i64 %118, i64 65535)
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  store i32 %120, ptr %121, align 8, !tbaa !181
  br label %122

122:                                              ; preds = %113, %109
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jinit_marker_writer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 48) #28
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  store ptr %5, ptr %6, align 8, !tbaa !50
  store ptr @write_any_marker, ptr %5, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %5, i64 0, i32 1
  store ptr @write_file_header, ptr %7, align 8, !tbaa !106
  %8 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %5, i64 0, i32 2
  store ptr @write_frame_header, ptr %8, align 8, !tbaa !157
  %9 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %5, i64 0, i32 3
  store ptr @write_scan_header, ptr %9, align 8, !tbaa !158
  %10 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %5, i64 0, i32 4
  store ptr @write_file_trailer, ptr %10, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %5, i64 0, i32 5
  store ptr @write_tables_only, ptr %11, align 8, !tbaa !183
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @write_any_marker(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = icmp ult i32 %3, 65534
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #30
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %1) #30
  %7 = add nuw nsw i32 %3, 2
  %8 = lshr i32 %7, 8
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %8) #30
  %9 = and i32 %7, 255
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %9) #30
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %6
  %12 = phi i32 [ %14, %11 ], [ %3, %6 ]
  %13 = phi ptr [ %17, %11 ], [ %2, %6 ]
  %14 = add i32 %12, -1
  %15 = load i8, ptr %13, align 1, !tbaa !19
  %16 = zext i8 %15 to i32
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %16) #30
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = icmp eq i32 %14, 0
  br i1 %18, label %19, label %11, !llvm.loop !184

19:                                               ; preds = %11, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @write_file_header(ptr noundef %0) #0 {
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #30
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 216) #30
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 31
  %3 = load i32, ptr %2, align 8, !tbaa !77
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 255) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 224) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 16) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 74) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 70) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 73) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 70) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 1) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 1) #30
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 32
  %7 = load i8, ptr %6, align 4, !tbaa !72
  %8 = zext i8 %7 to i32
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %8) #30
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 33
  %10 = load i16, ptr %9, align 2, !tbaa !73
  %11 = zext i16 %10 to i32
  %12 = lshr i32 %11, 8
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %12) #30
  %13 = and i32 %11, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %13) #30
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 34
  %15 = load i16, ptr %14, align 8, !tbaa !74
  %16 = zext i16 %15 to i32
  %17 = lshr i32 %16, 8
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %17) #30
  %18 = and i32 %16, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %18) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #30
  br label %19

19:                                               ; preds = %5, %1
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 35
  %21 = load i32, ptr %20, align 4, !tbaa !78
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 255) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 238) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 14) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 65) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 100) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 111) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 98) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 101) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 100) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #30
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !76
  %26 = icmp eq i32 %25, 5
  %27 = select i1 %26, i32 2, i32 0
  %28 = icmp eq i32 %25, 3
  %29 = select i1 %28, i32 1, i32 %27
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %29) #30
  br label %30

30:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @write_frame_header(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !79
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !67
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %17, %8 ], [ %7, %6 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %6 ]
  %11 = phi i32 [ %16, %8 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !185
  %14 = tail call fastcc i32 @emit_dqt(ptr noundef nonnull %0, i32 noundef %13) #30, !range !186
  %15 = add nuw nsw i32 %14, %10
  %16 = add nuw nsw i32 %11, 1
  %17 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %9, i64 1
  %18 = load i32, ptr %3, align 4, !tbaa !79
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %8, label %20, !llvm.loop !187

20:                                               ; preds = %8, %1
  %21 = phi i32 [ 0, %1 ], [ %15, %8 ]
  %22 = phi i32 [ %4, %1 ], [ %18, %8 ]
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 24
  %24 = load i32, ptr %23, align 4, !tbaa !102
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  %28 = load i32, ptr %27, align 4, !tbaa !103
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  %32 = load i32, ptr %31, align 8, !tbaa !70
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = icmp sgt i32 %22, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %34
  %37 = load ptr, ptr %2, align 8, !tbaa !67
  br label %38

38:                                               ; preds = %50, %36
  %39 = phi ptr [ %53, %50 ], [ %37, %36 ]
  %40 = phi i32 [ %51, %50 ], [ 1, %36 ]
  %41 = phi i32 [ %52, %50 ], [ 0, %36 ]
  %42 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %39, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !188
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %39, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !82
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %38
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ 0, %49 ], [ %40, %45 ]
  %52 = add nuw nsw i32 %41, 1
  %53 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %39, i64 1
  %54 = icmp eq i32 %52, %22
  br i1 %54, label %55, label %38, !llvm.loop !189

55:                                               ; preds = %50, %34
  %56 = phi i32 [ 1, %34 ], [ %51, %50 ]
  %57 = icmp ne i32 %21, 0
  %58 = icmp ne i32 %56, 0
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load ptr, ptr %0, align 8, !tbaa !15
  %62 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i64 0, i32 5
  store i32 74, ptr %62, align 8, !tbaa !16
  %63 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !58
  tail call void %64(ptr noundef nonnull %0, i32 noundef 0) #28
  %65 = load i32, ptr %23, align 4, !tbaa !102
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %77

67:                                               ; preds = %55, %30
  %68 = phi i32 [ 0, %30 ], [ %56, %55 ]
  %69 = load i32, ptr %27, align 4, !tbaa !103
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %77

71:                                               ; preds = %60
  %72 = load i32, ptr %27, align 4, !tbaa !103
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %77

74:                                               ; preds = %67
  %75 = icmp eq i32 %68, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %74, %71
  br label %77

77:                                               ; preds = %76, %74, %71, %67, %60, %26, %20
  %78 = phi i32 [ 193, %76 ], [ 201, %20 ], [ 201, %60 ], [ 194, %26 ], [ 194, %71 ], [ 194, %67 ], [ 192, %74 ]
  tail call fastcc void @emit_sof(ptr noundef nonnull %0, i32 noundef %78) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @write_scan_header(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 24
  %3 = load i32, ptr %2, align 4, !tbaa !102
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %7 = load i32, ptr %6, align 4, !tbaa !162
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
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = load i32, ptr %10, align 4, !tbaa !103
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load i32, ptr %11, align 4, !tbaa !155
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, ptr %12, align 4, !tbaa !156
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %16, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !188
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %27, i32 noundef 0) #30
  br label %36

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %16, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !82
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %30, i32 noundef 1) #30
  br label %36

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %16, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !188
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %33, i32 noundef 0) #30
  %34 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %16, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !82
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %35, i32 noundef 1) #30
  br label %36

36:                                               ; preds = %31, %28, %25, %22
  %37 = add nuw nsw i64 %14, 1
  %38 = load i32, ptr %6, align 4, !tbaa !162
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %13, label %41, !llvm.loop !190

41:                                               ; preds = %36, %5, %1
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %43 = load i32, ptr %42, align 8, !tbaa !181
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 255) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 221) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 4) #30
  %46 = load i32, ptr %42, align 8, !tbaa !181
  %47 = lshr i32 %46, 8
  %48 = and i32 %47, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %48) #30
  %49 = and i32 %46, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %49) #30
  br label %50

50:                                               ; preds = %45, %41
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 255) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 218) #30
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %52 = load i32, ptr %51, align 4, !tbaa !162
  %53 = shl nsw i32 %52, 1
  %54 = add nsw i32 %53, 6
  %55 = lshr i32 %54, 8
  %56 = and i32 %55, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %56) #30
  %57 = and i32 %54, 254
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %57) #30
  %58 = load i32, ptr %51, align 4, !tbaa !162
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %58) #30
  %59 = load i32, ptr %51, align 4, !tbaa !162
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
  %68 = load ptr, ptr %67, align 8, !tbaa !25
  %69 = load i32, ptr %68, align 8, !tbaa !80
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %69) #30
  %70 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %68, i64 0, i32 5
  %71 = load i32, ptr %70, align 4, !tbaa !188
  %72 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %68, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !82
  %74 = load i32, ptr %62, align 4, !tbaa !103
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %65
  %77 = load i32, ptr %63, align 4, !tbaa !155
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, ptr %64, align 4, !tbaa !156
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %2, align 4, !tbaa !102
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 0, i32 %71
  br label %86

86:                                               ; preds = %82, %79, %76, %65
  %87 = phi i32 [ %71, %79 ], [ %71, %65 ], [ %85, %82 ], [ 0, %76 ]
  %88 = phi i32 [ 0, %79 ], [ %73, %65 ], [ 0, %82 ], [ %73, %76 ]
  %89 = shl i32 %87, 4
  %90 = add nsw i32 %89, %88
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %90) #30
  %91 = add nuw nsw i64 %66, 1
  %92 = load i32, ptr %51, align 4, !tbaa !162
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %65, label %95, !llvm.loop !191

95:                                               ; preds = %86, %50
  %96 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %97 = load i32, ptr %96, align 4, !tbaa !155
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %97) #30
  %98 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  %99 = load i32, ptr %98, align 8, !tbaa !167
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %99) #30
  %100 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  %101 = load i32, ptr %100, align 4, !tbaa !156
  %102 = shl i32 %101, 4
  %103 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %104 = load i32, ptr %103, align 8, !tbaa !168
  %105 = add nsw i32 %102, %104
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %105) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @write_file_trailer(ptr noundef %0) #0 {
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #30
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 217) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @write_tables_only(ptr noundef %0) #0 {
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #30
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 216) #30
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi i64 [ 0, %1 ], [ %11, %10 ]
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = trunc i64 %3 to i32
  %9 = tail call fastcc i32 @emit_dqt(ptr noundef nonnull %0, i32 noundef %8) #30, !range !186
  br label %10

10:                                               ; preds = %7, %2
  %11 = add nuw nsw i64 %3, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %2, !llvm.loop !192

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 24
  %15 = load i32, ptr %14, align 4, !tbaa !102
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %30, %13
  %18 = phi i64 [ %31, %30 ], [ 0, %13 ]
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = trunc i64 %18 to i32
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %23, i32 noundef 0) #30
  br label %24

24:                                               ; preds = %22, %17
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %18
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = trunc i64 %18 to i32
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %29, i32 noundef 1) #30
  br label %30

30:                                               ; preds = %28, %24
  %31 = add nuw nsw i64 %18, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %33, label %17, !llvm.loop !193

33:                                               ; preds = %30, %13
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 255) #30
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 217) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_byte(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = trunc i32 %1 to i8
  %6 = load ptr, ptr %4, align 8, !tbaa !194
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %7, ptr %4, align 8, !tbaa !194
  store i8 %5, ptr %6, align 1, !tbaa !19
  %8 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !195
  %10 = add i64 %9, -1
  store i64 %10, ptr %8, align 8, !tbaa !195
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %4, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !196
  %15 = tail call i32 %14(ptr noundef nonnull %0) #28
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 22, ptr %19, align 8, !tbaa !16
  %20 = load ptr, ptr %18, align 8, !tbaa !20
  tail call void %20(ptr noundef nonnull %0) #28
  br label %21

21:                                               ; preds = %17, %12, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @emit_dqt(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 51, ptr %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 %1, ptr %10, align 4, !tbaa !19
  %11 = load ptr, ptr %0, align 8, !tbaa !15
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  tail call void %12(ptr noundef nonnull %0) #28
  br label %13

13:                                               ; preds = %7, %2
  br label %14

14:                                               ; preds = %14, %13
  %15 = phi i64 [ %21, %14 ], [ 0, %13 ]
  %16 = phi <4 x i32> [ %20, %14 ], [ zeroinitializer, %13 ]
  %17 = getelementptr inbounds [64 x i16], ptr %5, i64 0, i64 %15
  %18 = load <4 x i16>, ptr %17, align 2, !tbaa !65
  %19 = icmp ugt <4 x i16> %18, <i16 255, i16 255, i16 255, i16 255>
  %20 = select <4 x i1> %19, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %16
  %21 = add nuw i64 %15, 4
  %22 = icmp eq i64 %21, 64
  br i1 %22, label %23, label %14, !llvm.loop !197

23:                                               ; preds = %14
  %.lcssa = phi <4 x i32> [ %20, %14 ]
  %24 = icmp ne <4 x i32> %.lcssa, zeroinitializer
  %25 = bitcast <4 x i1> %24 to i4
  %26 = icmp ne i4 %25, 0
  %27 = getelementptr inbounds %struct.JQUANT_TBL, ptr %5, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %23
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #30
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 219) #30
  %31 = select i1 %26, i32 131, i32 67
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 0) #30
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %31) #30
  %32 = select i1 %26, i32 16, i32 0
  %33 = add nsw i32 %32, %1
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %33) #30
  br label %34

34:                                               ; preds = %44, %30
  %35 = phi i64 [ 0, %30 ], [ %46, %44 ]
  %36 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !61
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [64 x i16], ptr %5, i64 0, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !65
  %41 = zext i16 %40 to i32
  br i1 %26, label %42, label %44

42:                                               ; preds = %34
  %43 = lshr i32 %41, 8
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %43) #30
  br label %44

44:                                               ; preds = %42, %34
  %45 = and i32 %41, 255
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %45) #30
  %46 = add nuw nsw i64 %35, 1
  %47 = icmp eq i64 %46, 64
  br i1 %47, label %48, label %34, !llvm.loop !198

48:                                               ; preds = %44
  store i32 1, ptr %27, align 4, !tbaa !26
  br label %49

49:                                               ; preds = %48, %23
  %50 = zext i1 %26 to i32
  ret i32 %50
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_dht(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %5
  %7 = add nsw i32 %1, 16
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %5
  %9 = select i1 %4, i32 %1, i32 %7
  %10 = select i1 %4, ptr %8, ptr %6
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 5
  store i32 49, ptr %15, align 8, !tbaa !16
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 6
  store i32 %9, ptr %16, align 4, !tbaa !19
  %17 = load ptr, ptr %0, align 8, !tbaa !15
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  tail call void %18(ptr noundef nonnull %0) #28
  br label %19

19:                                               ; preds = %13, %3
  %20 = getelementptr inbounds %struct.JHUFF_TBL, ptr %11, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !30
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #30
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 196) #30
  br label %24

24:                                               ; preds = %24, %23
  %25 = phi i64 [ 0, %23 ], [ %32, %24 ]
  %26 = phi <4 x i32> [ zeroinitializer, %23 ], [ %31, %24 ]
  %27 = or i64 %25, 1
  %28 = getelementptr inbounds [17 x i8], ptr %11, i64 0, i64 %27
  %29 = load <4 x i8>, ptr %28, align 1, !tbaa !19
  %30 = zext <4 x i8> %29 to <4 x i32>
  %31 = add <4 x i32> %26, %30
  %32 = add nuw i64 %25, 4
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %24, !llvm.loop !199

34:                                               ; preds = %24
  %.lcssa = phi <4 x i32> [ %31, %24 ]
  %35 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %.lcssa)
  %36 = add nuw nsw i32 %35, 19
  %37 = lshr i32 %36, 8
  %38 = and i32 %37, 255
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %38) #30
  %39 = and i32 %36, 255
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %39) #30
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %9) #30
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
  %47 = load i8, ptr %46, align 1, !tbaa !19
  %48 = zext i8 %47 to i32
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %48) #30
  %49 = add nuw nsw i64 %45, 1
  %50 = icmp eq i64 %49, 17
  br i1 %50, label %40, label %44, !llvm.loop !200

51:                                               ; preds = %51, %42
  %52 = phi i64 [ 0, %42 ], [ %56, %51 ]
  %53 = getelementptr inbounds %struct.JHUFF_TBL, ptr %11, i64 0, i32 1, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !19
  %55 = zext i8 %54 to i32
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %55) #30
  %56 = add nuw nsw i64 %52, 1
  %57 = icmp eq i64 %56, %43
  br i1 %57, label %58, label %51, !llvm.loop !201

58:                                               ; preds = %51, %40
  store i32 1, ptr %20, align 4, !tbaa !30
  br label %59

59:                                               ; preds = %58, %19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_sof(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #30
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %1) #30
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !79
  %5 = mul nsw i32 %4, 3
  %6 = add nsw i32 %5, 8
  %7 = lshr i32 %6, 8
  %8 = and i32 %7, 255
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %8) #30
  %9 = and i32 %6, 255
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %9) #30
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp ugt i32 %11, 65535
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !112
  %16 = icmp ugt i32 %15, 65535
  br i1 %16, label %17, label %23

17:                                               ; preds = %13, %2
  %18 = load ptr, ptr %0, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 40, ptr %19, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 6
  store i32 65535, ptr %20, align 4, !tbaa !19
  %21 = load ptr, ptr %0, align 8, !tbaa !15
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  tail call void %22(ptr noundef nonnull %0) #28
  br label %23

23:                                               ; preds = %17, %13
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  %25 = load i32, ptr %24, align 8, !tbaa !70
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %25) #30
  %26 = load i32, ptr %10, align 4, !tbaa !34
  %27 = lshr i32 %26, 8
  %28 = and i32 %27, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %28) #30
  %29 = and i32 %26, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %29) #30
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !112
  %32 = lshr i32 %31, 8
  %33 = and i32 %32, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %33) #30
  %34 = and i32 %31, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %34) #30
  %35 = load i32, ptr %3, align 4, !tbaa !79
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %35) #30
  %36 = load i32, ptr %3, align 4, !tbaa !79
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %40 = load ptr, ptr %39, align 8, !tbaa !67
  br label %41

41:                                               ; preds = %41, %38
  %42 = phi ptr [ %54, %41 ], [ %40, %38 ]
  %43 = phi i32 [ %53, %41 ], [ 0, %38 ]
  %44 = load i32, ptr %42, align 8, !tbaa !80
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %44) #30
  %45 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !115
  %47 = shl i32 %46, 4
  %48 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !116
  %50 = add nsw i32 %47, %49
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %50) #30
  %51 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !185
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %52) #30
  %53 = add nuw nsw i32 %43, 1
  %54 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 1
  %55 = load i32, ptr %3, align 4, !tbaa !79
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %41, label %57, !llvm.loop !202

57:                                               ; preds = %41, %23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jinit_c_main_controller(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef 1, i64 noundef 112) #28
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 52
  store ptr %6, ptr %7, align 8, !tbaa !62
  store ptr @start_pass_main, ptr %6, align 8, !tbaa !203
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 23
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 5
  store i32 4, ptr %15, align 8, !tbaa !16
  %16 = load ptr, ptr %14, align 8, !tbaa !20
  tail call void %16(ptr noundef nonnull %0) #28
  br label %43

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %19 = load i32, ptr %18, align 4, !tbaa !79
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  br label %24

24:                                               ; preds = %24, %21
  %25 = phi i64 [ 0, %21 ], [ %38, %24 ]
  %26 = phi ptr [ %23, %21 ], [ %39, %24 ]
  %27 = load ptr, ptr %3, align 8, !tbaa !7
  %28 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !205
  %30 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %26, i64 0, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !120
  %32 = shl i32 %31, 3
  %33 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %26, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !116
  %35 = shl nsw i32 %34, 3
  %36 = tail call ptr %29(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %32, i32 noundef %35) #28
  %37 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 5, i64 %25
  store ptr %36, ptr %37, align 8, !tbaa !25
  %38 = add nuw nsw i64 %25, 1
  %39 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %26, i64 1
  %40 = load i32, ptr %18, align 4, !tbaa !79
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %24, label %43, !llvm.loop !206

43:                                               ; preds = %24, %17, %13, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_pass_main(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 23
  %6 = load i32, ptr %5, align 8, !tbaa !57
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !207
  %10 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !208
  %11 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 3
  store i32 0, ptr %11, align 8, !tbaa !209
  %12 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 4
  store i32 %1, ptr %12, align 4, !tbaa !210
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %4, i64 0, i32 1
  store ptr @process_data_simple_main, ptr %15, align 8, !tbaa !211
  br label %20

16:                                               ; preds = %8
  %17 = load ptr, ptr %0, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 4, ptr %18, align 8, !tbaa !16
  %19 = load ptr, ptr %17, align 8, !tbaa !20
  tail call void %19(ptr noundef nonnull %0) #28
  br label %20

20:                                               ; preds = %16, %14, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @process_data_simple_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 52
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %9 = load i32, ptr %7, align 8, !tbaa !207
  %10 = load i32, ptr %8, align 8, !tbaa !39
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 2
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %15 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 5
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %17 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 3
  %18 = load i32, ptr %13, align 4, !tbaa !208
  br label %19

19:                                               ; preds = %46, %12
  %20 = phi i32 [ %18, %12 ], [ 0, %46 ]
  %21 = icmp ult i32 %20, 8
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load ptr, ptr %14, align 8, !tbaa !142
  %24 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !212
  tail call void %25(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %15, ptr noundef nonnull %13, i32 noundef 8) #28
  %26 = load i32, ptr %13, align 4, !tbaa !208
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i32 [ %26, %22 ], [ %20, %19 ]
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load ptr, ptr %16, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = tail call i32 %33(ptr noundef nonnull %0, ptr noundef nonnull %15) #28
  %35 = icmp eq i32 %34, 0
  %36 = load i32, ptr %17, align 8, !tbaa !209
  %37 = icmp eq i32 %36, 0
  br i1 %35, label %38, label %42

38:                                               ; preds = %30
  %.lcssa = phi i1 [ %37, %30 ]
  br i1 %.lcssa, label %39, label %51

39:                                               ; preds = %38
  %40 = load i32, ptr %2, align 4, !tbaa !61
  %41 = add i32 %40, -1
  store i32 %41, ptr %2, align 4, !tbaa !61
  store i32 1, ptr %17, align 8, !tbaa !209
  br label %51

42:                                               ; preds = %30
  br i1 %37, label %46, label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %2, align 4, !tbaa !61
  %45 = add i32 %44, 1
  store i32 %45, ptr %2, align 4, !tbaa !61
  store i32 0, ptr %17, align 8, !tbaa !209
  br label %46

46:                                               ; preds = %43, %42
  store i32 0, ptr %13, align 4, !tbaa !208
  %47 = load i32, ptr %7, align 8, !tbaa !207
  %48 = add i32 %47, 1
  store i32 %48, ptr %7, align 8, !tbaa !207
  %49 = load i32, ptr %8, align 8, !tbaa !39
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %19, label %51, !llvm.loop !213

51:                                               ; preds = %46, %39, %38, %27, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jinit_c_prep_controller(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 5
  store i32 4, ptr %6, align 8, !tbaa !16
  %7 = load ptr, ptr %5, align 8, !tbaa !20
  tail call void %7(ptr noundef nonnull %0) #28
  br label %8

8:                                                ; preds = %4, %2
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = tail call ptr %11(ptr noundef %0, i32 noundef 1, i64 noundef 112) #28
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  store ptr %12, ptr %13, align 8, !tbaa !142
  store ptr @start_pass_prep, ptr %12, align 8, !tbaa !214
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  %15 = load ptr, ptr %14, align 8, !tbaa !139
  %16 = getelementptr inbounds %struct.jpeg_downsampler, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !216
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %12, i64 0, i32 1
  br i1 %18, label %90, label %20

20:                                               ; preds = %8
  store ptr @pre_process_context, ptr %19, align 8, !tbaa !217
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %22 = load i32, ptr %21, align 4, !tbaa !114
  %23 = load ptr, ptr %9, align 8, !tbaa !7
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %26 = load i32, ptr %25, align 4, !tbaa !79
  %27 = mul i32 %22, 5
  %28 = mul i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 3
  %31 = tail call ptr %24(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %30) #28
  %32 = load i32, ptr %25, align 4, !tbaa !79
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %125

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %36 = load ptr, ptr %35, align 8, !tbaa !67
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %38 = mul nsw i32 %22, 3
  %39 = sext i32 %22 to i64
  %40 = sext i32 %38 to i64
  %41 = shl nsw i64 %40, 3
  %42 = icmp sgt i32 %22, 0
  %43 = shl nsw i32 %22, 1
  %44 = shl i32 %22, 2
  %45 = sext i32 %27 to i64
  %46 = sext i32 %43 to i64
  %47 = sext i32 %44 to i64
  %48 = zext i32 %22 to i64
  br label %49

49:                                               ; preds = %82, %34
  %50 = phi i64 [ 0, %34 ], [ %85, %82 ]
  %51 = phi ptr [ %31, %34 ], [ %84, %82 ]
  %52 = phi ptr [ %36, %34 ], [ %86, %82 ]
  %53 = load ptr, ptr %9, align 8, !tbaa !7
  %54 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !205
  %56 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %52, i64 0, i32 7
  %57 = load i32, ptr %56, align 4, !tbaa !120
  %58 = zext i32 %57 to i64
  %59 = shl nuw nsw i64 %58, 3
  %60 = load i32, ptr %37, align 8, !tbaa !113
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %59, %61
  %63 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %52, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !115
  %65 = sext i32 %64 to i64
  %66 = sdiv i64 %62, %65
  %67 = trunc i64 %66 to i32
  %68 = tail call ptr %55(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %67, i32 noundef %38) #28
  %69 = getelementptr inbounds ptr, ptr %51, i64 %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr align 1 %68, i64 %41, i1 false)
  br i1 %42, label %70, label %82

70:                                               ; preds = %70, %49
  %71 = phi i64 [ %80, %70 ], [ 0, %49 ]
  %72 = add nsw i64 %71, %46
  %73 = getelementptr inbounds ptr, ptr %68, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !25
  %75 = getelementptr inbounds ptr, ptr %51, i64 %71
  store ptr %74, ptr %75, align 8, !tbaa !25
  %76 = getelementptr inbounds ptr, ptr %68, i64 %71
  %77 = load ptr, ptr %76, align 8, !tbaa !25
  %78 = add nsw i64 %71, %47
  %79 = getelementptr inbounds ptr, ptr %51, i64 %78
  store ptr %77, ptr %79, align 8, !tbaa !25
  %80 = add nuw nsw i64 %71, 1
  %81 = icmp eq i64 %80, %48
  br i1 %81, label %82, label %70, !llvm.loop !218

82:                                               ; preds = %70, %49
  %83 = getelementptr inbounds %struct.my_prep_controller, ptr %12, i64 0, i32 1, i64 %50
  store ptr %69, ptr %83, align 8, !tbaa !25
  %84 = getelementptr inbounds ptr, ptr %51, i64 %45
  %85 = add nuw nsw i64 %50, 1
  %86 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %52, i64 1
  %87 = load i32, ptr %25, align 4, !tbaa !79
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %49, label %125, !llvm.loop !219

90:                                               ; preds = %8
  store ptr @pre_process_data, ptr %19, align 8, !tbaa !217
  %91 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %92 = load i32, ptr %91, align 4, !tbaa !79
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %125

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %96 = load ptr, ptr %95, align 8, !tbaa !67
  %97 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %98 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  br label %99

99:                                               ; preds = %99, %94
  %100 = phi i64 [ 0, %94 ], [ %120, %99 ]
  %101 = phi ptr [ %96, %94 ], [ %121, %99 ]
  %102 = load ptr, ptr %9, align 8, !tbaa !7
  %103 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !205
  %105 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %101, i64 0, i32 7
  %106 = load i32, ptr %105, align 4, !tbaa !120
  %107 = zext i32 %106 to i64
  %108 = shl nuw nsw i64 %107, 3
  %109 = load i32, ptr %97, align 8, !tbaa !113
  %110 = sext i32 %109 to i64
  %111 = mul nsw i64 %108, %110
  %112 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %101, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !115
  %114 = sext i32 %113 to i64
  %115 = sdiv i64 %111, %114
  %116 = trunc i64 %115 to i32
  %117 = load i32, ptr %98, align 4, !tbaa !114
  %118 = tail call ptr %104(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %116, i32 noundef %117) #28
  %119 = getelementptr inbounds %struct.my_prep_controller, ptr %12, i64 0, i32 1, i64 %100
  store ptr %118, ptr %119, align 8, !tbaa !25
  %120 = add nuw nsw i64 %100, 1
  %121 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %101, i64 1
  %122 = load i32, ptr %91, align 4, !tbaa !79
  %123 = sext i32 %122 to i64
  %124 = icmp slt i64 %120, %123
  br i1 %124, label %99, label %125, !llvm.loop !220

125:                                              ; preds = %99, %90, %82, %20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_pass_prep(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %4 = load ptr, ptr %3, align 8, !tbaa !142
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 4, ptr %8, align 8, !tbaa !16
  %9 = load ptr, ptr %7, align 8, !tbaa !20
  tail call void %9(ptr noundef nonnull %0) #28
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !221
  %14 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 3
  store i32 0, ptr %14, align 4, !tbaa !222
  %15 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 4
  store i32 0, ptr %15, align 8, !tbaa !223
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %17 = load i32, ptr %16, align 4, !tbaa !114
  %18 = shl nsw i32 %17, 1
  %19 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 5
  store i32 %18, ptr %19, align 4, !tbaa !224
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @pre_process_context(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %11 = load i32, ptr %10, align 4, !tbaa !114
  %12 = mul nsw i32 %11, 3
  %13 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %5, align 4, !tbaa !61
  %15 = icmp ult i32 %14, %6
  br i1 %15, label %16, label %144

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

26:                                               ; preds = %141, %16
  %27 = load i32, ptr %2, align 4, !tbaa !61
  %28 = icmp ult i32 %27, %3
  br i1 %28, label %29, label %79

29:                                               ; preds = %26
  %30 = sub i32 %3, %27
  %31 = load i32, ptr %18, align 4, !tbaa !224
  %32 = load i32, ptr %17, align 4, !tbaa !222
  %33 = sub nsw i32 %31, %32
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %30)
  %35 = load ptr, ptr %21, align 8, !tbaa !136
  %36 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !225
  %38 = zext i32 %27 to i64
  %39 = getelementptr inbounds ptr, ptr %1, i64 %38
  tail call void %37(ptr noundef %0, ptr noundef %39, ptr noundef nonnull %22, i32 noundef %32, i32 noundef %34) #28
  %40 = load i32, ptr %13, align 8, !tbaa !221
  %41 = load i32, ptr %23, align 4, !tbaa !34
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %29
  %44 = load i32, ptr %19, align 4, !tbaa !79
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load i32, ptr %10, align 4, !tbaa !114
  br label %48

48:                                               ; preds = %65, %46
  %49 = phi i32 [ %44, %46 ], [ %66, %65 ]
  %50 = phi i32 [ %47, %46 ], [ %67, %65 ]
  %51 = phi i64 [ 0, %46 ], [ %68, %65 ]
  %52 = icmp slt i32 %50, 1
  br i1 %52, label %65, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1, i64 %51
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i32 [ 1, %53 ], [ %60, %55 ]
  %57 = load ptr, ptr %54, align 8, !tbaa !25
  %58 = sub nsw i32 0, %56
  %59 = load i32, ptr %20, align 8, !tbaa !112
  tail call void @jcopy_sample_rows(ptr noundef %57, i32 noundef 0, ptr noundef %57, i32 noundef %58, i32 noundef 1, i32 noundef %59) #28
  %60 = add nuw nsw i32 %56, 1
  %61 = load i32, ptr %10, align 4, !tbaa !114
  %62 = icmp slt i32 %56, %61
  br i1 %62, label %55, label %63, !llvm.loop !226

63:                                               ; preds = %55
  %.lcssa = phi i32 [ %61, %55 ]
  %64 = load i32, ptr %19, align 4, !tbaa !79
  br label %65

65:                                               ; preds = %63, %48
  %66 = phi i32 [ %64, %63 ], [ %49, %48 ]
  %67 = phi i32 [ %.lcssa, %63 ], [ %50, %48 ]
  %68 = add nuw nsw i64 %51, 1
  %69 = sext i32 %66 to i64
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %48, label %71, !llvm.loop !227

71:                                               ; preds = %65, %43, %29
  %72 = load i32, ptr %2, align 4, !tbaa !61
  %73 = add i32 %72, %34
  store i32 %73, ptr %2, align 4, !tbaa !61
  %74 = load i32, ptr %17, align 4, !tbaa !222
  %75 = add nsw i32 %74, %34
  store i32 %75, ptr %17, align 4, !tbaa !222
  %76 = load i32, ptr %13, align 8, !tbaa !221
  %77 = sub i32 %76, %34
  store i32 %77, ptr %13, align 8, !tbaa !221
  %78 = load i32, ptr %18, align 4, !tbaa !224
  br label %116

79:                                               ; preds = %26
  %80 = load i32, ptr %13, align 8, !tbaa !221
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %144

82:                                               ; preds = %79
  %83 = load i32, ptr %17, align 4, !tbaa !222
  %84 = load i32, ptr %18, align 4, !tbaa !224
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %82
  %87 = load i32, ptr %19, align 4, !tbaa !79
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %106, %86
  %90 = phi i32 [ %107, %106 ], [ %87, %86 ]
  %91 = phi i64 [ %108, %106 ], [ 0, %86 ]
  %92 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !25
  %94 = load i32, ptr %20, align 8, !tbaa !112
  %95 = load i32, ptr %17, align 4, !tbaa !222
  %96 = load i32, ptr %18, align 4, !tbaa !224
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %89
  %99 = add nsw i32 %95, -1
  br label %100

100:                                              ; preds = %100, %98
  %101 = phi i32 [ %95, %98 ], [ %102, %100 ]
  tail call void @jcopy_sample_rows(ptr noundef %93, i32 noundef %99, ptr noundef %93, i32 noundef %101, i32 noundef 1, i32 noundef %94) #28
  %102 = add i32 %101, 1
  %103 = icmp eq i32 %102, %96
  br i1 %103, label %104, label %100, !llvm.loop !228

104:                                              ; preds = %100
  %105 = load i32, ptr %19, align 4, !tbaa !79
  br label %106

106:                                              ; preds = %104, %89
  %107 = phi i32 [ %105, %104 ], [ %90, %89 ]
  %108 = add nuw nsw i64 %91, 1
  %109 = sext i32 %107 to i64
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %89, label %111, !llvm.loop !229

111:                                              ; preds = %106
  %112 = load i32, ptr %18, align 4, !tbaa !224
  br label %113

113:                                              ; preds = %111, %86
  %114 = phi i32 [ %112, %111 ], [ %84, %86 ]
  store i32 %114, ptr %17, align 4, !tbaa !222
  %115 = load i32, ptr %5, align 4, !tbaa !61
  br label %121

116:                                              ; preds = %82, %71
  %117 = phi i32 [ %84, %82 ], [ %78, %71 ]
  %118 = phi i32 [ %83, %82 ], [ %75, %71 ]
  %119 = icmp eq i32 %118, %117
  %120 = load i32, ptr %5, align 4, !tbaa !61
  br i1 %119, label %121, label %141

121:                                              ; preds = %116, %113
  %122 = phi i32 [ %115, %113 ], [ %120, %116 ]
  %123 = load ptr, ptr %24, align 8, !tbaa !139
  %124 = getelementptr inbounds %struct.jpeg_downsampler, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !230
  %126 = load i32, ptr %25, align 8, !tbaa !223
  tail call void %125(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %126, ptr noundef %4, i32 noundef %122) #28
  %127 = load i32, ptr %5, align 4, !tbaa !61
  %128 = add i32 %127, 1
  store i32 %128, ptr %5, align 4, !tbaa !61
  %129 = load i32, ptr %10, align 4, !tbaa !114
  %130 = load i32, ptr %25, align 8, !tbaa !223
  %131 = add nsw i32 %130, %129
  %132 = icmp slt i32 %131, %12
  %133 = select i1 %132, i32 %131, i32 0
  store i32 %133, ptr %25, align 8, !tbaa !223
  %134 = load i32, ptr %17, align 4, !tbaa !222
  %135 = icmp slt i32 %134, %12
  br i1 %135, label %137, label %136

136:                                              ; preds = %121
  store i32 0, ptr %17, align 4, !tbaa !222
  br label %137

137:                                              ; preds = %136, %121
  %138 = phi i32 [ 0, %136 ], [ %134, %121 ]
  %139 = add nsw i32 %138, %129
  store i32 %139, ptr %18, align 4, !tbaa !224
  %140 = load i32, ptr %5, align 4, !tbaa !61
  br label %141

141:                                              ; preds = %137, %116
  %142 = phi i32 [ %140, %137 ], [ %120, %116 ]
  %143 = icmp ult i32 %142, %6
  br i1 %143, label %26, label %144, !llvm.loop !231

144:                                              ; preds = %141, %79, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @pre_process_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  %10 = load i32, ptr %2, align 4, !tbaa !61
  %11 = icmp ult i32 %10, %3
  br i1 %11, label %12, label %129

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

21:                                               ; preds = %126, %12
  %22 = phi i32 [ %10, %12 ], [ %127, %126 ]
  %23 = load i32, ptr %5, align 4, !tbaa !61
  %24 = icmp ult i32 %23, %6
  br i1 %24, label %25, label %129

25:                                               ; preds = %21
  %26 = sub i32 %3, %22
  %27 = load i32, ptr %13, align 4, !tbaa !114
  %28 = load i32, ptr %14, align 4, !tbaa !222
  %29 = sub nsw i32 %27, %28
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %26)
  %31 = load ptr, ptr %15, align 8, !tbaa !136
  %32 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !225
  %34 = zext i32 %22 to i64
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34
  tail call void %33(ptr noundef nonnull %0, ptr noundef %35, ptr noundef nonnull %16, i32 noundef %28, i32 noundef %30) #28
  %36 = load i32, ptr %2, align 4, !tbaa !61
  %37 = add i32 %36, %30
  store i32 %37, ptr %2, align 4, !tbaa !61
  %38 = load i32, ptr %14, align 4, !tbaa !222
  %39 = add nsw i32 %38, %30
  store i32 %39, ptr %14, align 4, !tbaa !222
  %40 = load i32, ptr %17, align 8, !tbaa !221
  %41 = sub i32 %40, %30
  store i32 %41, ptr %17, align 8, !tbaa !221
  %42 = icmp eq i32 %40, %30
  %43 = load i32, ptr %13, align 4, !tbaa !114
  %44 = icmp slt i32 %39, %43
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %75

46:                                               ; preds = %25
  %47 = load i32, ptr %18, align 4, !tbaa !79
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %66, %46
  %50 = phi i32 [ %67, %66 ], [ %47, %46 ]
  %51 = phi i64 [ %68, %66 ], [ 0, %46 ]
  %52 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !25
  %54 = load i32, ptr %19, align 8, !tbaa !112
  %55 = load i32, ptr %14, align 4, !tbaa !222
  %56 = load i32, ptr %13, align 4, !tbaa !114
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = add nsw i32 %55, -1
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i32 [ %55, %58 ], [ %62, %60 ]
  tail call void @jcopy_sample_rows(ptr noundef %53, i32 noundef %59, ptr noundef %53, i32 noundef %61, i32 noundef 1, i32 noundef %54) #28
  %62 = add i32 %61, 1
  %63 = icmp eq i32 %62, %56
  br i1 %63, label %64, label %60, !llvm.loop !228

64:                                               ; preds = %60
  %65 = load i32, ptr %18, align 4, !tbaa !79
  br label %66

66:                                               ; preds = %64, %49
  %67 = phi i32 [ %65, %64 ], [ %50, %49 ]
  %68 = add nuw nsw i64 %51, 1
  %69 = sext i32 %67 to i64
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %49, label %71, !llvm.loop !232

71:                                               ; preds = %66
  %72 = load i32, ptr %13, align 4, !tbaa !114
  br label %73

73:                                               ; preds = %71, %46
  %74 = phi i32 [ %72, %71 ], [ %43, %46 ]
  store i32 %74, ptr %14, align 4, !tbaa !222
  br label %77

75:                                               ; preds = %25
  %76 = icmp eq i32 %39, %43
  br i1 %76, label %77, label %84

77:                                               ; preds = %75, %73
  %78 = load ptr, ptr %20, align 8, !tbaa !139
  %79 = getelementptr inbounds %struct.jpeg_downsampler, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !230
  %81 = load i32, ptr %5, align 4, !tbaa !61
  tail call void %80(ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef 0, ptr noundef %4, i32 noundef %81) #28
  store i32 0, ptr %14, align 4, !tbaa !222
  %82 = load i32, ptr %5, align 4, !tbaa !61
  %83 = add i32 %82, 1
  store i32 %83, ptr %5, align 4, !tbaa !61
  br label %84

84:                                               ; preds = %77, %75
  %85 = load i32, ptr %17, align 8, !tbaa !221
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %126

87:                                               ; preds = %84
  %88 = load i32, ptr %5, align 4, !tbaa !61
  %89 = icmp ult i32 %88, %6
  br i1 %89, label %90, label %126

90:                                               ; preds = %87
  %91 = load i32, ptr %18, align 4, !tbaa !79
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %95 = load ptr, ptr %94, align 8, !tbaa !67
  br label %96

96:                                               ; preds = %119, %93
  %97 = phi i32 [ %91, %93 ], [ %120, %119 ]
  %98 = phi i64 [ 0, %93 ], [ %121, %119 ]
  %99 = phi ptr [ %95, %93 ], [ %122, %119 ]
  %100 = getelementptr inbounds ptr, ptr %4, i64 %98
  %101 = load ptr, ptr %100, align 8, !tbaa !25
  %102 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %99, i64 0, i32 7
  %103 = load i32, ptr %102, align 4, !tbaa !120
  %104 = shl i32 %103, 3
  %105 = load i32, ptr %5, align 4, !tbaa !61
  %106 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %99, i64 0, i32 3
  %107 = load i32, ptr %106, align 4, !tbaa !116
  %108 = mul i32 %107, %105
  %109 = mul i32 %107, %6
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %96
  %112 = add nsw i32 %108, -1
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi i32 [ %108, %111 ], [ %115, %113 ]
  tail call void @jcopy_sample_rows(ptr noundef %101, i32 noundef %112, ptr noundef %101, i32 noundef %114, i32 noundef 1, i32 noundef %104) #28
  %115 = add i32 %114, 1
  %116 = icmp eq i32 %115, %109
  br i1 %116, label %117, label %113, !llvm.loop !228

117:                                              ; preds = %113
  %118 = load i32, ptr %18, align 4, !tbaa !79
  br label %119

119:                                              ; preds = %117, %96
  %120 = phi i32 [ %118, %117 ], [ %97, %96 ]
  %121 = add nuw nsw i64 %98, 1
  %122 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %99, i64 1
  %123 = sext i32 %120 to i64
  %124 = icmp slt i64 %121, %123
  br i1 %124, label %96, label %125, !llvm.loop !233

125:                                              ; preds = %119, %90
  store i32 %6, ptr %5, align 4, !tbaa !61
  br label %129

126:                                              ; preds = %87, %84
  %127 = load i32, ptr %2, align 4, !tbaa !61
  %128 = icmp ult i32 %127, %3
  br i1 %128, label %21, label %129, !llvm.loop !234

129:                                              ; preds = %126, %125, %21, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jinit_c_coef_controller(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef 1, i64 noundef 192) #28
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  store ptr %6, ptr %7, align 8, !tbaa !44
  store ptr @start_pass_coef, ptr %6, align 8, !tbaa !235
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %11 = load i32, ptr %10, align 4, !tbaa !79
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i64 [ 0, %13 ], [ %41, %16 ]
  %18 = phi ptr [ %15, %13 ], [ %42, %16 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !7
  %20 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !237
  %22 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %18, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !120
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %18, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !115
  %27 = sext i32 %26 to i64
  %28 = tail call i64 @jround_up(i64 noundef %24, i64 noundef %27) #28
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %18, i64 0, i32 8
  %31 = load i32, ptr %30, align 8, !tbaa !121
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %18, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !116
  %35 = sext i32 %34 to i64
  %36 = tail call i64 @jround_up(i64 noundef %32, i64 noundef %35) #28
  %37 = trunc i64 %36 to i32
  %38 = load i32, ptr %33, align 4, !tbaa !116
  %39 = tail call ptr %21(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef %29, i32 noundef %37, i32 noundef %38) #28
  %40 = getelementptr inbounds %struct.my_coef_controller.63, ptr %6, i64 0, i32 6, i64 %17
  store ptr %39, ptr %40, align 8, !tbaa !25
  %41 = add nuw nsw i64 %17, 1
  %42 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %18, i64 1
  %43 = load i32, ptr %10, align 4, !tbaa !79
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %16, label %61, !llvm.loop !238

46:                                               ; preds = %2
  %47 = load ptr, ptr %3, align 8, !tbaa !7
  %48 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !239
  %50 = tail call ptr %49(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 1280) #28
  br label %51

51:                                               ; preds = %51, %46
  %52 = phi i64 [ 0, %46 ], [ %56, %51 ]
  %53 = phi <2 x i64> [ <i64 0, i64 1>, %46 ], [ %57, %51 ]
  %54 = getelementptr inbounds [64 x i16], ptr %50, <2 x i64> %53
  %55 = getelementptr inbounds %struct.my_coef_controller.63, ptr %6, i64 0, i32 5, i64 %52
  store <2 x ptr> %54, ptr %55, align 8, !tbaa !25
  %56 = add nuw i64 %52, 2
  %57 = add <2 x i64> %53, <i64 2, i64 2>
  %58 = icmp eq i64 %56, 10
  br i1 %58, label %59, label %51, !llvm.loop !240

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.my_coef_controller.63, ptr %6, i64 0, i32 6
  store ptr null, ptr %60, align 8, !tbaa !25
  br label %61

61:                                               ; preds = %59, %16, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_pass_coef(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !241
  tail call fastcc void @start_iMCU_row(ptr noundef %0) #30
  switch i32 %1, label %36 [
    i32 0, label %6
    i32 3, label %16
    i32 2, label %26
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 4, ptr %12, align 8, !tbaa !16
  %13 = load ptr, ptr %11, align 8, !tbaa !20
  tail call void %13(ptr noundef nonnull %0) #28
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %4, i64 0, i32 1
  store ptr @compress_data, ptr %15, align 8, !tbaa !242
  br label %40

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 5
  store i32 4, ptr %22, align 8, !tbaa !16
  %23 = load ptr, ptr %21, align 8, !tbaa !20
  tail call void %23(ptr noundef nonnull %0) #28
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %4, i64 0, i32 1
  store ptr @compress_first_pass, ptr %25, align 8, !tbaa !242
  br label %40

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !25
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 4, ptr %32, align 8, !tbaa !16
  %33 = load ptr, ptr %31, align 8, !tbaa !20
  tail call void %33(ptr noundef nonnull %0) #28
  br label %34

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %4, i64 0, i32 1
  store ptr @compress_output, ptr %35, align 8, !tbaa !242
  br label %40

36:                                               ; preds = %2
  %37 = load ptr, ptr %0, align 8, !tbaa !15
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 5
  store i32 4, ptr %38, align 8, !tbaa !16
  %39 = load ptr, ptr %37, align 8, !tbaa !20
  tail call void %39(ptr noundef nonnull %0) #28
  br label %40

40:                                               ; preds = %36, %34, %24, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @start_iMCU_row(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %5 = load i32, ptr %4, align 4, !tbaa !162
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.my_coef_controller.63, ptr %3, i64 0, i32 4
  store i32 1, ptr %8, align 4, !tbaa !243
  br label %25

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.my_coef_controller.63, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !241
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %13 = load i32, ptr %12, align 8, !tbaa !39
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %11, %14
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.my_coef_controller.63, ptr %3, i64 0, i32 4
  br i1 %15, label %19, label %22

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %17, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !116
  store i32 %21, ptr %18, align 4, !tbaa !243
  br label %25

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %17, i64 0, i32 18
  %24 = load i32, ptr %23, align 8, !tbaa !172
  store i32 %24, ptr %18, align 4, !tbaa !243
  br label %25

25:                                               ; preds = %22, %19, %7
  %26 = getelementptr inbounds %struct.my_coef_controller.63, ptr %3, i64 0, i32 2
  store i32 0, ptr %26, align 4, !tbaa !244
  %27 = getelementptr inbounds %struct.my_coef_controller.63, ptr %3, i64 0, i32 3
  store i32 0, ptr %27, align 8, !tbaa !245
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @compress_data(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %9 = load i32, ptr %8, align 8, !tbaa !39
  %10 = add i32 %9, -1
  %11 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !245
  %13 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !243
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %154

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 2
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %19 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 1
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %22 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5
  %23 = load i32, ptr %17, align 4, !tbaa !244
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
  %33 = load i32, ptr %18, align 4, !tbaa !162
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
  %42 = load ptr, ptr %41, align 8, !tbaa !25
  %43 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 0, i32 13
  %44 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 0, i32 17
  %45 = select i1 %36, ptr %43, ptr %44
  %46 = load i32, ptr %45, align 4, !tbaa !61
  %47 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 0, i32 16
  %48 = load i32, ptr %47, align 8, !tbaa !177
  %49 = mul i32 %48, %32
  %50 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 0, i32 14
  %51 = load i32, ptr %50, align 8, !tbaa !175
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
  %61 = load i32, ptr %19, align 8, !tbaa !241
  %62 = icmp ult i32 %61, %10
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = add nsw i32 %60, %27
  %65 = load i32, ptr %54, align 8, !tbaa !172
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %63, %57
  %68 = load ptr, ptr %20, align 8, !tbaa !145
  %69 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !246
  %71 = load ptr, ptr %55, align 8, !tbaa !25
  %72 = sext i32 %59 to i64
  %73 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !25
  tail call void %70(ptr noundef %0, ptr noundef nonnull %42, ptr noundef %71, ptr noundef %74, i32 noundef %58, i32 noundef %49, i32 noundef %46) #28
  %75 = load i32, ptr %43, align 4, !tbaa !174
  %76 = icmp slt i32 %46, %75
  br i1 %76, label %77, label %123

77:                                               ; preds = %67
  %78 = add nsw i32 %59, %46
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !25
  %82 = sub nsw i32 %75, %46
  %83 = sext i32 %82 to i64
  %84 = shl nsw i64 %83, 7
  tail call void @jzero_far(ptr noundef %81, i64 noundef %84) #28
  %85 = load i32, ptr %43, align 4, !tbaa !174
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
  %94 = load ptr, ptr %93, align 8, !tbaa !25
  %95 = load i16, ptr %94, align 2, !tbaa !65
  %96 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %91
  %97 = load ptr, ptr %96, align 8, !tbaa !25
  store i16 %95, ptr %97, align 2, !tbaa !65
  %98 = add nsw i64 %90, 1
  %99 = icmp eq i64 %98, %88
  br i1 %99, label %123, label %89, !llvm.loop !247

100:                                              ; preds = %63
  %101 = sext i32 %59 to i64
  %102 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !25
  %104 = load i32, ptr %43, align 4, !tbaa !174
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 7
  tail call void @jzero_far(ptr noundef %103, i64 noundef %106) #28
  %107 = load i32, ptr %43, align 4, !tbaa !174
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %100
  %110 = add nsw i32 %59, -1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !25
  %114 = zext i32 %107 to i64
  br label %115

115:                                              ; preds = %115, %109
  %116 = phi i64 [ 0, %109 ], [ %121, %115 ]
  %117 = load i16, ptr %113, align 2, !tbaa !65
  %118 = add nsw i64 %116, %101
  %119 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !25
  store i16 %117, ptr %120, align 2, !tbaa !65
  %121 = add nuw nsw i64 %116, 1
  %122 = icmp eq i64 %121, %114
  br i1 %122, label %123, label %115, !llvm.loop !248

123:                                              ; preds = %115, %100, %89, %77, %67
  %124 = phi i32 [ %107, %100 ], [ %85, %77 ], [ %75, %67 ], [ %85, %89 ], [ %107, %115 ]
  %125 = add nsw i32 %124, %59
  %126 = add i32 %58, 8
  %127 = add nuw nsw i32 %60, 1
  %128 = load i32, ptr %50, align 8, !tbaa !175
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %57, label %130, !llvm.loop !249

130:                                              ; preds = %123
  %.lcssa = phi i32 [ %125, %123 ]
  %131 = load i32, ptr %18, align 4, !tbaa !162
  br label %132

132:                                              ; preds = %130, %37
  %133 = phi i32 [ %38, %37 ], [ %131, %130 ]
  %134 = phi i32 [ %40, %37 ], [ %.lcssa, %130 ]
  %135 = add nuw nsw i64 %39, 1
  %136 = sext i32 %133 to i64
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %37, label %138, !llvm.loop !250

138:                                              ; preds = %132, %31
  %139 = load ptr, ptr %21, align 8, !tbaa !148
  %140 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !251
  %142 = tail call i32 %141(ptr noundef nonnull %0, ptr noundef nonnull %22) #28
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  %.lcssa3 = phi i32 [ %27, %138 ]
  %.lcssa1 = phi i32 [ %32, %138 ]
  store i32 %.lcssa3, ptr %11, align 8, !tbaa !245
  store i32 %.lcssa1, ptr %17, align 4, !tbaa !244
  br label %158

145:                                              ; preds = %138
  %146 = add i32 %32, 1
  %147 = icmp ugt i32 %146, %7
  br i1 %147, label %148, label %31, !llvm.loop !252

148:                                              ; preds = %145
  %149 = load i32, ptr %13, align 4, !tbaa !243
  br label %150

150:                                              ; preds = %148, %24
  %151 = phi i32 [ %149, %148 ], [ %25, %24 ]
  store i32 0, ptr %17, align 4, !tbaa !244
  %152 = add nsw i32 %27, 1
  %153 = icmp slt i32 %152, %151
  br i1 %153, label %24, label %154, !llvm.loop !253

154:                                              ; preds = %150, %2
  %155 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !241
  %157 = add i32 %156, 1
  store i32 %157, ptr %155, align 8, !tbaa !241
  tail call fastcc void @start_iMCU_row(ptr noundef %0) #30
  br label %158

158:                                              ; preds = %154, %144
  %159 = phi i32 [ 0, %144 ], [ 1, %154 ]
  ret i32 %159
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @compress_first_pass(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %6 = load i32, ptr %5, align 8, !tbaa !39
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !79
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %228

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 1
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  br label %17

17:                                               ; preds = %222, %11
  %18 = phi i64 [ 0, %11 ], [ %223, %222 ]
  %19 = phi ptr [ %13, %11 ], [ %224, %222 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !7
  %21 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %20, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !254
  %23 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 6, i64 %18
  %24 = load ptr, ptr %23, align 8, !tbaa !25
  %25 = load i32, ptr %15, align 8, !tbaa !241
  %26 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !116
  %28 = mul i32 %27, %25
  %29 = tail call ptr %22(ptr noundef nonnull %0, ptr noundef %24, i32 noundef %28, i32 noundef %27, i32 noundef 1) #28
  %30 = load i32, ptr %15, align 8, !tbaa !241
  %31 = icmp ult i32 %30, %7
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, ptr %26, align 4, !tbaa !116
  br label %41

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 0, i32 8
  %36 = load i32, ptr %35, align 8, !tbaa !121
  %37 = load i32, ptr %26, align 4, !tbaa !116
  %38 = urem i32 %36, %37
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %37, i32 %38
  br label %41

41:                                               ; preds = %34, %32
  %42 = phi i32 [ %33, %32 ], [ %40, %34 ]
  %43 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !120
  %45 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !115
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
  %67 = load ptr, ptr %66, align 8, !tbaa !25
  %68 = load ptr, ptr %16, align 8, !tbaa !145
  %69 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !246
  %71 = load ptr, ptr %53, align 8, !tbaa !25
  %72 = trunc i64 %65 to i32
  %73 = shl i32 %72, 3
  tail call void %70(ptr noundef %0, ptr noundef %19, ptr noundef %71, ptr noundef %67, i32 noundef %73, i32 noundef 0, i32 noundef %44) #28
  br i1 %54, label %74, label %124

74:                                               ; preds = %64
  %75 = getelementptr inbounds [64 x i16], ptr %67, i64 %55
  tail call void @jzero_far(ptr noundef %75, i64 noundef %57) #28
  %76 = getelementptr inbounds [64 x i16], ptr %75, i64 -1
  %77 = load i16, ptr %76, align 2, !tbaa !65
  br label %78

78:                                               ; preds = %120, %74
  %79 = phi i64 [ 0, %74 ], [ %121, %120 ]
  %80 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %74 ], [ %122, %120 ]
  %81 = icmp ule <8 x i64> %80, %63
  %82 = extractelement <8 x i1> %81, i64 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = getelementptr inbounds [64 x i16], ptr %75, i64 %79
  store i16 %77, ptr %84, align 2, !tbaa !65
  br label %85

85:                                               ; preds = %83, %78
  %86 = extractelement <8 x i1> %81, i64 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = or i64 %79, 1
  %89 = getelementptr inbounds [64 x i16], ptr %75, i64 %88
  store i16 %77, ptr %89, align 2, !tbaa !65
  br label %90

90:                                               ; preds = %87, %85
  %91 = extractelement <8 x i1> %81, i64 2
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = or i64 %79, 2
  %94 = getelementptr inbounds [64 x i16], ptr %75, i64 %93
  store i16 %77, ptr %94, align 2, !tbaa !65
  br label %95

95:                                               ; preds = %92, %90
  %96 = extractelement <8 x i1> %81, i64 3
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = or i64 %79, 3
  %99 = getelementptr inbounds [64 x i16], ptr %75, i64 %98
  store i16 %77, ptr %99, align 2, !tbaa !65
  br label %100

100:                                              ; preds = %97, %95
  %101 = extractelement <8 x i1> %81, i64 4
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = or i64 %79, 4
  %104 = getelementptr inbounds [64 x i16], ptr %75, i64 %103
  store i16 %77, ptr %104, align 2, !tbaa !65
  br label %105

105:                                              ; preds = %102, %100
  %106 = extractelement <8 x i1> %81, i64 5
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = or i64 %79, 5
  %109 = getelementptr inbounds [64 x i16], ptr %75, i64 %108
  store i16 %77, ptr %109, align 2, !tbaa !65
  br label %110

110:                                              ; preds = %107, %105
  %111 = extractelement <8 x i1> %81, i64 6
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = or i64 %79, 6
  %114 = getelementptr inbounds [64 x i16], ptr %75, i64 %113
  store i16 %77, ptr %114, align 2, !tbaa !65
  br label %115

115:                                              ; preds = %112, %110
  %116 = extractelement <8 x i1> %81, i64 7
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = or i64 %79, 7
  %119 = getelementptr inbounds [64 x i16], ptr %75, i64 %118
  store i16 %77, ptr %119, align 2, !tbaa !65
  br label %120

120:                                              ; preds = %117, %115
  %121 = add i64 %79, 8
  %122 = add <8 x i64> %80, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %123 = icmp eq i64 %121, %60
  br i1 %123, label %124, label %78, !llvm.loop !255

124:                                              ; preds = %120, %64
  %125 = add nuw nsw i64 %65, 1
  %126 = icmp eq i64 %125, %58
  br i1 %126, label %127, label %64, !llvm.loop !256

127:                                              ; preds = %124
  %128 = load i32, ptr %15, align 8, !tbaa !241
  br label %129

129:                                              ; preds = %127, %41
  %130 = phi i32 [ %128, %127 ], [ %30, %41 ]
  %131 = icmp eq i32 %130, %7
  br i1 %131, label %132, label %222

132:                                              ; preds = %129
  %133 = load i32, ptr %26, align 4, !tbaa !116
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
  %156 = load ptr, ptr %155, align 8, !tbaa !25
  %157 = add nsw i64 %154, -1
  %158 = getelementptr inbounds ptr, ptr %29, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !25
  tail call void @jzero_far(ptr noundef %156, i64 noundef %139) #28
  br i1 %140, label %217, label %160

160:                                              ; preds = %212, %153
  %161 = phi ptr [ %214, %212 ], [ %159, %153 ]
  %162 = phi ptr [ %213, %212 ], [ %156, %153 ]
  %163 = phi i32 [ %215, %212 ], [ 0, %153 ]
  %164 = getelementptr inbounds [64 x i16], ptr %161, i64 %142
  %165 = load i16, ptr %164, align 2, !tbaa !65
  br i1 %143, label %166, label %212

166:                                              ; preds = %208, %160
  %167 = phi i64 [ %209, %208 ], [ 0, %160 ]
  %168 = phi <8 x i64> [ %210, %208 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %160 ]
  %169 = icmp ule <8 x i64> %168, %152
  %170 = extractelement <8 x i1> %169, i64 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = getelementptr inbounds [64 x i16], ptr %162, i64 %167
  store i16 %165, ptr %172, align 2, !tbaa !65
  br label %173

173:                                              ; preds = %171, %166
  %174 = extractelement <8 x i1> %169, i64 1
  br i1 %174, label %175, label %178

175:                                              ; preds = %173
  %176 = or i64 %167, 1
  %177 = getelementptr inbounds [64 x i16], ptr %162, i64 %176
  store i16 %165, ptr %177, align 2, !tbaa !65
  br label %178

178:                                              ; preds = %175, %173
  %179 = extractelement <8 x i1> %169, i64 2
  br i1 %179, label %180, label %183

180:                                              ; preds = %178
  %181 = or i64 %167, 2
  %182 = getelementptr inbounds [64 x i16], ptr %162, i64 %181
  store i16 %165, ptr %182, align 2, !tbaa !65
  br label %183

183:                                              ; preds = %180, %178
  %184 = extractelement <8 x i1> %169, i64 3
  br i1 %184, label %185, label %188

185:                                              ; preds = %183
  %186 = or i64 %167, 3
  %187 = getelementptr inbounds [64 x i16], ptr %162, i64 %186
  store i16 %165, ptr %187, align 2, !tbaa !65
  br label %188

188:                                              ; preds = %185, %183
  %189 = extractelement <8 x i1> %169, i64 4
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = or i64 %167, 4
  %192 = getelementptr inbounds [64 x i16], ptr %162, i64 %191
  store i16 %165, ptr %192, align 2, !tbaa !65
  br label %193

193:                                              ; preds = %190, %188
  %194 = extractelement <8 x i1> %169, i64 5
  br i1 %194, label %195, label %198

195:                                              ; preds = %193
  %196 = or i64 %167, 5
  %197 = getelementptr inbounds [64 x i16], ptr %162, i64 %196
  store i16 %165, ptr %197, align 2, !tbaa !65
  br label %198

198:                                              ; preds = %195, %193
  %199 = extractelement <8 x i1> %169, i64 6
  br i1 %199, label %200, label %203

200:                                              ; preds = %198
  %201 = or i64 %167, 6
  %202 = getelementptr inbounds [64 x i16], ptr %162, i64 %201
  store i16 %165, ptr %202, align 2, !tbaa !65
  br label %203

203:                                              ; preds = %200, %198
  %204 = extractelement <8 x i1> %169, i64 7
  br i1 %204, label %205, label %208

205:                                              ; preds = %203
  %206 = or i64 %167, 7
  %207 = getelementptr inbounds [64 x i16], ptr %162, i64 %206
  store i16 %165, ptr %207, align 2, !tbaa !65
  br label %208

208:                                              ; preds = %205, %203
  %209 = add i64 %167, 8
  %210 = add <8 x i64> %168, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %211 = icmp eq i64 %209, %149
  br i1 %211, label %212, label %166, !llvm.loop !257

212:                                              ; preds = %208, %160
  %213 = getelementptr inbounds [64 x i16], ptr %162, i64 %144
  %214 = getelementptr inbounds [64 x i16], ptr %161, i64 %144
  %215 = add nuw i32 %163, 1
  %216 = icmp eq i32 %215, %147
  br i1 %216, label %217, label %160, !llvm.loop !258

217:                                              ; preds = %212, %153
  %218 = add nsw i64 %154, 1
  %219 = load i32, ptr %26, align 4, !tbaa !116
  %220 = sext i32 %219 to i64
  %221 = icmp slt i64 %218, %220
  br i1 %221, label %153, label %222, !llvm.loop !259

222:                                              ; preds = %217, %132, %129
  %223 = add nuw nsw i64 %18, 1
  %224 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 1
  %225 = load i32, ptr %8, align 4, !tbaa !79
  %226 = sext i32 %225 to i64
  %227 = icmp slt i64 %223, %226
  br i1 %227, label %17, label %228, !llvm.loop !260

228:                                              ; preds = %222, %2
  %229 = tail call i32 @compress_output(ptr noundef nonnull %0, ptr poison) #30, !range !186
  ret i32 %229
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @compress_output(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [4 x ptr], align 16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %7 = load i32, ptr %6, align 4, !tbaa !162
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 1
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ 0, %9 ], [ %30, %12 ]
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = load ptr, ptr %10, align 8, !tbaa !7
  %17 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !254
  %19 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %15, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !118
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 6, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  %24 = load i32, ptr %11, align 8, !tbaa !241
  %25 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %15, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !116
  %27 = mul i32 %26, %24
  %28 = tail call ptr %18(ptr noundef nonnull %0, ptr noundef %23, i32 noundef %27, i32 noundef %26, i32 noundef 0) #28
  %29 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %13
  store ptr %28, ptr %29, align 8, !tbaa !25
  %30 = add nuw nsw i64 %13, 1
  %31 = load i32, ptr %6, align 4, !tbaa !162
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %12, label %34, !llvm.loop !261

34:                                               ; preds = %12, %2
  %35 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !245
  %37 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !243
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %125

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 2
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %44 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 5
  %45 = sext i32 %36 to i64
  %46 = load i32, ptr %41, align 4, !tbaa !244
  %47 = load i32, ptr %42, align 8, !tbaa !169
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
  %56 = load i32, ptr %6, align 4, !tbaa !162
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %105

58:                                               ; preds = %54
  %59 = zext i32 %56 to i64
  br label %60

60:                                               ; preds = %101, %58
  %61 = phi i64 [ 0, %58 ], [ %103, %101 ]
  %62 = phi i32 [ 0, %58 ], [ %102, %101 ]
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !25
  %65 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 0, i32 13
  %66 = load i32, ptr %65, align 4, !tbaa !174
  %67 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 0, i32 14
  %68 = load i32, ptr %67, align 8, !tbaa !175
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %60
  %71 = mul i32 %66, %55
  %72 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %61
  %73 = load ptr, ptr %72, align 8, !tbaa !25
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
  %83 = load ptr, ptr %82, align 8, !tbaa !25
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
  store ptr %88, ptr %92, align 8, !tbaa !25
  %93 = add nuw nsw i32 %89, 1
  %94 = icmp eq i32 %93, %66
  br i1 %94, label %95, label %86, !llvm.loop !262

95:                                               ; preds = %86
  %.lcssa = phi i64 [ %91, %86 ]
  %96 = trunc i64 %.lcssa to i32
  br label %97

97:                                               ; preds = %95, %77
  %98 = phi i32 [ %79, %77 ], [ %96, %95 ]
  %99 = add nuw nsw i64 %78, 1
  %100 = icmp eq i64 %99, %76
  br i1 %100, label %101, label %77, !llvm.loop !263

101:                                              ; preds = %97, %60
  %102 = phi i32 [ %62, %60 ], [ %98, %97 ]
  %103 = add nuw nsw i64 %61, 1
  %104 = icmp eq i64 %103, %59
  br i1 %104, label %105, label %60, !llvm.loop !264

105:                                              ; preds = %101, %54
  %106 = load ptr, ptr %43, align 8, !tbaa !148
  %107 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !251
  %109 = tail call i32 %108(ptr noundef nonnull %0, ptr noundef nonnull %44) #28
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %.lcssa4 = phi i64 [ %52, %105 ]
  %.lcssa1 = phi i32 [ %55, %105 ]
  %112 = trunc i64 %.lcssa4 to i32
  store i32 %112, ptr %35, align 8, !tbaa !245
  store i32 %.lcssa1, ptr %41, align 4, !tbaa !244
  br label %129

113:                                              ; preds = %105
  %114 = add nuw i32 %55, 1
  %115 = load i32, ptr %42, align 8, !tbaa !169
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %54, label %117, !llvm.loop !265

117:                                              ; preds = %113
  %.lcssa3 = phi i32 [ %115, %113 ]
  %118 = load i32, ptr %37, align 4, !tbaa !243
  br label %119

119:                                              ; preds = %117, %48
  %120 = phi i32 [ %118, %117 ], [ %49, %48 ]
  %121 = phi i32 [ %.lcssa3, %117 ], [ %50, %48 ]
  store i32 0, ptr %41, align 4, !tbaa !244
  %122 = add nsw i64 %52, 1
  %123 = sext i32 %120 to i64
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %48, label %125, !llvm.loop !266

125:                                              ; preds = %119, %34
  %126 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !241
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 8, !tbaa !241
  tail call fastcc void @start_iMCU_row(ptr noundef %0) #30
  br label %129

129:                                              ; preds = %125, %111
  %130 = phi i32 [ 0, %111 ], [ 1, %125 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  ret i32 %130
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind optsize uwtable
define internal void @jinit_color_converter(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 24) #28
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  store ptr %5, ptr %6, align 8, !tbaa !136
  store ptr @null_method, ptr %5, align 8, !tbaa !267
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !75
  switch i32 %8, label %21 [
    i32 1, label %9
    i32 2, label %13
    i32 3, label %13
    i32 4, label %17
    i32 5, label %17
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !83
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %29, label %25

13:                                               ; preds = %1, %1
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !83
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %29, label %25

17:                                               ; preds = %1, %1
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !83
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %29, label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !83
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %17, %13, %9
  %26 = load ptr, ptr %0, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 7, ptr %27, align 8, !tbaa !16
  %28 = load ptr, ptr %26, align 8, !tbaa !20
  tail call void %28(ptr noundef nonnull %0) #28
  br label %29

29:                                               ; preds = %25, %21, %17, %13, %9
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !76
  switch i32 %31, label %122 [
    i32 1, label %32
    i32 2, label %52
    i32 3, label %69
    i32 4, label %87
    i32 5, label %104
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %34 = load i32, ptr %33, align 4, !tbaa !79
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8, !tbaa !15
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 5
  store i32 8, ptr %38, align 8, !tbaa !16
  %39 = load ptr, ptr %37, align 8, !tbaa !20
  tail call void %39(ptr noundef nonnull %0) #28
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, ptr %7, align 4, !tbaa !75
  switch i32 %41, label %48 [
    i32 1, label %42
    i32 2, label %44
    i32 3, label %46
  ]

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @grayscale_convert, ptr %43, align 8, !tbaa !269
  br label %137

44:                                               ; preds = %40
  store ptr @rgb_ycc_start, ptr %5, align 8, !tbaa !267
  %45 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @rgb_gray_convert, ptr %45, align 8, !tbaa !269
  br label %137

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @grayscale_convert, ptr %47, align 8, !tbaa !269
  br label %137

48:                                               ; preds = %40
  %49 = load ptr, ptr %0, align 8, !tbaa !15
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 5
  store i32 25, ptr %50, align 8, !tbaa !16
  %51 = load ptr, ptr %49, align 8, !tbaa !20
  tail call void %51(ptr noundef nonnull %0) #28
  br label %137

52:                                               ; preds = %29
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %54 = load i32, ptr %53, align 4, !tbaa !79
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8, !tbaa !15
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 5
  store i32 8, ptr %58, align 8, !tbaa !16
  %59 = load ptr, ptr %57, align 8, !tbaa !20
  tail call void %59(ptr noundef nonnull %0) #28
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, ptr %7, align 4, !tbaa !75
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %64, align 8, !tbaa !269
  br label %137

65:                                               ; preds = %60
  %66 = load ptr, ptr %0, align 8, !tbaa !15
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 5
  store i32 25, ptr %67, align 8, !tbaa !16
  %68 = load ptr, ptr %66, align 8, !tbaa !20
  tail call void %68(ptr noundef nonnull %0) #28
  br label %137

69:                                               ; preds = %29
  %70 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %71 = load i32, ptr %70, align 4, !tbaa !79
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %0, align 8, !tbaa !15
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 5
  store i32 8, ptr %75, align 8, !tbaa !16
  %76 = load ptr, ptr %74, align 8, !tbaa !20
  tail call void %76(ptr noundef nonnull %0) #28
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, ptr %7, align 4, !tbaa !75
  switch i32 %78, label %83 [
    i32 2, label %79
    i32 3, label %81
  ]

79:                                               ; preds = %77
  store ptr @rgb_ycc_start, ptr %5, align 8, !tbaa !267
  %80 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @rgb_ycc_convert, ptr %80, align 8, !tbaa !269
  br label %137

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %82, align 8, !tbaa !269
  br label %137

83:                                               ; preds = %77
  %84 = load ptr, ptr %0, align 8, !tbaa !15
  %85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 5
  store i32 25, ptr %85, align 8, !tbaa !16
  %86 = load ptr, ptr %84, align 8, !tbaa !20
  tail call void %86(ptr noundef nonnull %0) #28
  br label %137

87:                                               ; preds = %29
  %88 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %89 = load i32, ptr %88, align 4, !tbaa !79
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %0, align 8, !tbaa !15
  %93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 5
  store i32 8, ptr %93, align 8, !tbaa !16
  %94 = load ptr, ptr %92, align 8, !tbaa !20
  tail call void %94(ptr noundef nonnull %0) #28
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32, ptr %7, align 4, !tbaa !75
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %99, align 8, !tbaa !269
  br label %137

100:                                              ; preds = %95
  %101 = load ptr, ptr %0, align 8, !tbaa !15
  %102 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %101, i64 0, i32 5
  store i32 25, ptr %102, align 8, !tbaa !16
  %103 = load ptr, ptr %101, align 8, !tbaa !20
  tail call void %103(ptr noundef nonnull %0) #28
  br label %137

104:                                              ; preds = %29
  %105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %106 = load i32, ptr %105, align 4, !tbaa !79
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %0, align 8, !tbaa !15
  %110 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i64 0, i32 5
  store i32 8, ptr %110, align 8, !tbaa !16
  %111 = load ptr, ptr %109, align 8, !tbaa !20
  tail call void %111(ptr noundef nonnull %0) #28
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32, ptr %7, align 4, !tbaa !75
  switch i32 %113, label %118 [
    i32 4, label %114
    i32 5, label %116
  ]

114:                                              ; preds = %112
  store ptr @rgb_ycc_start, ptr %5, align 8, !tbaa !267
  %115 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @cmyk_ycck_convert, ptr %115, align 8, !tbaa !269
  br label %137

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %117, align 8, !tbaa !269
  br label %137

118:                                              ; preds = %112
  %119 = load ptr, ptr %0, align 8, !tbaa !15
  %120 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %119, i64 0, i32 5
  store i32 25, ptr %120, align 8, !tbaa !16
  %121 = load ptr, ptr %119, align 8, !tbaa !20
  tail call void %121(ptr noundef nonnull %0) #28
  br label %137

122:                                              ; preds = %29
  %123 = load i32, ptr %7, align 4, !tbaa !75
  %124 = icmp eq i32 %31, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %127 = load i32, ptr %126, align 4, !tbaa !79
  %128 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %129 = load i32, ptr %128, align 8, !tbaa !83
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %125, %122
  %132 = load ptr, ptr %0, align 8, !tbaa !15
  %133 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %132, i64 0, i32 5
  store i32 25, ptr %133, align 8, !tbaa !16
  %134 = load ptr, ptr %132, align 8, !tbaa !20
  tail call void %134(ptr noundef nonnull %0) #28
  br label %135

135:                                              ; preds = %131, %125
  %136 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %136, align 8, !tbaa !269
  br label %137

137:                                              ; preds = %135, %118, %116, %114, %100, %98, %83, %81, %79, %65, %63, %48, %46, %44, %42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @null_method(ptr nocapture %0) #11 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @grayscale_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #12 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !112
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !83
  %12 = icmp eq i32 %9, 0
  %13 = sext i32 %11 to i64
  %14 = zext i32 %9 to i64
  br label %17

15:                                               ; preds = %30, %17
  %16 = icmp sgt i32 %18, 1
  br i1 %16, label %17, label %38, !llvm.loop !270

17:                                               ; preds = %15, %7
  %18 = phi i32 [ %4, %7 ], [ %21, %15 ]
  %19 = phi ptr [ %1, %7 ], [ %22, %15 ]
  %20 = phi i32 [ %3, %7 ], [ %27, %15 ]
  %21 = add nsw i32 %18, -1
  %22 = getelementptr inbounds ptr, ptr %19, i64 1
  %23 = load ptr, ptr %2, align 8, !tbaa !25
  %24 = zext i32 %20 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  %27 = add i32 %20, 1
  br i1 %12, label %15, label %28

28:                                               ; preds = %17
  %29 = load ptr, ptr %19, align 8, !tbaa !25
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ 0, %28 ], [ %36, %30 ]
  %32 = phi ptr [ %29, %28 ], [ %35, %30 ]
  %33 = load i8, ptr %32, align 1, !tbaa !19
  %34 = getelementptr inbounds i8, ptr %26, i64 %31
  store i8 %33, ptr %34, align 1, !tbaa !19
  %35 = getelementptr inbounds i8, ptr %32, i64 %13
  %36 = add nuw nsw i64 %31, 1
  %37 = icmp eq i64 %36, %14
  br i1 %37, label %15, label %30, !llvm.loop !271

38:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @rgb_ycc_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call ptr %6(ptr noundef %0, i32 noundef 1, i64 noundef 16384) #28
  %8 = getelementptr inbounds %struct.my_color_converter, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !272
  br label %9

9:                                                ; preds = %9, %1
  %10 = phi i64 [ 0, %1 ], [ %36, %9 ]
  %11 = mul nuw nsw i64 %10, 19595
  %12 = getelementptr inbounds i64, ptr %7, i64 %10
  store i64 %11, ptr %12, align 8, !tbaa !273
  %13 = mul nuw nsw i64 %10, 38470
  %14 = add nuw nsw i64 %10, 256
  %15 = getelementptr inbounds i64, ptr %7, i64 %14
  store i64 %13, ptr %15, align 8, !tbaa !273
  %16 = mul nuw nsw i64 %10, 7471
  %17 = add nuw nsw i64 %16, 32768
  %18 = add nuw nsw i64 %10, 512
  %19 = getelementptr inbounds i64, ptr %7, i64 %18
  store i64 %17, ptr %19, align 8, !tbaa !273
  %20 = mul nsw i64 %10, -11059
  %21 = add nuw nsw i64 %10, 768
  %22 = getelementptr inbounds i64, ptr %7, i64 %21
  store i64 %20, ptr %22, align 8, !tbaa !273
  %23 = mul nsw i64 %10, -21709
  %24 = add nuw nsw i64 %10, 1024
  %25 = getelementptr inbounds i64, ptr %7, i64 %24
  store i64 %23, ptr %25, align 8, !tbaa !273
  %26 = shl nuw nsw i64 %10, 15
  %27 = add nuw nsw i64 %26, 8421375
  %28 = add nuw nsw i64 %10, 1280
  %29 = getelementptr inbounds i64, ptr %7, i64 %28
  store i64 %27, ptr %29, align 8, !tbaa !273
  %30 = mul nsw i64 %10, -27439
  %31 = add nuw nsw i64 %10, 1536
  %32 = getelementptr inbounds i64, ptr %7, i64 %31
  store i64 %30, ptr %32, align 8, !tbaa !273
  %33 = mul nsw i64 %10, -5329
  %34 = add nuw nsw i64 %10, 1792
  %35 = getelementptr inbounds i64, ptr %7, i64 %34
  store i64 %33, ptr %35, align 8, !tbaa !273
  %36 = add nuw nsw i64 %10, 1
  %37 = icmp eq i64 %36, 256
  br i1 %37, label %38, label %9, !llvm.loop !274

38:                                               ; preds = %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @rgb_gray_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #12 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = getelementptr inbounds %struct.my_color_converter, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !272
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !112
  %14 = icmp eq i32 %13, 0
  %15 = zext i32 %13 to i64
  br label %18

16:                                               ; preds = %31, %18
  %17 = icmp sgt i32 %19, 1
  br i1 %17, label %18, label %58, !llvm.loop !275

18:                                               ; preds = %16, %11
  %19 = phi i32 [ %4, %11 ], [ %22, %16 ]
  %20 = phi ptr [ %1, %11 ], [ %23, %16 ]
  %21 = phi i32 [ %3, %11 ], [ %28, %16 ]
  %22 = add nsw i32 %19, -1
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load ptr, ptr %2, align 8, !tbaa !25
  %25 = zext i32 %21 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !25
  %28 = add i32 %21, 1
  br i1 %14, label %16, label %29

29:                                               ; preds = %18
  %30 = load ptr, ptr %20, align 8, !tbaa !25
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %56, %31 ]
  %33 = phi ptr [ %30, %29 ], [ %41, %31 ]
  %34 = load i8, ptr %33, align 1, !tbaa !19
  %35 = getelementptr inbounds i8, ptr %33, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !19
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i8, ptr %33, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !19
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i8, ptr %33, i64 3
  %42 = zext i8 %34 to i64
  %43 = getelementptr inbounds i64, ptr %9, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !273
  %45 = or i64 %37, 256
  %46 = getelementptr inbounds i64, ptr %9, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !273
  %48 = add nsw i64 %47, %44
  %49 = or i64 %40, 512
  %50 = getelementptr inbounds i64, ptr %9, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !273
  %52 = add nsw i64 %48, %51
  %53 = lshr i64 %52, 16
  %54 = trunc i64 %53 to i8
  %55 = getelementptr inbounds i8, ptr %27, i64 %32
  store i8 %54, ptr %55, align 1, !tbaa !19
  %56 = add nuw nsw i64 %32, 1
  %57 = icmp eq i64 %56, %15
  br i1 %57, label %16, label %31, !llvm.loop !276

58:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @null_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #12 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !112
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %11 = load i32, ptr %10, align 4, !tbaa !79
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
  %27 = load ptr, ptr %26, align 8, !tbaa !25
  %28 = getelementptr inbounds ptr, ptr %27, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  br i1 %13, label %41, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %19, align 8, !tbaa !25
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %39, %32 ]
  %34 = phi ptr [ %31, %30 ], [ %38, %32 ]
  %35 = getelementptr inbounds i8, ptr %34, i64 %25
  %36 = load i8, ptr %35, align 1, !tbaa !19
  %37 = getelementptr inbounds i8, ptr %29, i64 %33
  store i8 %36, ptr %37, align 1, !tbaa !19
  %38 = getelementptr inbounds i8, ptr %34, i64 %14
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %16
  br i1 %40, label %41, label %32, !llvm.loop !277

41:                                               ; preds = %32, %24
  %42 = add nuw nsw i64 %25, 1
  %43 = icmp eq i64 %42, %15
  br i1 %43, label %44, label %24, !llvm.loop !278

44:                                               ; preds = %41, %17
  %45 = getelementptr inbounds ptr, ptr %19, i64 1
  %46 = add i32 %20, 1
  %47 = icmp sgt i32 %18, 1
  br i1 %47, label %17, label %48, !llvm.loop !279

48:                                               ; preds = %44, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @rgb_ycc_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #12 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = getelementptr inbounds %struct.my_color_converter, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !272
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %103

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !112
  %14 = getelementptr inbounds ptr, ptr %2, i64 1
  %15 = getelementptr inbounds ptr, ptr %2, i64 2
  %16 = icmp eq i32 %13, 0
  %17 = zext i32 %13 to i64
  br label %20

18:                                               ; preds = %39, %20
  %19 = icmp sgt i32 %21, 1
  br i1 %19, label %20, label %103, !llvm.loop !280

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %4, %11 ], [ %24, %18 ]
  %22 = phi ptr [ %1, %11 ], [ %25, %18 ]
  %23 = phi i32 [ %3, %11 ], [ %36, %18 ]
  %24 = add nsw i32 %21, -1
  %25 = getelementptr inbounds ptr, ptr %22, i64 1
  %26 = load ptr, ptr %2, align 8, !tbaa !25
  %27 = zext i32 %23 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = load ptr, ptr %14, align 8, !tbaa !25
  %31 = getelementptr inbounds ptr, ptr %30, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !25
  %33 = load ptr, ptr %15, align 8, !tbaa !25
  %34 = getelementptr inbounds ptr, ptr %33, i64 %27
  %35 = load ptr, ptr %34, align 8, !tbaa !25
  %36 = add i32 %23, 1
  br i1 %16, label %18, label %37

37:                                               ; preds = %20
  %38 = load ptr, ptr %22, align 8, !tbaa !25
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %101, %39 ]
  %41 = phi ptr [ %38, %37 ], [ %50, %39 ]
  %42 = load i8, ptr %41, align 1, !tbaa !19
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds i8, ptr %41, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !19
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds i8, ptr %41, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !19
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %41, i64 3
  %51 = zext i8 %42 to i64
  %52 = getelementptr inbounds i64, ptr %9, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !273
  %54 = or i32 %46, 256
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, ptr %9, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !273
  %58 = add nsw i64 %57, %53
  %59 = or i32 %49, 512
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, ptr %9, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !273
  %63 = add nsw i64 %58, %62
  %64 = lshr i64 %63, 16
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds i8, ptr %29, i64 %40
  store i8 %65, ptr %66, align 1, !tbaa !19
  %67 = or i32 %43, 768
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, ptr %9, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !273
  %71 = or i32 %46, 1024
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, ptr %9, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !273
  %75 = add nsw i64 %74, %70
  %76 = or i32 %49, 1280
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i64, ptr %9, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !273
  %80 = add nsw i64 %75, %79
  %81 = lshr i64 %80, 16
  %82 = trunc i64 %81 to i8
  %83 = getelementptr inbounds i8, ptr %32, i64 %40
  store i8 %82, ptr %83, align 1, !tbaa !19
  %84 = or i32 %43, 1280
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, ptr %9, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !273
  %88 = or i32 %46, 1536
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, ptr %9, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !273
  %92 = add nsw i64 %91, %87
  %93 = or i32 %49, 1792
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, ptr %9, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !273
  %97 = add nsw i64 %92, %96
  %98 = lshr i64 %97, 16
  %99 = trunc i64 %98 to i8
  %100 = getelementptr inbounds i8, ptr %35, i64 %40
  store i8 %99, ptr %100, align 1, !tbaa !19
  %101 = add nuw nsw i64 %40, 1
  %102 = icmp eq i64 %101, %17
  br i1 %102, label %18, label %39, !llvm.loop !281

103:                                              ; preds = %18, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cmyk_ycck_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #12 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = getelementptr inbounds %struct.my_color_converter, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !272
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %113

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !112
  %14 = getelementptr inbounds ptr, ptr %2, i64 1
  %15 = getelementptr inbounds ptr, ptr %2, i64 2
  %16 = getelementptr inbounds ptr, ptr %2, i64 3
  %17 = icmp eq i32 %13, 0
  %18 = zext i32 %13 to i64
  br label %21

19:                                               ; preds = %43, %21
  %20 = icmp sgt i32 %22, 1
  br i1 %20, label %21, label %113, !llvm.loop !282

21:                                               ; preds = %19, %11
  %22 = phi i32 [ %4, %11 ], [ %25, %19 ]
  %23 = phi ptr [ %1, %11 ], [ %26, %19 ]
  %24 = phi i32 [ %3, %11 ], [ %40, %19 ]
  %25 = add nsw i32 %22, -1
  %26 = getelementptr inbounds ptr, ptr %23, i64 1
  %27 = load ptr, ptr %2, align 8, !tbaa !25
  %28 = zext i32 %24 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !25
  %31 = load ptr, ptr %14, align 8, !tbaa !25
  %32 = getelementptr inbounds ptr, ptr %31, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  %34 = load ptr, ptr %15, align 8, !tbaa !25
  %35 = getelementptr inbounds ptr, ptr %34, i64 %28
  %36 = load ptr, ptr %35, align 8, !tbaa !25
  %37 = load ptr, ptr %16, align 8, !tbaa !25
  %38 = getelementptr inbounds ptr, ptr %37, i64 %28
  %39 = load ptr, ptr %38, align 8, !tbaa !25
  %40 = add i32 %24, 1
  br i1 %17, label %19, label %41

41:                                               ; preds = %21
  %42 = load ptr, ptr %23, align 8, !tbaa !25
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i64 [ 0, %41 ], [ %111, %43 ]
  %45 = phi ptr [ %42, %41 ], [ %60, %43 ]
  %46 = load i8, ptr %45, align 1, !tbaa !19
  %47 = xor i8 %46, -1
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds i8, ptr %45, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !19
  %51 = xor i8 %50, -1
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds i8, ptr %45, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !19
  %55 = xor i8 %54, -1
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds i8, ptr %45, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !19
  %59 = getelementptr inbounds i8, ptr %39, i64 %44
  store i8 %58, ptr %59, align 1, !tbaa !19
  %60 = getelementptr inbounds i8, ptr %45, i64 4
  %61 = zext i8 %47 to i64
  %62 = getelementptr inbounds i64, ptr %9, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !273
  %64 = or i32 %52, 256
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, ptr %9, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !273
  %68 = add nsw i64 %67, %63
  %69 = or i32 %56, 512
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, ptr %9, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !273
  %73 = add nsw i64 %68, %72
  %74 = lshr i64 %73, 16
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds i8, ptr %30, i64 %44
  store i8 %75, ptr %76, align 1, !tbaa !19
  %77 = or i32 %48, 768
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, ptr %9, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !273
  %81 = or i32 %52, 1024
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, ptr %9, i64 %82
  %84 = load i64, ptr %83, align 8, !tbaa !273
  %85 = add nsw i64 %84, %80
  %86 = or i32 %56, 1280
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, ptr %9, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !273
  %90 = add nsw i64 %85, %89
  %91 = lshr i64 %90, 16
  %92 = trunc i64 %91 to i8
  %93 = getelementptr inbounds i8, ptr %33, i64 %44
  store i8 %92, ptr %93, align 1, !tbaa !19
  %94 = or i32 %48, 1280
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i64, ptr %9, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !273
  %98 = or i32 %52, 1536
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, ptr %9, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !273
  %102 = add nsw i64 %101, %97
  %103 = or i32 %56, 1792
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, ptr %9, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !273
  %107 = add nsw i64 %102, %106
  %108 = lshr i64 %107, 16
  %109 = trunc i64 %108 to i8
  %110 = getelementptr inbounds i8, ptr %36, i64 %44
  store i8 %109, ptr %110, align 1, !tbaa !19
  %111 = add nuw nsw i64 %44, 1
  %112 = icmp eq i64 %111, %18
  br i1 %112, label %19, label %43, !llvm.loop !283

113:                                              ; preds = %19, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jinit_downsampler(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 104) #28
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  store ptr %5, ptr %6, align 8, !tbaa !139
  store ptr @start_pass_downsample, ptr %5, align 8, !tbaa !284
  %7 = getelementptr inbounds %struct.jpeg_downsampler, ptr %5, i64 0, i32 1
  store ptr @sep_downsample, ptr %7, align 8, !tbaa !286
  %8 = getelementptr inbounds %struct.jpeg_downsampler, ptr %5, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !287
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 4, !tbaa !288
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 23, ptr %14, align 8, !tbaa !16
  %15 = load ptr, ptr %13, align 8, !tbaa !20
  tail call void %15(ptr noundef nonnull %0) #28
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %18 = load i32, ptr %17, align 4, !tbaa !79
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %99

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  br label %26

26:                                               ; preds = %81, %20
  %27 = phi i32 [ %18, %20 ], [ %82, %81 ]
  %28 = phi i64 [ 0, %20 ], [ %84, %81 ]
  %29 = phi i32 [ 1, %20 ], [ %83, %81 ]
  %30 = phi ptr [ %22, %20 ], [ %85, %81 ]
  %31 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !115
  %33 = load i32, ptr %23, align 8, !tbaa !113
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %30, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !116
  %38 = load i32, ptr %24, align 4, !tbaa !114
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, ptr %25, align 8, !tbaa !289
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.my_downsampler, ptr %5, i64 0, i32 1, i64 %28
  br i1 %42, label %45, label %44

44:                                               ; preds = %40
  store ptr @fullsize_smooth_downsample, ptr %43, align 8, !tbaa !25
  store i32 1, ptr %8, align 8, !tbaa !287
  br label %81

45:                                               ; preds = %40
  store ptr @fullsize_downsample, ptr %43, align 8, !tbaa !25
  br label %81

46:                                               ; preds = %35, %26
  %47 = shl nsw i32 %32, 1
  %48 = icmp eq i32 %47, %33
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %30, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !116
  %52 = load i32, ptr %24, align 4, !tbaa !114
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.my_downsampler, ptr %5, i64 0, i32 1, i64 %28
  store ptr @h2v1_downsample, ptr %55, align 8, !tbaa !25
  br label %81

56:                                               ; preds = %49
  %57 = shl nsw i32 %51, 1
  %58 = icmp eq i32 %57, %52
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, ptr %25, align 8, !tbaa !289
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.my_downsampler, ptr %5, i64 0, i32 1, i64 %28
  br i1 %61, label %64, label %63

63:                                               ; preds = %59
  store ptr @h2v2_smooth_downsample, ptr %62, align 8, !tbaa !25
  store i32 1, ptr %8, align 8, !tbaa !287
  br label %81

64:                                               ; preds = %59
  store ptr @h2v2_downsample, ptr %62, align 8, !tbaa !25
  br label %81

65:                                               ; preds = %56, %46
  %66 = srem i32 %33, %32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, ptr %24, align 4, !tbaa !114
  %70 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %30, i64 0, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !116
  %72 = srem i32 %69, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.my_downsampler, ptr %5, i64 0, i32 1, i64 %28
  store ptr @int_downsample, ptr %75, align 8, !tbaa !25
  br label %81

76:                                               ; preds = %68, %65
  %77 = load ptr, ptr %0, align 8, !tbaa !15
  %78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i64 0, i32 5
  store i32 37, ptr %78, align 8, !tbaa !16
  %79 = load ptr, ptr %77, align 8, !tbaa !20
  tail call void %79(ptr noundef nonnull %0) #28
  %80 = load i32, ptr %17, align 4, !tbaa !79
  br label %81

81:                                               ; preds = %76, %74, %64, %63, %54, %45, %44
  %82 = phi i32 [ %27, %44 ], [ %27, %45 ], [ %27, %54 ], [ %27, %63 ], [ %27, %64 ], [ %27, %74 ], [ %80, %76 ]
  %83 = phi i32 [ %29, %44 ], [ %29, %45 ], [ 0, %54 ], [ %29, %63 ], [ %29, %64 ], [ 0, %74 ], [ %29, %76 ]
  %84 = add nuw nsw i64 %28, 1
  %85 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %30, i64 1
  %86 = sext i32 %82 to i64
  %87 = icmp slt i64 %84, %86
  br i1 %87, label %26, label %88, !llvm.loop !290

88:                                               ; preds = %81
  %.lcssa = phi i32 [ %83, %81 ]
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  %90 = load i32, ptr %89, align 8, !tbaa !289
  %91 = icmp eq i32 %90, 0
  %92 = icmp ne i32 %.lcssa, 0
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %0, align 8, !tbaa !15
  %96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i64 0, i32 5
  store i32 98, ptr %96, align 8, !tbaa !16
  %97 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !58
  tail call void %98(ptr noundef nonnull %0, i32 noundef 0) #28
  br label %99

99:                                               ; preds = %94, %88, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @start_pass_downsample(ptr nocapture %0) #11 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @sep_downsample(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !79
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = zext i32 %2 to i64
  br label %15

15:                                               ; preds = %15, %11
  %16 = phi i64 [ 0, %11 ], [ %30, %15 ]
  %17 = phi ptr [ %13, %11 ], [ %31, %15 ]
  %18 = getelementptr inbounds ptr, ptr %1, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !25
  %20 = getelementptr inbounds ptr, ptr %19, i64 %14
  %21 = getelementptr inbounds ptr, ptr %3, i64 %16
  %22 = load ptr, ptr %21, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %17, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !116
  %25 = mul i32 %24, %4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = getelementptr inbounds %struct.my_downsampler, ptr %7, i64 0, i32 1, i64 %16
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  tail call void %29(ptr noundef nonnull %0, ptr noundef %17, ptr noundef %20, ptr noundef %27) #28
  %30 = add nuw nsw i64 %16, 1
  %31 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %17, i64 1
  %32 = load i32, ptr %8, align 4, !tbaa !79
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %15, label %35, !llvm.loop !291

35:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @fullsize_smooth_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #13 {
  %5 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !120
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds ptr, ptr %2, i64 -1
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %10 = load i32, ptr %9, align 4, !tbaa !114
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !112
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
  %28 = load ptr, ptr %27, align 8, !tbaa !25
  %29 = getelementptr inbounds i8, ptr %28, i64 %19
  %30 = getelementptr inbounds i8, ptr %29, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %29, i8 %31, i64 %23, i1 false), !tbaa !19
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %24
  br i1 %33, label %34, label %25, !llvm.loop !292

34:                                               ; preds = %25, %4
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  %36 = load i32, ptr %35, align 8, !tbaa !289
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 9
  %39 = sub nsw i64 65536, %38
  %40 = shl nsw i32 %36, 6
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !116
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %143

45:                                               ; preds = %34
  %46 = add i32 %7, -2
  br label %47

47:                                               ; preds = %127, %45
  %48 = phi i64 [ 0, %45 ], [ %56, %127 ]
  %49 = getelementptr inbounds ptr, ptr %3, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !25
  %51 = getelementptr inbounds ptr, ptr %2, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !25
  %53 = add nsw i64 %48, -1
  %54 = getelementptr inbounds ptr, ptr %2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !25
  %56 = add nuw nsw i64 %48, 1
  %57 = getelementptr inbounds ptr, ptr %2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !25
  %59 = getelementptr inbounds i8, ptr %55, i64 1
  %60 = load i8, ptr %55, align 1, !tbaa !19
  %61 = zext i8 %60 to i32
  %62 = getelementptr inbounds i8, ptr %58, i64 1
  %63 = load i8, ptr %58, align 1, !tbaa !19
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %64, %61
  %66 = load i8, ptr %52, align 1, !tbaa !19
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %65, %67
  %69 = getelementptr inbounds i8, ptr %52, i64 1
  %70 = zext i8 %66 to i64
  %71 = load i8, ptr %59, align 1, !tbaa !19
  %72 = zext i8 %71 to i32
  %73 = load i8, ptr %62, align 1, !tbaa !19
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %74, %72
  %76 = load i8, ptr %69, align 1, !tbaa !19
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %75, %77
  %79 = zext i32 %78 to i64
  %80 = shl nuw nsw i32 %68, 1
  %81 = zext i32 %80 to i64
  %82 = sub nsw i64 %81, %70
  %83 = add nsw i64 %82, %79
  %84 = mul nsw i64 %39, %70
  %85 = mul i64 %83, %41
  %86 = add nsw i64 %84, 32768
  %87 = add i64 %86, %85
  %88 = lshr i64 %87, 16
  %89 = trunc i64 %88 to i8
  store i8 %89, ptr %50, align 1, !tbaa !19
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
  %100 = load i8, ptr %98, align 1, !tbaa !19
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i8, ptr %97, i64 1
  %103 = getelementptr inbounds i8, ptr %96, i64 1
  %104 = load i8, ptr %102, align 1, !tbaa !19
  %105 = zext i8 %104 to i32
  %106 = load i8, ptr %103, align 1, !tbaa !19
  %107 = zext i8 %106 to i32
  %108 = add nuw nsw i32 %107, %105
  %109 = load i8, ptr %99, align 1, !tbaa !19
  %110 = zext i8 %109 to i32
  %111 = add nuw nsw i32 %108, %110
  %112 = zext i32 %93 to i64
  %113 = zext i32 %94 to i64
  %114 = zext i32 %111 to i64
  %115 = add nuw nsw i64 %112, %113
  %116 = sub nsw i64 %115, %101
  %117 = add nsw i64 %116, %114
  %118 = mul nsw i64 %39, %101
  %119 = mul i64 %117, %41
  %120 = add nsw i64 %118, 32768
  %121 = add i64 %120, %119
  %122 = lshr i64 %121, 16
  %123 = trunc i64 %122 to i8
  store i8 %123, ptr %92, align 1, !tbaa !19
  %124 = add i32 %95, -1
  %125 = getelementptr inbounds i8, ptr %92, i64 1
  %126 = icmp eq i32 %124, 0
  br i1 %126, label %127, label %91, !llvm.loop !293

127:                                              ; preds = %91
  %.lcssa3 = phi ptr [ %99, %91 ]
  %.lcssa2 = phi i32 [ %111, %91 ]
  %.lcssa1 = phi i64 [ %113, %91 ]
  %.lcssa = phi ptr [ %125, %91 ]
  %128 = load i8, ptr %.lcssa3, align 1, !tbaa !19
  %129 = zext i8 %128 to i64
  %130 = shl nuw nsw i32 %.lcssa2, 1
  %131 = zext i32 %130 to i64
  %132 = add nuw nsw i64 %131, %.lcssa1
  %133 = sub nsw i64 %132, %129
  %134 = mul nsw i64 %39, %129
  %135 = mul i64 %133, %41
  %136 = add nsw i64 %134, 32768
  %137 = add i64 %136, %135
  %138 = lshr i64 %137, 16
  %139 = trunc i64 %138 to i8
  store i8 %139, ptr %.lcssa, align 1, !tbaa !19
  %140 = load i32, ptr %42, align 4, !tbaa !116
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %56, %141
  br i1 %142, label %47, label %143, !llvm.loop !294

143:                                              ; preds = %127, %34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @fullsize_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %6 = load i32, ptr %5, align 4, !tbaa !114
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !112
  tail call void @jcopy_sample_rows(ptr noundef %2, i32 noundef 0, ptr noundef %3, i32 noundef 0, i32 noundef %6, i32 noundef %8) #28
  %9 = load i32, ptr %5, align 4, !tbaa !114
  %10 = load i32, ptr %7, align 8, !tbaa !112
  %11 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !120
  %13 = shl i32 %12, 3
  %14 = sub i32 %13, %10
  %15 = icmp sgt i32 %14, 0
  %16 = icmp sgt i32 %9, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = zext i32 %10 to i64
  %20 = xor i32 %10, -1
  %21 = add i32 %13, %20
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %22, 1
  %24 = zext i32 %9 to i64
  br label %25

25:                                               ; preds = %25, %18
  %26 = phi i64 [ 0, %18 ], [ %32, %25 ]
  %27 = getelementptr inbounds ptr, ptr %3, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !25
  %29 = getelementptr inbounds i8, ptr %28, i64 %19
  %30 = getelementptr inbounds i8, ptr %29, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %29, i8 %31, i64 %23, i1 false), !tbaa !19
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %24
  br i1 %33, label %34, label %25, !llvm.loop !292

34:                                               ; preds = %25, %4
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v1_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #13 {
  %5 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !120
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %9 = load i32, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !112
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
  %27 = load ptr, ptr %26, align 8, !tbaa !25
  %28 = getelementptr inbounds i8, ptr %27, i64 %18
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, i8 %30, i64 %22, i1 false), !tbaa !19
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !292

33:                                               ; preds = %24, %4
  %34 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !116
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
  %44 = load ptr, ptr %43, align 8, !tbaa !25
  %45 = getelementptr inbounds ptr, ptr %3, i64 %41
  %46 = load ptr, ptr %45, align 8, !tbaa !25
  br label %47

47:                                               ; preds = %47, %42
  %48 = phi i32 [ %62, %47 ], [ 0, %42 ]
  %49 = phi ptr [ %61, %47 ], [ %46, %42 ]
  %50 = phi ptr [ %63, %47 ], [ %44, %42 ]
  %51 = phi i32 [ %64, %47 ], [ 0, %42 ]
  %52 = load i8, ptr %50, align 1, !tbaa !19
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds i8, ptr %50, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !19
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %48, %53
  %58 = add nuw nsw i32 %57, %56
  %59 = lshr i32 %58, 1
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds i8, ptr %49, i64 1
  store i8 %60, ptr %49, align 1, !tbaa !19
  %62 = xor i32 %48, 1
  %63 = getelementptr inbounds i8, ptr %50, i64 2
  %64 = add nuw i32 %51, 1
  %65 = icmp eq i32 %64, %7
  br i1 %65, label %66, label %47, !llvm.loop !295

66:                                               ; preds = %47
  %67 = load i32, ptr %34, align 4, !tbaa !116
  br label %68

68:                                               ; preds = %66, %39
  %69 = phi i32 [ %67, %66 ], [ %40, %39 ]
  %70 = add nuw nsw i64 %41, 1
  %71 = sext i32 %69 to i64
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %39, label %73, !llvm.loop !296

73:                                               ; preds = %68, %33
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v2_smooth_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #13 {
  %5 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !120
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds ptr, ptr %2, i64 -1
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %10 = load i32, ptr %9, align 4, !tbaa !114
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !112
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
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = getelementptr inbounds i8, ptr %29, i64 %20
  %31 = getelementptr inbounds i8, ptr %30, i64 -1
  %32 = load i8, ptr %31, align 1, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %30, i8 %32, i64 %24, i1 false), !tbaa !19
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, %25
  br i1 %34, label %35, label %26, !llvm.loop !292

35:                                               ; preds = %26, %4
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  %37 = load i32, ptr %36, align 8, !tbaa !289
  %38 = mul i32 %37, -80
  %39 = add i32 %38, 16384
  %40 = zext i32 %39 to i64
  %41 = shl nsw i32 %37, 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !116
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %256

46:                                               ; preds = %35
  %47 = add i32 %7, -2
  br label %48

48:                                               ; preds = %196, %46
  %49 = phi i64 [ 0, %46 ], [ %252, %196 ]
  %50 = phi i64 [ 0, %46 ], [ %61, %196 ]
  %51 = getelementptr inbounds ptr, ptr %3, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !25
  %53 = getelementptr inbounds ptr, ptr %2, i64 %50
  %54 = load ptr, ptr %53, align 8, !tbaa !25
  %55 = or i64 %50, 1
  %56 = getelementptr inbounds ptr, ptr %2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !25
  %58 = add nsw i64 %50, -1
  %59 = getelementptr inbounds ptr, ptr %2, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !25
  %61 = add nuw nsw i64 %50, 2
  %62 = getelementptr inbounds ptr, ptr %2, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !25
  %64 = load i8, ptr %54, align 1, !tbaa !19
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds i8, ptr %54, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !19
  %68 = zext i8 %67 to i32
  %69 = load i8, ptr %57, align 1, !tbaa !19
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds i8, ptr %57, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !19
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %70, %65
  %75 = add nuw nsw i32 %74, %68
  %76 = add nuw nsw i32 %75, %73
  %77 = zext i32 %76 to i64
  %78 = load i8, ptr %60, align 1, !tbaa !19
  %79 = zext i8 %78 to i32
  %80 = getelementptr inbounds i8, ptr %60, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !19
  %82 = zext i8 %81 to i32
  %83 = load i8, ptr %63, align 1, !tbaa !19
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds i8, ptr %63, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !19
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds i8, ptr %54, i64 2
  %89 = load i8, ptr %88, align 1, !tbaa !19
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds i8, ptr %57, i64 2
  %92 = load i8, ptr %91, align 1, !tbaa !19
  %93 = zext i8 %92 to i32
  %94 = add nuw nsw i32 %74, %79
  %95 = add nuw nsw i32 %94, %82
  %96 = add nuw nsw i32 %95, %84
  %97 = add nuw nsw i32 %96, %87
  %98 = add nuw nsw i32 %97, %90
  %99 = add nuw nsw i32 %98, %93
  %100 = zext i32 %99 to i64
  %101 = shl nuw nsw i64 %100, 1
  %102 = getelementptr inbounds i8, ptr %60, i64 2
  %103 = load i8, ptr %102, align 1, !tbaa !19
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds i8, ptr %63, i64 2
  %106 = load i8, ptr %105, align 1, !tbaa !19
  %107 = zext i8 %106 to i32
  %108 = add nuw nsw i32 %84, %79
  %109 = add nuw nsw i32 %108, %104
  %110 = add nuw nsw i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add nuw nsw i64 %101, %111
  %113 = mul nuw nsw i64 %77, %40
  %114 = mul i64 %112, %42
  %115 = add nuw nsw i64 %113, 32768
  %116 = add i64 %115, %114
  %117 = lshr i64 %116, 16
  %118 = trunc i64 %117 to i8
  store i8 %118, ptr %52, align 1, !tbaa !19
  %119 = getelementptr inbounds i8, ptr %52, i64 1
  br label %120

120:                                              ; preds = %120, %48
  %121 = phi ptr [ %119, %48 ], [ %194, %120 ]
  %122 = phi ptr [ %105, %48 ], [ %182, %120 ]
  %123 = phi ptr [ %102, %48 ], [ %174, %120 ]
  %124 = phi ptr [ %91, %48 ], [ %165, %120 ]
  %125 = phi ptr [ %88, %48 ], [ %157, %120 ]
  %126 = phi i32 [ %47, %48 ], [ %193, %120 ]
  %127 = load i8, ptr %125, align 1, !tbaa !19
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds i8, ptr %125, i64 1
  %130 = load i8, ptr %129, align 1, !tbaa !19
  %131 = zext i8 %130 to i64
  %132 = add nuw nsw i64 %131, %128
  %133 = load i8, ptr %124, align 1, !tbaa !19
  %134 = zext i8 %133 to i64
  %135 = add nuw nsw i64 %132, %134
  %136 = getelementptr inbounds i8, ptr %124, i64 1
  %137 = load i8, ptr %136, align 1, !tbaa !19
  %138 = zext i8 %137 to i64
  %139 = add nuw nsw i64 %135, %138
  %140 = load i8, ptr %123, align 1, !tbaa !19
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds i8, ptr %123, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !19
  %144 = zext i8 %143 to i64
  %145 = add nuw nsw i64 %144, %141
  %146 = load i8, ptr %122, align 1, !tbaa !19
  %147 = zext i8 %146 to i64
  %148 = add nuw nsw i64 %145, %147
  %149 = getelementptr inbounds i8, ptr %122, i64 1
  %150 = load i8, ptr %149, align 1, !tbaa !19
  %151 = zext i8 %150 to i64
  %152 = add nuw nsw i64 %148, %151
  %153 = getelementptr inbounds i8, ptr %125, i64 -1
  %154 = load i8, ptr %153, align 1, !tbaa !19
  %155 = zext i8 %154 to i64
  %156 = add nuw nsw i64 %152, %155
  %157 = getelementptr inbounds i8, ptr %125, i64 2
  %158 = load i8, ptr %157, align 1, !tbaa !19
  %159 = zext i8 %158 to i64
  %160 = add nuw nsw i64 %156, %159
  %161 = getelementptr inbounds i8, ptr %124, i64 -1
  %162 = load i8, ptr %161, align 1, !tbaa !19
  %163 = zext i8 %162 to i64
  %164 = add nuw nsw i64 %160, %163
  %165 = getelementptr inbounds i8, ptr %124, i64 2
  %166 = load i8, ptr %165, align 1, !tbaa !19
  %167 = zext i8 %166 to i64
  %168 = add nuw nsw i64 %164, %167
  %169 = shl nuw nsw i64 %168, 1
  %170 = and i64 %169, 8589934590
  %171 = getelementptr inbounds i8, ptr %123, i64 -1
  %172 = load i8, ptr %171, align 1, !tbaa !19
  %173 = zext i8 %172 to i64
  %174 = getelementptr inbounds i8, ptr %123, i64 2
  %175 = load i8, ptr %174, align 1, !tbaa !19
  %176 = zext i8 %175 to i64
  %177 = add nuw nsw i64 %176, %173
  %178 = getelementptr inbounds i8, ptr %122, i64 -1
  %179 = load i8, ptr %178, align 1, !tbaa !19
  %180 = zext i8 %179 to i64
  %181 = add nuw nsw i64 %177, %180
  %182 = getelementptr inbounds i8, ptr %122, i64 2
  %183 = load i8, ptr %182, align 1, !tbaa !19
  %184 = zext i8 %183 to i64
  %185 = add nuw nsw i64 %181, %170
  %186 = add nuw nsw i64 %185, %184
  %187 = mul nuw nsw i64 %139, %40
  %188 = mul i64 %186, %42
  %189 = add nuw nsw i64 %187, 32768
  %190 = add i64 %189, %188
  %191 = lshr i64 %190, 16
  %192 = trunc i64 %191 to i8
  store i8 %192, ptr %121, align 1, !tbaa !19
  %193 = add i32 %126, -1
  %194 = getelementptr inbounds i8, ptr %121, i64 1
  %195 = icmp eq i32 %193, 0
  br i1 %195, label %196, label %120, !llvm.loop !297

196:                                              ; preds = %120
  %.lcssa8 = phi ptr [ %122, %120 ]
  %.lcssa7 = phi ptr [ %123, %120 ]
  %.lcssa6 = phi ptr [ %124, %120 ]
  %.lcssa5 = phi ptr [ %125, %120 ]
  %.lcssa4 = phi ptr [ %157, %120 ]
  %.lcssa3 = phi ptr [ %165, %120 ]
  %.lcssa2 = phi ptr [ %174, %120 ]
  %.lcssa1 = phi ptr [ %182, %120 ]
  %.lcssa = phi ptr [ %194, %120 ]
  %197 = getelementptr inbounds i8, ptr %.lcssa5, i64 1
  %198 = getelementptr inbounds i8, ptr %.lcssa6, i64 1
  %199 = getelementptr inbounds i8, ptr %.lcssa7, i64 1
  %200 = getelementptr inbounds i8, ptr %.lcssa8, i64 1
  %201 = load i8, ptr %.lcssa4, align 1, !tbaa !19
  %202 = zext i8 %201 to i32
  %203 = getelementptr inbounds i8, ptr %.lcssa5, i64 3
  %204 = load i8, ptr %203, align 1, !tbaa !19
  %205 = zext i8 %204 to i32
  %206 = load i8, ptr %.lcssa3, align 1, !tbaa !19
  %207 = zext i8 %206 to i32
  %208 = getelementptr inbounds i8, ptr %.lcssa6, i64 3
  %209 = load i8, ptr %208, align 1, !tbaa !19
  %210 = zext i8 %209 to i32
  %211 = add nuw nsw i32 %210, %205
  %212 = add nuw nsw i32 %211, %202
  %213 = add nuw nsw i32 %212, %207
  %214 = zext i32 %213 to i64
  %215 = load i8, ptr %.lcssa2, align 1, !tbaa !19
  %216 = zext i8 %215 to i32
  %217 = getelementptr inbounds i8, ptr %.lcssa7, i64 3
  %218 = load i8, ptr %217, align 1, !tbaa !19
  %219 = zext i8 %218 to i32
  %220 = load i8, ptr %.lcssa1, align 1, !tbaa !19
  %221 = zext i8 %220 to i32
  %222 = getelementptr inbounds i8, ptr %.lcssa8, i64 3
  %223 = load i8, ptr %222, align 1, !tbaa !19
  %224 = zext i8 %223 to i32
  %225 = load i8, ptr %197, align 1, !tbaa !19
  %226 = zext i8 %225 to i32
  %227 = load i8, ptr %198, align 1, !tbaa !19
  %228 = zext i8 %227 to i32
  %229 = add nuw nsw i32 %211, %216
  %230 = add nuw nsw i32 %229, %219
  %231 = add nuw nsw i32 %230, %221
  %232 = add nuw nsw i32 %231, %224
  %233 = add nuw nsw i32 %232, %226
  %234 = add nuw nsw i32 %233, %228
  %235 = zext i32 %234 to i64
  %236 = shl nuw nsw i64 %235, 1
  %237 = load i8, ptr %199, align 1, !tbaa !19
  %238 = zext i8 %237 to i32
  %239 = load i8, ptr %200, align 1, !tbaa !19
  %240 = zext i8 %239 to i32
  %241 = add nuw nsw i32 %224, %219
  %242 = add nuw nsw i32 %241, %238
  %243 = add nuw nsw i32 %242, %240
  %244 = zext i32 %243 to i64
  %245 = add nuw nsw i64 %236, %244
  %246 = mul nuw nsw i64 %214, %40
  %247 = mul i64 %245, %42
  %248 = add nuw nsw i64 %246, 32768
  %249 = add i64 %248, %247
  %250 = lshr i64 %249, 16
  %251 = trunc i64 %250 to i8
  store i8 %251, ptr %.lcssa, align 1, !tbaa !19
  %252 = add nuw nsw i64 %49, 1
  %253 = load i32, ptr %43, align 4, !tbaa !116
  %254 = sext i32 %253 to i64
  %255 = icmp slt i64 %252, %254
  br i1 %255, label %48, label %256, !llvm.loop !298

256:                                              ; preds = %196, %35
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v2_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #13 {
  %5 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !120
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %9 = load i32, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !112
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
  %27 = load ptr, ptr %26, align 8, !tbaa !25
  %28 = getelementptr inbounds i8, ptr %27, i64 %18
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, i8 %30, i64 %22, i1 false), !tbaa !19
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !292

33:                                               ; preds = %24, %4
  %34 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !116
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
  %46 = load ptr, ptr %45, align 8, !tbaa !25
  %47 = getelementptr inbounds ptr, ptr %2, i64 %42
  %48 = load ptr, ptr %47, align 8, !tbaa !25
  %49 = getelementptr inbounds ptr, ptr %3, i64 %41
  %50 = load ptr, ptr %49, align 8, !tbaa !25
  br label %51

51:                                               ; preds = %51, %43
  %52 = phi i32 [ %74, %51 ], [ 1, %43 ]
  %53 = phi ptr [ %73, %51 ], [ %50, %43 ]
  %54 = phi ptr [ %76, %51 ], [ %46, %43 ]
  %55 = phi ptr [ %75, %51 ], [ %48, %43 ]
  %56 = phi i32 [ %77, %51 ], [ 0, %43 ]
  %57 = load i8, ptr %55, align 1, !tbaa !19
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds i8, ptr %55, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !19
  %61 = zext i8 %60 to i32
  %62 = load i8, ptr %54, align 1, !tbaa !19
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds i8, ptr %54, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !19
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %52, %58
  %68 = add nuw nsw i32 %67, %61
  %69 = add nuw nsw i32 %68, %63
  %70 = add nuw nsw i32 %69, %66
  %71 = lshr i32 %70, 2
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, ptr %53, i64 1
  store i8 %72, ptr %53, align 1, !tbaa !19
  %74 = xor i32 %52, 3
  %75 = getelementptr inbounds i8, ptr %55, i64 2
  %76 = getelementptr inbounds i8, ptr %54, i64 2
  %77 = add nuw i32 %56, 1
  %78 = icmp eq i32 %77, %7
  br i1 %78, label %79, label %51, !llvm.loop !299

79:                                               ; preds = %51
  %80 = load i32, ptr %34, align 4, !tbaa !116
  br label %81

81:                                               ; preds = %79, %39
  %82 = phi i32 [ %80, %79 ], [ %40, %39 ]
  %83 = add nuw nsw i64 %42, 2
  %84 = add nuw nsw i64 %41, 1
  %85 = sext i32 %82 to i64
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %39, label %87, !llvm.loop !300

87:                                               ; preds = %81, %33
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @int_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #13 {
  %5 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !120
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %9 = load i32, ptr %8, align 8, !tbaa !113
  %10 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !115
  %12 = sdiv i32 %9, %11
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %14 = load i32, ptr %13, align 4, !tbaa !114
  %15 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !116
  %17 = sdiv i32 %14, %16
  %18 = mul nsw i32 %17, %12
  %19 = sdiv i32 %18, 2
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !112
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
  %37 = load ptr, ptr %36, align 8, !tbaa !25
  %38 = getelementptr inbounds i8, ptr %37, i64 %28
  %39 = getelementptr inbounds i8, ptr %38, i64 -1
  %40 = load i8, ptr %39, align 1, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %38, i8 %40, i64 %32, i1 false), !tbaa !19
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, %33
  br i1 %42, label %43, label %34, !llvm.loop !292

43:                                               ; preds = %34
  %44 = load i32, ptr %15, align 4, !tbaa !116
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
  %62 = load ptr, ptr %61, align 8, !tbaa !25
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
  %75 = load ptr, ptr %74, align 8, !tbaa !25
  %76 = getelementptr inbounds i8, ptr %75, i64 %68
  br label %77

77:                                               ; preds = %77, %72
  %78 = phi i64 [ %84, %77 ], [ %71, %72 ]
  %79 = phi ptr [ %81, %77 ], [ %76, %72 ]
  %80 = phi i32 [ %85, %77 ], [ 0, %72 ]
  %81 = getelementptr inbounds i8, ptr %79, i64 1
  %82 = load i8, ptr %79, align 1, !tbaa !19
  %83 = zext i8 %82 to i64
  %84 = add nsw i64 %78, %83
  %85 = add nuw nsw i32 %80, 1
  %86 = icmp eq i32 %85, %12
  br i1 %86, label %87, label %77, !llvm.loop !301

87:                                               ; preds = %77, %69
  %88 = phi i64 [ %71, %69 ], [ %84, %77 ]
  %89 = add nuw nsw i64 %70, 1
  %90 = icmp eq i64 %89, %55
  br i1 %90, label %91, label %69, !llvm.loop !302

91:                                               ; preds = %87, %63
  %92 = phi i64 [ 0, %63 ], [ %88, %87 ]
  %93 = add nsw i64 %92, %52
  %94 = sdiv i64 %93, %53
  %95 = trunc i64 %94 to i8
  %96 = getelementptr inbounds i8, ptr %64, i64 1
  store i8 %95, ptr %64, align 1, !tbaa !19
  %97 = add nuw i32 %66, 1
  %98 = add i32 %65, %12
  %99 = icmp eq i32 %97, %7
  br i1 %99, label %100, label %63, !llvm.loop !303

100:                                              ; preds = %91
  %101 = load i32, ptr %15, align 4, !tbaa !116
  br label %102

102:                                              ; preds = %100, %56
  %103 = phi i32 [ %101, %100 ], [ %57, %56 ]
  %104 = add i64 %59, %54
  %105 = add nuw nsw i64 %58, 1
  %106 = sext i32 %103 to i64
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %56, label %108, !llvm.loop !304

108:                                              ; preds = %102, %45
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_make_c_derived_tbl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = alloca [257 x i8], align 16
  %5 = alloca [257 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %5) #29
  %6 = load ptr, ptr %2, align 8, !tbaa !25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = tail call ptr %11(ptr noundef %0, i32 noundef 1, i64 noundef 1280) #28
  store ptr %12, ptr %2, align 8, !tbaa !25
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %12, %8 ], [ %6, %3 ]
  br label %15

15:                                               ; preds = %28, %13
  %16 = phi i64 [ 1, %13 ], [ %30, %28 ]
  %17 = phi i32 [ 0, %13 ], [ %29, %28 ]
  %18 = getelementptr inbounds [17 x i8], ptr %1, i64 0, i64 %16
  %19 = load i8, ptr %18, align 1, !tbaa !19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = zext i8 %19 to i32
  %23 = trunc i64 %16 to i8
  %24 = sext i32 %17 to i64
  %25 = getelementptr i8, ptr %4, i64 %24
  %26 = zext i8 %19 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %25, i8 %23, i64 %26, i1 false), !tbaa !19
  %27 = add i32 %17, %22
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i32 [ %17, %15 ], [ %27, %21 ]
  %30 = add nuw nsw i64 %16, 1
  %31 = icmp eq i64 %30, 17
  br i1 %31, label %32, label %15, !llvm.loop !305

32:                                               ; preds = %28
  %.lcssa2 = phi i32 [ %29, %28 ]
  %33 = sext i32 %.lcssa2 to i64
  %34 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !19
  %35 = load i8, ptr %4, align 16, !tbaa !19
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
  store i32 %50, ptr %52, align 4, !tbaa !61
  %53 = add i32 %50, 1
  %54 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !19
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %42, %56
  br i1 %57, label %48, label %58, !llvm.loop !306

58:                                               ; preds = %48
  %.lcssa1 = phi i64 [ %51, %48 ]
  %.lcssa = phi i32 [ %53, %48 ]
  %59 = trunc i64 %.lcssa1 to i32
  %60 = shl i64 %.lcssa1, 32
  %61 = ashr exact i64 %60, 32
  %62 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !19
  br label %64

64:                                               ; preds = %58, %39
  %65 = phi i8 [ %63, %58 ], [ %40, %39 ]
  %66 = phi i32 [ %59, %58 ], [ %43, %39 ]
  %67 = phi i32 [ %.lcssa, %58 ], [ %41, %39 ]
  %68 = shl i32 %67, 1
  %69 = add nsw i32 %42, 1
  %70 = icmp eq i8 %65, 0
  br i1 %70, label %71, label %39, !llvm.loop !307

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
  %79 = load i32, ptr %78, align 4, !tbaa !61
  %80 = getelementptr inbounds %struct.JHUFF_TBL, ptr %1, i64 0, i32 1, i64 %77
  %81 = load i8, ptr %80, align 1, !tbaa !19
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds [256 x i32], ptr %14, i64 0, i64 %82
  store i32 %79, ptr %83, align 4, !tbaa !61
  %84 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %77
  %85 = load i8, ptr %84, align 1, !tbaa !19
  %86 = load i8, ptr %80, align 1, !tbaa !19
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds %struct.c_derived_tbl, ptr %14, i64 0, i32 1, i64 %87
  store i8 %85, ptr %88, align 1, !tbaa !19
  %89 = add nuw nsw i64 %77, 1
  %90 = icmp eq i64 %89, %75
  br i1 %90, label %91, label %76, !llvm.loop !308

91:                                               ; preds = %76, %71
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %4) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_gen_optimal_table(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #0 {
  %4 = alloca [33 x i8], align 16
  %5 = alloca [257 x i32], align 16
  %6 = alloca [257 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %4, i8 0, i64 33, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %5, i8 0, i64 1028, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %6, i8 -1, i64 1028, i1 false), !tbaa !61
  %7 = getelementptr inbounds i64, ptr %2, i64 256
  store i64 1, ptr %7, align 8, !tbaa !273
  br label %10

8:                                                ; preds = %10
  %9 = zext i32 %20 to i64
  br label %28

10:                                               ; preds = %24, %3
  %11 = phi i64 [ 0, %3 ], [ %25, %24 ]
  %12 = phi i64 [ 1000000000, %3 ], [ %26, %24 ]
  %13 = phi i32 [ -1, %3 ], [ %27, %24 ]
  %14 = getelementptr inbounds i64, ptr %2, i64 %11
  %15 = load i64, ptr %14, align 8, !tbaa !273
  %16 = icmp eq i64 %15, 0
  %17 = icmp sgt i64 %15, %12
  %18 = select i1 %16, i1 true, i1 %17
  %19 = trunc i64 %11 to i32
  %20 = select i1 %18, i32 %13, i32 %19
  %21 = select i1 %18, i64 %12, i64 %15
  %22 = add nuw nsw i64 %11, 1
  %23 = icmp eq i64 %22, 257
  br i1 %23, label %8, label %24

24:                                               ; preds = %79, %70, %10
  %25 = phi i64 [ %22, %10 ], [ 0, %70 ], [ 0, %79 ]
  %26 = phi i64 [ %21, %10 ], [ 1000000000, %70 ], [ 1000000000, %79 ]
  %27 = phi i32 [ %20, %10 ], [ -1, %70 ], [ -1, %79 ]
  br label %10, !llvm.loop !309

28:                                               ; preds = %28, %8
  %29 = phi i64 [ 0, %8 ], [ %42, %28 ]
  %30 = phi i64 [ 1000000000, %8 ], [ %41, %28 ]
  %31 = phi i32 [ -1, %8 ], [ %40, %28 ]
  %32 = getelementptr inbounds i64, ptr %2, i64 %29
  %33 = load i64, ptr %32, align 8, !tbaa !273
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
  br i1 %43, label %44, label %28, !llvm.loop !310

44:                                               ; preds = %28
  %.lcssa4 = phi i32 [ %40, %28 ]
  %45 = icmp slt i32 %.lcssa4, 0
  br i1 %45, label %88, label %46

46:                                               ; preds = %44
  %47 = zext i32 %.lcssa4 to i64
  %48 = getelementptr inbounds i64, ptr %2, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !273
  %50 = sext i32 %20 to i64
  %51 = getelementptr inbounds i64, ptr %2, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !273
  %53 = add nsw i64 %52, %49
  store i64 %53, ptr %51, align 8, !tbaa !273
  store i64 0, ptr %48, align 8, !tbaa !273
  %54 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %50
  %55 = load i32, ptr %54, align 4, !tbaa !61
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !61
  %57 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %50
  %58 = load i32, ptr %57, align 4, !tbaa !61
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %70

60:                                               ; preds = %60, %46
  %61 = phi i32 [ %68, %60 ], [ %58, %46 ]
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !61
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 4, !tbaa !61
  %66 = zext i32 %61 to i64
  %67 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !61
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %60, label %70, !llvm.loop !311

70:                                               ; preds = %60, %46
  %71 = phi i64 [ %50, %46 ], [ %66, %60 ]
  %72 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %71
  store i32 %.lcssa4, ptr %72, align 4, !tbaa !61
  %73 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %47
  %74 = load i32, ptr %73, align 4, !tbaa !61
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %73, align 4, !tbaa !61
  %76 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %47
  %77 = load i32, ptr %76, align 4, !tbaa !61
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %24

79:                                               ; preds = %79, %70
  %80 = phi i32 [ %86, %79 ], [ %77, %70 ]
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !61
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %82, align 4, !tbaa !61
  %85 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %81
  %86 = load i32, ptr %85, align 4, !tbaa !61
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %79, label %24, !llvm.loop !312

88:                                               ; preds = %104, %44
  %89 = phi i64 [ %105, %104 ], [ 0, %44 ]
  %90 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !61
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %88
  %94 = icmp sgt i32 %91, 32
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = load ptr, ptr %0, align 8, !tbaa !15
  %97 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %96, i64 0, i32 5
  store i32 38, ptr %97, align 8, !tbaa !16
  %98 = load ptr, ptr %96, align 8, !tbaa !20
  tail call void %98(ptr noundef nonnull %0) #28
  br label %99

99:                                               ; preds = %95, %93
  %100 = sext i32 %91 to i64
  %101 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !19
  %103 = add i8 %102, 1
  store i8 %103, ptr %101, align 1, !tbaa !19
  br label %104

104:                                              ; preds = %99, %88
  %105 = add nuw nsw i64 %89, 1
  %106 = icmp eq i64 %105, 257
  br i1 %106, label %107, label %88, !llvm.loop !313

107:                                              ; preds = %139, %104
  %108 = phi i64 [ %113, %139 ], [ 32, %104 ]
  %109 = phi i64 [ %141, %139 ], [ 30, %104 ]
  %110 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %108
  %111 = load i8, ptr %110, align 1, !tbaa !19
  %112 = icmp eq i8 %111, 0
  %113 = add nsw i64 %108, -1
  br i1 %112, label %139, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %113
  br label %116

116:                                              ; preds = %124, %114
  %117 = phi i8 [ %111, %114 ], [ %137, %124 ]
  br label %118

118:                                              ; preds = %118, %116
  %119 = phi i64 [ %123, %118 ], [ %109, %116 ]
  %120 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !19
  %122 = icmp eq i8 %121, 0
  %123 = add i64 %119, -1
  br i1 %122, label %118, label %124, !llvm.loop !314

124:                                              ; preds = %118
  %.lcssa3 = phi i64 [ %119, %118 ]
  %125 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %.lcssa3
  %126 = add i8 %117, -2
  store i8 %126, ptr %110, align 1, !tbaa !19
  %127 = load i8, ptr %115, align 1, !tbaa !19
  %128 = add i8 %127, 1
  store i8 %128, ptr %115, align 1, !tbaa !19
  %129 = shl i64 %.lcssa3, 32
  %130 = add i64 %129, 4294967296
  %131 = ashr exact i64 %130, 32
  %132 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !19
  %134 = add i8 %133, 2
  store i8 %134, ptr %132, align 1, !tbaa !19
  %135 = load i8, ptr %125, align 1, !tbaa !19
  %136 = add i8 %135, -1
  store i8 %136, ptr %125, align 1, !tbaa !19
  %137 = load i8, ptr %110, align 1, !tbaa !19
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %116, !llvm.loop !315

139:                                              ; preds = %124, %107
  %140 = icmp ugt i64 %108, 17
  %141 = add nsw i64 %109, -1
  br i1 %140, label %107, label %142, !llvm.loop !316

142:                                              ; preds = %142, %139
  %143 = phi i64 [ %147, %142 ], [ 16, %139 ]
  %144 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !19
  %146 = icmp eq i8 %145, 0
  %147 = add i64 %143, -1
  br i1 %146, label %142, label %148, !llvm.loop !317

148:                                              ; preds = %142
  %.lcssa2 = phi i64 [ %143, %142 ]
  %.lcssa1 = phi i8 [ %145, %142 ]
  %149 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %.lcssa2
  %150 = add i8 %.lcssa1, -1
  store i8 %150, ptr %149, align 1, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 16 dereferenceable(17) %4, i64 17, i1 false)
  br label %151

151:                                              ; preds = %169, %148
  %152 = phi i32 [ 1, %148 ], [ %170, %169 ]
  %153 = phi i32 [ 0, %148 ], [ %.lcssa, %169 ]
  br label %154

154:                                              ; preds = %165, %151
  %155 = phi i64 [ 0, %151 ], [ %167, %165 ]
  %156 = phi i32 [ %153, %151 ], [ %166, %165 ]
  %157 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %155
  %158 = load i32, ptr %157, align 4, !tbaa !61
  %159 = icmp eq i32 %158, %152
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = trunc i64 %155 to i8
  %162 = sext i32 %156 to i64
  %163 = getelementptr inbounds %struct.JHUFF_TBL, ptr %1, i64 0, i32 1, i64 %162
  store i8 %161, ptr %163, align 1, !tbaa !19
  %164 = add nsw i32 %156, 1
  br label %165

165:                                              ; preds = %160, %154
  %166 = phi i32 [ %164, %160 ], [ %156, %154 ]
  %167 = add nuw nsw i64 %155, 1
  %168 = icmp eq i64 %167, 256
  br i1 %168, label %169, label %154, !llvm.loop !318

169:                                              ; preds = %165
  %.lcssa = phi i32 [ %166, %165 ]
  %170 = add nuw nsw i32 %152, 1
  %171 = icmp eq i32 %170, 33
  br i1 %171, label %172, label %151, !llvm.loop !319

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.JHUFF_TBL, ptr %1, i64 0, i32 2
  store i32 0, ptr %173, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %4) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jinit_huff_encoder(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 192) #28
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  store ptr %5, ptr %6, align 8, !tbaa !148
  store ptr @start_pass_huff, ptr %5, align 8, !tbaa !320
  %7 = getelementptr i8, ptr %5, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !25
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi i64 [ 0, %1 ], [ %13, %8 ]
  %10 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 5, i64 %9
  store <2 x ptr> zeroinitializer, ptr %10, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 7, i64 %9
  store <2 x ptr> zeroinitializer, ptr %11, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 6, i64 %9
  store <2 x ptr> zeroinitializer, ptr %12, align 8, !tbaa !25
  %13 = add nuw i64 %9, 2
  %14 = icmp eq i64 %13, 4
  br i1 %14, label %15, label %8, !llvm.loop !323

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_pass_huff(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = icmp ne i32 %1, 0
  %6 = select i1 %5, ptr @encode_mcu_gather, ptr @encode_mcu_huff
  %7 = select i1 %5, ptr @finish_pass_gather, ptr @finish_pass_huff
  %8 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %4, i64 0, i32 1
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %4, i64 0, i32 2
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %11 = load i32, ptr %10, align 4, !tbaa !162
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %86

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %80, %13
  %16 = phi i64 [ 0, %13 ], [ %82, %80 ]
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !188
  %21 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %18, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !82
  %23 = icmp ugt i32 %20, 3
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = zext i32 %20 to i64
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !25
  %28 = icmp ne ptr %27, null
  %29 = or i1 %5, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24, %15
  %31 = load ptr, ptr %0, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 49, ptr %32, align 8, !tbaa !16
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 6
  store i32 %20, ptr %33, align 4, !tbaa !19
  %34 = load ptr, ptr %0, align 8, !tbaa !15
  %35 = load ptr, ptr %34, align 8, !tbaa !20
  tail call void %35(ptr noundef nonnull %0) #28
  br label %36

36:                                               ; preds = %30, %24
  %37 = icmp ugt i32 %22, 3
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  %39 = zext i32 %22 to i64
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = icmp ne ptr %41, null
  %43 = or i1 %5, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38, %36
  %45 = load ptr, ptr %0, align 8, !tbaa !15
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 5
  store i32 49, ptr %46, align 8, !tbaa !16
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 6
  store i32 %22, ptr %47, align 4, !tbaa !19
  %48 = load ptr, ptr %0, align 8, !tbaa !15
  %49 = load ptr, ptr %48, align 8, !tbaa !20
  tail call void %49(ptr noundef nonnull %0) #28
  br label %50

50:                                               ; preds = %44, %38
  %51 = sext i32 %20 to i64
  br i1 %5, label %52, label %72

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 6, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !25
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load ptr, ptr %14, align 8, !tbaa !7
  %58 = load ptr, ptr %57, align 8, !tbaa !68
  %59 = tail call ptr %58(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 2056) #28
  store ptr %59, ptr %53, align 8, !tbaa !25
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi ptr [ %59, %56 ], [ %54, %52 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %61, i8 0, i64 2056, i1 false)
  %62 = sext i32 %22 to i64
  %63 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !25
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load ptr, ptr %14, align 8, !tbaa !7
  %68 = load ptr, ptr %67, align 8, !tbaa !68
  %69 = tail call ptr %68(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 2056) #28
  store ptr %69, ptr %63, align 8, !tbaa !25
  br label %70

70:                                               ; preds = %66, %60
  %71 = phi ptr [ %69, %66 ], [ %64, %60 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %71, i8 0, i64 2056, i1 false)
  br label %80

72:                                               ; preds = %50
  %73 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %51
  %74 = load ptr, ptr %73, align 8, !tbaa !25
  %75 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 4, i64 %51
  tail call void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, ptr noundef %74, ptr noundef nonnull %75) #30
  %76 = sext i32 %22 to i64
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !25
  %79 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 5, i64 %76
  tail call void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, ptr noundef %78, ptr noundef nonnull %79) #30
  br label %80

80:                                               ; preds = %72, %70
  %81 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 2, i64 %16
  store i32 0, ptr %81, align 4, !tbaa !61
  %82 = add nuw nsw i64 %16, 1
  %83 = load i32, ptr %10, align 4, !tbaa !162
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %15, label %86, !llvm.loop !324

86:                                               ; preds = %80, %2
  %87 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1
  store i64 0, ptr %87, align 8, !tbaa !325
  %88 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 1
  store i32 0, ptr %88, align 8, !tbaa !326
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %90 = load i32, ptr %89, align 8, !tbaa !181
  %91 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 2
  store i32 %90, ptr %91, align 8, !tbaa !327
  %92 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 3
  store i32 0, ptr %92, align 4, !tbaa !328
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @encode_mcu_gather(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %6 = load i32, ptr %5, align 8, !tbaa !181
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !327
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %14 = load i32, ptr %13, align 4, !tbaa !162
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %16, %12
  %17 = phi i64 [ %19, %16 ], [ 0, %12 ]
  %18 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 2, i64 %17
  store i32 0, ptr %18, align 4, !tbaa !61
  %19 = add nuw nsw i64 %17, 1
  %20 = load i32, ptr %13, align 4, !tbaa !162
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %16, label %23, !llvm.loop !329

23:                                               ; preds = %16
  %24 = load i32, ptr %5, align 8, !tbaa !181
  br label %25

25:                                               ; preds = %23, %12, %8
  %26 = phi i32 [ %10, %8 ], [ %24, %23 ], [ %6, %12 ]
  %27 = add i32 %26, -1
  store i32 %27, ptr %9, align 8, !tbaa !327
  br label %28

28:                                               ; preds = %25, %2
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  %30 = load i32, ptr %29, align 8, !tbaa !173
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %135

32:                                               ; preds = %130, %28
  %33 = phi i64 [ %131, %130 ], [ 0, %28 ]
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !61
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !25
  %39 = getelementptr inbounds ptr, ptr %1, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !25
  %41 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 2, i64 %36
  %42 = load i32, ptr %41, align 4, !tbaa !61
  %43 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %38, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !188
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 6, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !25
  %48 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %38, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !82
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !25
  %53 = load i16, ptr %40, align 2, !tbaa !65
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
  br i1 %64, label %65, label %59, !llvm.loop !330

65:                                               ; preds = %59
  %.lcssa = phi i32 [ %62, %59 ]
  %66 = zext i32 %.lcssa to i64
  br label %67

67:                                               ; preds = %65, %32
  %68 = phi i64 [ 0, %32 ], [ %66, %65 ]
  %69 = getelementptr inbounds i64, ptr %47, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !273
  %71 = add nsw i64 %70, 1
  store i64 %71, ptr %69, align 8, !tbaa !273
  %72 = getelementptr inbounds i64, ptr %52, i64 240
  br label %73

73:                                               ; preds = %122, %67
  %74 = phi i64 [ 1, %67 ], [ %123, %122 ]
  %75 = phi i32 [ 0, %67 ], [ %124, %122 ]
  %76 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %74
  %77 = load i32, ptr %76, align 4, !tbaa !61
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, ptr %40, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !65
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %73
  %83 = icmp sgt i32 %75, 15
  br i1 %83, label %84, label %96

84:                                               ; preds = %82
  %85 = load i64, ptr %72, align 8, !tbaa !273
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
  store i64 %92, ptr %72, align 8, !tbaa !273
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
  br i1 %107, label %112, label %102, !llvm.loop !331

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
  %118 = load i64, ptr %117, align 8, !tbaa !273
  %119 = add nsw i64 %118, 1
  store i64 %119, ptr %117, align 8, !tbaa !273
  %120 = add nuw nsw i64 %74, 1
  %121 = icmp eq i64 %120, 64
  br i1 %121, label %130, label %122

122:                                              ; preds = %112, %108
  %123 = phi i64 [ %110, %108 ], [ %120, %112 ]
  %124 = phi i32 [ %109, %108 ], [ 0, %112 ]
  br label %73, !llvm.loop !332

125:                                              ; preds = %108
  %.lcssa2 = phi i32 [ %75, %108 ]
  %126 = icmp sgt i32 %.lcssa2, -1
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = load i64, ptr %52, align 8, !tbaa !273
  %129 = add nsw i64 %128, 1
  store i64 %129, ptr %52, align 8, !tbaa !273
  br label %130

130:                                              ; preds = %127, %125, %112
  store i32 %54, ptr %41, align 4, !tbaa !61
  %131 = add nuw nsw i64 %33, 1
  %132 = load i32, ptr %29, align 8, !tbaa !173
  %133 = sext i32 %132 to i64
  %134 = icmp slt i64 %131, %133
  br i1 %134, label %32, label %135, !llvm.loop !333

135:                                              ; preds = %130, %28
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @encode_mcu_huff(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.working_state, align 8
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #29
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  store ptr %8, ptr %3, align 8, !tbaa !334
  %9 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %7, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !195
  %11 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !336
  %12 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2
  %13 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !337
  %14 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 3
  store ptr %0, ptr %14, align 8, !tbaa !338
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %16 = load i32, ptr %15, align 8, !tbaa !181
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %79, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !327
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !328
  %25 = call fastcc i32 @flush_bits(ptr noundef nonnull %3) #30, !range !186
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %643, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %3, align 8, !tbaa !334
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %29, ptr %3, align 8, !tbaa !334
  store i8 -1, ptr %28, align 1, !tbaa !19
  %30 = load i64, ptr %11, align 8, !tbaa !336
  %31 = add i64 %30, -1
  store i64 %31, ptr %11, align 8, !tbaa !336
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %3, align 8, !tbaa !334
  br label %47

35:                                               ; preds = %27
  %36 = load ptr, ptr %14, align 8, !tbaa !338
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !196
  %41 = tail call i32 %40(ptr noundef %36) #28
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %643, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %38, align 8, !tbaa !194
  %45 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %38, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !195
  store i64 %46, ptr %11, align 8, !tbaa !336
  br label %47

47:                                               ; preds = %43, %33
  %48 = phi ptr [ %34, %33 ], [ %44, %43 ]
  %49 = trunc i32 %24 to i8
  %50 = add i8 %49, -48
  %51 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %51, ptr %3, align 8, !tbaa !334
  store i8 %50, ptr %48, align 1, !tbaa !19
  %52 = load i64, ptr %11, align 8, !tbaa !336
  %53 = add i64 %52, -1
  store i64 %53, ptr %11, align 8, !tbaa !336
  %54 = icmp eq i64 %53, 0
  %55 = load ptr, ptr %14, align 8, !tbaa !338
  br i1 %54, label %56, label %67

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !22
  %59 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !196
  %61 = tail call i32 %60(ptr noundef %55) #28
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %643, label %63

63:                                               ; preds = %56
  %64 = load ptr, ptr %58, align 8, !tbaa !194
  store ptr %64, ptr %3, align 8, !tbaa !334
  %65 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %58, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !195
  store i64 %66, ptr %11, align 8, !tbaa !336
  br label %67

67:                                               ; preds = %63, %47
  %68 = phi i64 [ %66, %63 ], [ %53, %47 ]
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i64 0, i32 41
  %70 = load i32, ptr %69, align 4, !tbaa !162
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %72, %67
  %73 = phi i64 [ %75, %72 ], [ 0, %67 ]
  %74 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2, i32 2, i64 %73
  store i32 0, ptr %74, align 4, !tbaa !61
  %75 = add nuw nsw i64 %73, 1
  %76 = load i32, ptr %69, align 4, !tbaa !162
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %72, label %79, !llvm.loop !339

79:                                               ; preds = %72, %67, %18, %2
  %80 = phi i64 [ %68, %67 ], [ %10, %18 ], [ %10, %2 ], [ %68, %72 ]
  %81 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  %82 = load i32, ptr %81, align 8, !tbaa !173
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %624

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2, i32 1
  br label %86

86:                                               ; preds = %615, %84
  %87 = phi i64 [ %80, %84 ], [ %616, %615 ]
  %88 = phi i64 [ 0, %84 ], [ %620, %615 ]
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !61
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !25
  %94 = getelementptr inbounds ptr, ptr %1, i64 %88
  %95 = load ptr, ptr %94, align 8, !tbaa !25
  %96 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2, i32 2, i64 %91
  %97 = load i32, ptr %96, align 4, !tbaa !61
  %98 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %93, i64 0, i32 5
  %99 = load i32, ptr %98, align 4, !tbaa !188
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 4, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !25
  %103 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %93, i64 0, i32 6
  %104 = load i32, ptr %103, align 8, !tbaa !82
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 5, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !25
  %108 = load i16, ptr %95, align 2, !tbaa !65
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
  br i1 %121, label %122, label %116, !llvm.loop !340

122:                                              ; preds = %116, %86
  %123 = phi i32 [ 0, %86 ], [ %119, %116 ]
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [256 x i32], ptr %102, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !61
  %127 = getelementptr inbounds %struct.c_derived_tbl, ptr %102, i64 0, i32 1, i64 %124
  %128 = load i8, ptr %127, align 1, !tbaa !19
  %129 = sext i8 %128 to i32
  %130 = zext i32 %126 to i64
  %131 = load i32, ptr %85, align 8, !tbaa !341
  %132 = icmp eq i8 %128, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %122
  %134 = load ptr, ptr %14, align 8, !tbaa !338
  %135 = load ptr, ptr %134, align 8, !tbaa !15
  %136 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %135, i64 0, i32 5
  store i32 39, ptr %136, align 8, !tbaa !16
  %137 = load ptr, ptr %135, align 8, !tbaa !20
  tail call void %137(ptr noundef nonnull %134) #28
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
  %147 = load i64, ptr %12, align 8, !tbaa !342
  %148 = or i64 %147, %146
  %149 = icmp sgt i32 %143, 7
  br i1 %149, label %150, label %199

150:                                              ; preds = %194, %138
  %151 = phi i32 [ %197, %194 ], [ %143, %138 ]
  %152 = phi i64 [ %196, %194 ], [ %148, %138 ]
  %153 = lshr i64 %152, 16
  %154 = trunc i64 %153 to i8
  %155 = load ptr, ptr %3, align 8, !tbaa !334
  %156 = getelementptr inbounds i8, ptr %155, i64 1
  store ptr %156, ptr %3, align 8, !tbaa !334
  store i8 %154, ptr %155, align 1, !tbaa !19
  %157 = load i64, ptr %11, align 8, !tbaa !336
  %158 = add i64 %157, -1
  store i64 %158, ptr %11, align 8, !tbaa !336
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %150
  %161 = load ptr, ptr %14, align 8, !tbaa !338
  %162 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %161, i64 0, i32 5
  %163 = load ptr, ptr %162, align 8, !tbaa !22
  %164 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %163, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !196
  %166 = tail call i32 %165(ptr noundef %161) #28
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %643, label %168

168:                                              ; preds = %160
  %169 = load ptr, ptr %163, align 8, !tbaa !194
  store ptr %169, ptr %3, align 8, !tbaa !334
  %170 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %163, i64 0, i32 1
  %171 = load i64, ptr %170, align 8, !tbaa !195
  store i64 %171, ptr %11, align 8, !tbaa !336
  br label %172

172:                                              ; preds = %168, %150
  %173 = phi i64 [ %171, %168 ], [ %158, %150 ]
  %174 = and i64 %152, 16711680
  %175 = icmp eq i64 %174, 16711680
  br i1 %175, label %176, label %194

176:                                              ; preds = %172
  %177 = load ptr, ptr %3, align 8, !tbaa !334
  %178 = getelementptr inbounds i8, ptr %177, i64 1
  store ptr %178, ptr %3, align 8, !tbaa !334
  store i8 0, ptr %177, align 1, !tbaa !19
  %179 = load i64, ptr %11, align 8, !tbaa !336
  %180 = add i64 %179, -1
  store i64 %180, ptr %11, align 8, !tbaa !336
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %176
  %183 = load ptr, ptr %14, align 8, !tbaa !338
  %184 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %183, i64 0, i32 5
  %185 = load ptr, ptr %184, align 8, !tbaa !22
  %186 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %185, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !196
  %188 = tail call i32 %187(ptr noundef %183) #28
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %643, label %190

190:                                              ; preds = %182
  %191 = load ptr, ptr %185, align 8, !tbaa !194
  store ptr %191, ptr %3, align 8, !tbaa !334
  %192 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %185, i64 0, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !195
  store i64 %193, ptr %11, align 8, !tbaa !336
  br label %194

194:                                              ; preds = %190, %176, %172
  %195 = phi i64 [ %193, %190 ], [ %180, %176 ], [ %173, %172 ]
  %196 = shl i64 %152, 8
  %197 = add nsw i32 %151, -8
  %198 = icmp sgt i32 %151, 15
  br i1 %198, label %150, label %199, !llvm.loop !343

199:                                              ; preds = %194, %138
  %200 = phi i64 [ %87, %138 ], [ %195, %194 ]
  %201 = phi i64 [ %148, %138 ], [ %196, %194 ]
  %202 = phi i32 [ %143, %138 ], [ %197, %194 ]
  store i64 %201, ptr %12, align 8, !tbaa !342
  store i32 %202, ptr %85, align 8, !tbaa !341
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
  %220 = load ptr, ptr %3, align 8, !tbaa !334
  %221 = getelementptr inbounds i8, ptr %220, i64 1
  store ptr %221, ptr %3, align 8, !tbaa !334
  store i8 %219, ptr %220, align 1, !tbaa !19
  %222 = load i64, ptr %11, align 8, !tbaa !336
  %223 = add i64 %222, -1
  store i64 %223, ptr %11, align 8, !tbaa !336
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %215
  %226 = load ptr, ptr %14, align 8, !tbaa !338
  %227 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %226, i64 0, i32 5
  %228 = load ptr, ptr %227, align 8, !tbaa !22
  %229 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %228, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !196
  %231 = tail call i32 %230(ptr noundef %226) #28
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %643, label %233

233:                                              ; preds = %225
  %234 = load ptr, ptr %228, align 8, !tbaa !194
  store ptr %234, ptr %3, align 8, !tbaa !334
  %235 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %228, i64 0, i32 1
  %236 = load i64, ptr %235, align 8, !tbaa !195
  store i64 %236, ptr %11, align 8, !tbaa !336
  br label %237

237:                                              ; preds = %233, %215
  %238 = phi i64 [ %236, %233 ], [ %223, %215 ]
  %239 = and i64 %217, 16711680
  %240 = icmp eq i64 %239, 16711680
  br i1 %240, label %241, label %259

241:                                              ; preds = %237
  %242 = load ptr, ptr %3, align 8, !tbaa !334
  %243 = getelementptr inbounds i8, ptr %242, i64 1
  store ptr %243, ptr %3, align 8, !tbaa !334
  store i8 0, ptr %242, align 1, !tbaa !19
  %244 = load i64, ptr %11, align 8, !tbaa !336
  %245 = add i64 %244, -1
  store i64 %245, ptr %11, align 8, !tbaa !336
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %241
  %248 = load ptr, ptr %14, align 8, !tbaa !338
  %249 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %248, i64 0, i32 5
  %250 = load ptr, ptr %249, align 8, !tbaa !22
  %251 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %250, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !196
  %253 = tail call i32 %252(ptr noundef %248) #28
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %643, label %255

255:                                              ; preds = %247
  %256 = load ptr, ptr %250, align 8, !tbaa !194
  store ptr %256, ptr %3, align 8, !tbaa !334
  %257 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %250, i64 0, i32 1
  %258 = load i64, ptr %257, align 8, !tbaa !195
  store i64 %258, ptr %11, align 8, !tbaa !336
  br label %259

259:                                              ; preds = %255, %241, %237
  %260 = phi i64 [ %258, %255 ], [ %245, %241 ], [ %238, %237 ]
  %261 = shl i64 %217, 8
  %262 = add nsw i32 %216, -8
  %263 = icmp sgt i32 %216, 15
  br i1 %263, label %215, label %264, !llvm.loop !343

264:                                              ; preds = %259, %204
  %265 = phi i64 [ %200, %204 ], [ %260, %259 ]
  %266 = phi i64 [ %213, %204 ], [ %261, %259 ]
  %267 = phi i32 [ %209, %204 ], [ %262, %259 ]
  store i64 %266, ptr %12, align 8, !tbaa !342
  store i32 %267, ptr %85, align 8, !tbaa !341
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
  %283 = load i32, ptr %282, align 4, !tbaa !61
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i16, ptr %95, i64 %284
  %286 = load i16, ptr %285, align 2, !tbaa !65
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
  %296 = load i32, ptr %272, align 4, !tbaa !61
  %297 = load i8, ptr %273, align 4, !tbaa !19
  %298 = sext i8 %297 to i32
  %299 = zext i32 %296 to i64
  %300 = icmp eq i8 %297, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %291
  %302 = load ptr, ptr %14, align 8, !tbaa !338
  %303 = load ptr, ptr %302, align 8, !tbaa !15
  %304 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %303, i64 0, i32 5
  store i32 39, ptr %304, align 8, !tbaa !16
  %305 = load ptr, ptr %303, align 8, !tbaa !20
  tail call void %305(ptr noundef nonnull %302) #28
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
  %315 = or i64 %293, %314
  %316 = icmp sgt i32 %311, 7
  br i1 %316, label %317, label %366

317:                                              ; preds = %361, %306
  %318 = phi i32 [ %364, %361 ], [ %311, %306 ]
  %319 = phi i64 [ %363, %361 ], [ %315, %306 ]
  %320 = lshr i64 %319, 16
  %321 = trunc i64 %320 to i8
  %322 = load ptr, ptr %3, align 8, !tbaa !334
  %323 = getelementptr inbounds i8, ptr %322, i64 1
  store ptr %323, ptr %3, align 8, !tbaa !334
  store i8 %321, ptr %322, align 1, !tbaa !19
  %324 = load i64, ptr %11, align 8, !tbaa !336
  %325 = add i64 %324, -1
  store i64 %325, ptr %11, align 8, !tbaa !336
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %339

327:                                              ; preds = %317
  %328 = load ptr, ptr %14, align 8, !tbaa !338
  %329 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %328, i64 0, i32 5
  %330 = load ptr, ptr %329, align 8, !tbaa !22
  %331 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %330, i64 0, i32 3
  %332 = load ptr, ptr %331, align 8, !tbaa !196
  %333 = tail call i32 %332(ptr noundef %328) #28
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %643, label %335

335:                                              ; preds = %327
  %336 = load ptr, ptr %330, align 8, !tbaa !194
  store ptr %336, ptr %3, align 8, !tbaa !334
  %337 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %330, i64 0, i32 1
  %338 = load i64, ptr %337, align 8, !tbaa !195
  store i64 %338, ptr %11, align 8, !tbaa !336
  br label %339

339:                                              ; preds = %335, %317
  %340 = phi i64 [ %338, %335 ], [ %325, %317 ]
  %341 = and i64 %319, 16711680
  %342 = icmp eq i64 %341, 16711680
  br i1 %342, label %343, label %361

343:                                              ; preds = %339
  %344 = load ptr, ptr %3, align 8, !tbaa !334
  %345 = getelementptr inbounds i8, ptr %344, i64 1
  store ptr %345, ptr %3, align 8, !tbaa !334
  store i8 0, ptr %344, align 1, !tbaa !19
  %346 = load i64, ptr %11, align 8, !tbaa !336
  %347 = add i64 %346, -1
  store i64 %347, ptr %11, align 8, !tbaa !336
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %361

349:                                              ; preds = %343
  %350 = load ptr, ptr %14, align 8, !tbaa !338
  %351 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %350, i64 0, i32 5
  %352 = load ptr, ptr %351, align 8, !tbaa !22
  %353 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %352, i64 0, i32 3
  %354 = load ptr, ptr %353, align 8, !tbaa !196
  %355 = tail call i32 %354(ptr noundef %350) #28
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %643, label %357

357:                                              ; preds = %349
  %358 = load ptr, ptr %352, align 8, !tbaa !194
  store ptr %358, ptr %3, align 8, !tbaa !334
  %359 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %352, i64 0, i32 1
  %360 = load i64, ptr %359, align 8, !tbaa !195
  store i64 %360, ptr %11, align 8, !tbaa !336
  br label %361

361:                                              ; preds = %357, %343, %339
  %362 = phi i64 [ %360, %357 ], [ %347, %343 ], [ %340, %339 ]
  %363 = shl i64 %319, 8
  %364 = add nsw i32 %318, -8
  %365 = icmp ugt i32 %318, 15
  br i1 %365, label %317, label %366, !llvm.loop !343

366:                                              ; preds = %361, %306
  %367 = phi i64 [ %292, %306 ], [ %362, %361 ]
  %368 = phi i64 [ %315, %306 ], [ %363, %361 ]
  %369 = phi i32 [ %311, %306 ], [ %364, %361 ]
  store i64 %368, ptr %12, align 8, !tbaa !342
  store i32 %369, ptr %85, align 8, !tbaa !341
  %370 = add nsw i32 %295, -16
  %371 = icmp sgt i32 %295, 31
  br i1 %371, label %291, label %372, !llvm.loop !344

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
  br i1 %387, label %388, label %382, !llvm.loop !345

388:                                              ; preds = %382, %372
  %389 = phi i32 [ 1, %372 ], [ %386, %382 ]
  %390 = shl i32 %376, 4
  %391 = add nsw i32 %389, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [256 x i32], ptr %107, i64 0, i64 %392
  %394 = load i32, ptr %393, align 4, !tbaa !61
  %395 = getelementptr inbounds %struct.c_derived_tbl, ptr %107, i64 0, i32 1, i64 %392
  %396 = load i8, ptr %395, align 1, !tbaa !19
  %397 = sext i8 %396 to i32
  %398 = zext i32 %394 to i64
  %399 = icmp eq i8 %396, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %388
  %401 = load ptr, ptr %14, align 8, !tbaa !338
  %402 = load ptr, ptr %401, align 8, !tbaa !15
  %403 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %402, i64 0, i32 5
  store i32 39, ptr %403, align 8, !tbaa !16
  %404 = load ptr, ptr %402, align 8, !tbaa !20
  tail call void %404(ptr noundef nonnull %401) #28
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
  %414 = or i64 %374, %413
  %415 = icmp sgt i32 %410, 7
  br i1 %415, label %416, label %465

416:                                              ; preds = %460, %405
  %417 = phi i32 [ %463, %460 ], [ %410, %405 ]
  %418 = phi i64 [ %462, %460 ], [ %414, %405 ]
  %419 = lshr i64 %418, 16
  %420 = trunc i64 %419 to i8
  %421 = load ptr, ptr %3, align 8, !tbaa !334
  %422 = getelementptr inbounds i8, ptr %421, i64 1
  store ptr %422, ptr %3, align 8, !tbaa !334
  store i8 %420, ptr %421, align 1, !tbaa !19
  %423 = load i64, ptr %11, align 8, !tbaa !336
  %424 = add i64 %423, -1
  store i64 %424, ptr %11, align 8, !tbaa !336
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %438

426:                                              ; preds = %416
  %427 = load ptr, ptr %14, align 8, !tbaa !338
  %428 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %427, i64 0, i32 5
  %429 = load ptr, ptr %428, align 8, !tbaa !22
  %430 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %429, i64 0, i32 3
  %431 = load ptr, ptr %430, align 8, !tbaa !196
  %432 = tail call i32 %431(ptr noundef %427) #28
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %643, label %434

434:                                              ; preds = %426
  %435 = load ptr, ptr %429, align 8, !tbaa !194
  store ptr %435, ptr %3, align 8, !tbaa !334
  %436 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %429, i64 0, i32 1
  %437 = load i64, ptr %436, align 8, !tbaa !195
  store i64 %437, ptr %11, align 8, !tbaa !336
  br label %438

438:                                              ; preds = %434, %416
  %439 = phi i64 [ %437, %434 ], [ %424, %416 ]
  %440 = and i64 %418, 16711680
  %441 = icmp eq i64 %440, 16711680
  br i1 %441, label %442, label %460

442:                                              ; preds = %438
  %443 = load ptr, ptr %3, align 8, !tbaa !334
  %444 = getelementptr inbounds i8, ptr %443, i64 1
  store ptr %444, ptr %3, align 8, !tbaa !334
  store i8 0, ptr %443, align 1, !tbaa !19
  %445 = load i64, ptr %11, align 8, !tbaa !336
  %446 = add i64 %445, -1
  store i64 %446, ptr %11, align 8, !tbaa !336
  %447 = icmp eq i64 %446, 0
  br i1 %447, label %448, label %460

448:                                              ; preds = %442
  %449 = load ptr, ptr %14, align 8, !tbaa !338
  %450 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %449, i64 0, i32 5
  %451 = load ptr, ptr %450, align 8, !tbaa !22
  %452 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %451, i64 0, i32 3
  %453 = load ptr, ptr %452, align 8, !tbaa !196
  %454 = tail call i32 %453(ptr noundef %449) #28
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %643, label %456

456:                                              ; preds = %448
  %457 = load ptr, ptr %451, align 8, !tbaa !194
  store ptr %457, ptr %3, align 8, !tbaa !334
  %458 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %451, i64 0, i32 1
  %459 = load i64, ptr %458, align 8, !tbaa !195
  store i64 %459, ptr %11, align 8, !tbaa !336
  br label %460

460:                                              ; preds = %456, %442, %438
  %461 = phi i64 [ %459, %456 ], [ %446, %442 ], [ %439, %438 ]
  %462 = shl i64 %418, 8
  %463 = add nsw i32 %417, -8
  %464 = icmp sgt i32 %417, 15
  br i1 %464, label %416, label %465, !llvm.loop !343

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
  %485 = load ptr, ptr %3, align 8, !tbaa !334
  %486 = getelementptr inbounds i8, ptr %485, i64 1
  store ptr %486, ptr %3, align 8, !tbaa !334
  store i8 %484, ptr %485, align 1, !tbaa !19
  %487 = load i64, ptr %11, align 8, !tbaa !336
  %488 = add i64 %487, -1
  store i64 %488, ptr %11, align 8, !tbaa !336
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %490, label %502

490:                                              ; preds = %480
  %491 = load ptr, ptr %14, align 8, !tbaa !338
  %492 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %491, i64 0, i32 5
  %493 = load ptr, ptr %492, align 8, !tbaa !22
  %494 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %493, i64 0, i32 3
  %495 = load ptr, ptr %494, align 8, !tbaa !196
  %496 = tail call i32 %495(ptr noundef %491) #28
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %643, label %498

498:                                              ; preds = %490
  %499 = load ptr, ptr %493, align 8, !tbaa !194
  store ptr %499, ptr %3, align 8, !tbaa !334
  %500 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %493, i64 0, i32 1
  %501 = load i64, ptr %500, align 8, !tbaa !195
  store i64 %501, ptr %11, align 8, !tbaa !336
  br label %502

502:                                              ; preds = %498, %480
  %503 = phi i64 [ %501, %498 ], [ %488, %480 ]
  %504 = and i64 %482, 16711680
  %505 = icmp eq i64 %504, 16711680
  br i1 %505, label %506, label %524

506:                                              ; preds = %502
  %507 = load ptr, ptr %3, align 8, !tbaa !334
  %508 = getelementptr inbounds i8, ptr %507, i64 1
  store ptr %508, ptr %3, align 8, !tbaa !334
  store i8 0, ptr %507, align 1, !tbaa !19
  %509 = load i64, ptr %11, align 8, !tbaa !336
  %510 = add i64 %509, -1
  store i64 %510, ptr %11, align 8, !tbaa !336
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %512, label %524

512:                                              ; preds = %506
  %513 = load ptr, ptr %14, align 8, !tbaa !338
  %514 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %513, i64 0, i32 5
  %515 = load ptr, ptr %514, align 8, !tbaa !22
  %516 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %515, i64 0, i32 3
  %517 = load ptr, ptr %516, align 8, !tbaa !196
  %518 = tail call i32 %517(ptr noundef %513) #28
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %643, label %520

520:                                              ; preds = %512
  %521 = load ptr, ptr %515, align 8, !tbaa !194
  store ptr %521, ptr %3, align 8, !tbaa !334
  %522 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %515, i64 0, i32 1
  %523 = load i64, ptr %522, align 8, !tbaa !195
  store i64 %523, ptr %11, align 8, !tbaa !336
  br label %524

524:                                              ; preds = %520, %506, %502
  %525 = phi i64 [ %523, %520 ], [ %510, %506 ], [ %503, %502 ]
  %526 = shl i64 %482, 8
  %527 = add nsw i32 %481, -8
  %528 = icmp sgt i32 %481, 15
  br i1 %528, label %480, label %533, !llvm.loop !343

529:                                              ; preds = %279
  %530 = add nuw nsw i32 %281, 1
  %531 = add nuw nsw i64 %280, 1
  %532 = icmp eq i64 %531, 64
  br i1 %532, label %539, label %279, !llvm.loop !346

533:                                              ; preds = %524, %465
  %534 = phi i64 [ %466, %465 ], [ %525, %524 ]
  %535 = phi i64 [ %478, %465 ], [ %526, %524 ]
  %536 = phi i32 [ %474, %465 ], [ %527, %524 ]
  store i64 %535, ptr %12, align 8, !tbaa !342
  store i32 %536, ptr %85, align 8, !tbaa !341
  %537 = add nuw nsw i64 %.lcssa4, 1
  %538 = icmp eq i64 %537, 64
  br i1 %538, label %615, label %274, !llvm.loop !346

539:                                              ; preds = %529
  %.lcssa11 = phi i64 [ %275, %529 ]
  %.lcssa9 = phi i64 [ %276, %529 ]
  %.lcssa7 = phi i32 [ %277, %529 ]
  %540 = load i32, ptr %107, align 4, !tbaa !61
  %541 = getelementptr inbounds %struct.c_derived_tbl, ptr %107, i64 0, i32 1
  %542 = load i8, ptr %541, align 4, !tbaa !19
  %543 = sext i8 %542 to i32
  %544 = zext i32 %540 to i64
  %545 = icmp eq i8 %542, 0
  br i1 %545, label %546, label %551

546:                                              ; preds = %539
  %547 = load ptr, ptr %14, align 8, !tbaa !338
  %548 = load ptr, ptr %547, align 8, !tbaa !15
  %549 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %548, i64 0, i32 5
  store i32 39, ptr %549, align 8, !tbaa !16
  %550 = load ptr, ptr %548, align 8, !tbaa !20
  tail call void %550(ptr noundef nonnull %547) #28
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
  %560 = or i64 %.lcssa9, %559
  %561 = icmp sgt i32 %556, 7
  br i1 %561, label %562, label %611

562:                                              ; preds = %606, %551
  %563 = phi i32 [ %609, %606 ], [ %556, %551 ]
  %564 = phi i64 [ %608, %606 ], [ %560, %551 ]
  %565 = lshr i64 %564, 16
  %566 = trunc i64 %565 to i8
  %567 = load ptr, ptr %3, align 8, !tbaa !334
  %568 = getelementptr inbounds i8, ptr %567, i64 1
  store ptr %568, ptr %3, align 8, !tbaa !334
  store i8 %566, ptr %567, align 1, !tbaa !19
  %569 = load i64, ptr %11, align 8, !tbaa !336
  %570 = add i64 %569, -1
  store i64 %570, ptr %11, align 8, !tbaa !336
  %571 = icmp eq i64 %570, 0
  br i1 %571, label %572, label %584

572:                                              ; preds = %562
  %573 = load ptr, ptr %14, align 8, !tbaa !338
  %574 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %573, i64 0, i32 5
  %575 = load ptr, ptr %574, align 8, !tbaa !22
  %576 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %575, i64 0, i32 3
  %577 = load ptr, ptr %576, align 8, !tbaa !196
  %578 = tail call i32 %577(ptr noundef %573) #28
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %643, label %580

580:                                              ; preds = %572
  %581 = load ptr, ptr %575, align 8, !tbaa !194
  store ptr %581, ptr %3, align 8, !tbaa !334
  %582 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %575, i64 0, i32 1
  %583 = load i64, ptr %582, align 8, !tbaa !195
  store i64 %583, ptr %11, align 8, !tbaa !336
  br label %584

584:                                              ; preds = %580, %562
  %585 = phi i64 [ %583, %580 ], [ %570, %562 ]
  %586 = and i64 %564, 16711680
  %587 = icmp eq i64 %586, 16711680
  br i1 %587, label %588, label %606

588:                                              ; preds = %584
  %589 = load ptr, ptr %3, align 8, !tbaa !334
  %590 = getelementptr inbounds i8, ptr %589, i64 1
  store ptr %590, ptr %3, align 8, !tbaa !334
  store i8 0, ptr %589, align 1, !tbaa !19
  %591 = load i64, ptr %11, align 8, !tbaa !336
  %592 = add i64 %591, -1
  store i64 %592, ptr %11, align 8, !tbaa !336
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %606

594:                                              ; preds = %588
  %595 = load ptr, ptr %14, align 8, !tbaa !338
  %596 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %595, i64 0, i32 5
  %597 = load ptr, ptr %596, align 8, !tbaa !22
  %598 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %597, i64 0, i32 3
  %599 = load ptr, ptr %598, align 8, !tbaa !196
  %600 = tail call i32 %599(ptr noundef %595) #28
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %643, label %602

602:                                              ; preds = %594
  %603 = load ptr, ptr %597, align 8, !tbaa !194
  store ptr %603, ptr %3, align 8, !tbaa !334
  %604 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %597, i64 0, i32 1
  %605 = load i64, ptr %604, align 8, !tbaa !195
  store i64 %605, ptr %11, align 8, !tbaa !336
  br label %606

606:                                              ; preds = %602, %588, %584
  %607 = phi i64 [ %605, %602 ], [ %592, %588 ], [ %585, %584 ]
  %608 = shl i64 %564, 8
  %609 = add nsw i32 %563, -8
  %610 = icmp sgt i32 %563, 15
  br i1 %610, label %562, label %611, !llvm.loop !343

611:                                              ; preds = %606, %551
  %612 = phi i64 [ %.lcssa11, %551 ], [ %607, %606 ]
  %613 = phi i64 [ %560, %551 ], [ %608, %606 ]
  %614 = phi i32 [ %556, %551 ], [ %609, %606 ]
  store i64 %613, ptr %12, align 8, !tbaa !342
  store i32 %614, ptr %85, align 8, !tbaa !341
  br label %615

615:                                              ; preds = %611, %533
  %616 = phi i64 [ %612, %611 ], [ %534, %533 ]
  %617 = load ptr, ptr %94, align 8, !tbaa !25
  %618 = load i16, ptr %617, align 2, !tbaa !65
  %619 = sext i16 %618 to i32
  store i32 %619, ptr %96, align 4, !tbaa !61
  %620 = add nuw nsw i64 %88, 1
  %621 = load i32, ptr %81, align 8, !tbaa !173
  %622 = sext i32 %621 to i64
  %623 = icmp slt i64 %620, %622
  br i1 %623, label %86, label %624, !llvm.loop !347

624:                                              ; preds = %615, %79
  %625 = phi i64 [ %80, %79 ], [ %616, %615 ]
  %626 = load ptr, ptr %3, align 8, !tbaa !334
  %627 = load ptr, ptr %6, align 8, !tbaa !22
  store ptr %626, ptr %627, align 8, !tbaa !194
  %628 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %627, i64 0, i32 1
  store i64 %625, ptr %628, align 8, !tbaa !195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !337
  %629 = load i32, ptr %15, align 8, !tbaa !181
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %643, label %631

631:                                              ; preds = %624
  %632 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 2
  %633 = load i32, ptr %632, align 8, !tbaa !327
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %640

635:                                              ; preds = %631
  %636 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 3
  %637 = load i32, ptr %636, align 4, !tbaa !328
  %638 = add nsw i32 %637, 1
  %639 = and i32 %638, 7
  store i32 %639, ptr %636, align 4, !tbaa !328
  br label %640

640:                                              ; preds = %635, %631
  %641 = phi i32 [ %629, %635 ], [ %633, %631 ]
  %642 = add i32 %641, -1
  store i32 %642, ptr %632, align 8, !tbaa !327
  br label %643

643:                                              ; preds = %640, %624, %594, %572, %512, %490, %448, %426, %349, %327, %247, %225, %182, %160, %56, %35, %22
  %644 = phi i32 [ 1, %640 ], [ 1, %624 ], [ 0, %22 ], [ 0, %35 ], [ 0, %56 ], [ 0, %327 ], [ 0, %349 ], [ 0, %490 ], [ 0, %512 ], [ 0, %426 ], [ 0, %448 ], [ 0, %572 ], [ 0, %594 ], [ 0, %225 ], [ 0, %247 ], [ 0, %160 ], [ 0, %182 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #29
  ret i32 %644
}

; Function Attrs: nounwind optsize uwtable
define internal void @finish_pass_gather(ptr noundef %0) #0 {
  %2 = alloca [4 x i32], align 16
  %3 = alloca [4 x i32], align 16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %7 = load i32, ptr %6, align 4, !tbaa !162
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %46, %1
  %10 = phi i64 [ %47, %46 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  %13 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !188
  %15 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %12, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !82
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !61
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %17
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #28
  store ptr %26, ptr %22, align 8, !tbaa !25
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi ptr [ %26, %25 ], [ %23, %21 ]
  %29 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 6, i64 %17
  %30 = load ptr, ptr %29, align 8, !tbaa !25
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %30) #30
  store i32 1, ptr %18, align 4, !tbaa !61
  br label %31

31:                                               ; preds = %27, %9
  %32 = sext i32 %16 to i64
  %33 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !61
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %32
  %38 = load ptr, ptr %37, align 8, !tbaa !25
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #28
  store ptr %41, ptr %37, align 8, !tbaa !25
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %41, %40 ], [ %38, %36 ]
  %44 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 7, i64 %32
  %45 = load ptr, ptr %44, align 8, !tbaa !25
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %43, ptr noundef %45) #30
  store i32 1, ptr %33, align 4, !tbaa !61
  br label %46

46:                                               ; preds = %42, %31
  %47 = add nuw nsw i64 %10, 1
  %48 = load i32, ptr %6, align 4, !tbaa !162
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %9, label %51, !llvm.loop !348

51:                                               ; preds = %46, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @finish_pass_huff(ptr noundef %0) #0 {
  %2 = alloca %struct.working_state, align 8
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #29
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = load ptr, ptr %6, align 8, !tbaa !194
  store ptr %7, ptr %2, align 8, !tbaa !334
  %8 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %6, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !195
  %10 = getelementptr inbounds %struct.working_state, ptr %2, i64 0, i32 1
  store i64 %9, ptr %10, align 8, !tbaa !336
  %11 = getelementptr inbounds %struct.working_state, ptr %2, i64 0, i32 2
  %12 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !337
  %13 = getelementptr inbounds %struct.working_state, ptr %2, i64 0, i32 3
  store ptr %0, ptr %13, align 8, !tbaa !338
  %14 = call fastcc i32 @flush_bits(ptr noundef nonnull %2) #30, !range !186
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load ptr, ptr %0, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 22, ptr %18, align 8, !tbaa !16
  %19 = load ptr, ptr %17, align 8, !tbaa !20
  tail call void %19(ptr noundef nonnull %0) #28
  br label %20

20:                                               ; preds = %16, %1
  %21 = load ptr, ptr %2, align 8, !tbaa !334
  %22 = load ptr, ptr %5, align 8, !tbaa !22
  store ptr %21, ptr %22, align 8, !tbaa !194
  %23 = load i64, ptr %10, align 8, !tbaa !336
  %24 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %22, i64 0, i32 1
  store i64 %23, ptr %24, align 8, !tbaa !195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !337
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @flush_bits(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.working_state, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.working_state, ptr %0, i64 0, i32 2, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !341
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %62

6:                                                ; preds = %1
  %7 = sub nsw i32 17, %4
  %8 = zext i32 %7 to i64
  %9 = shl i64 127, %8
  %10 = load i64, ptr %2, align 8, !tbaa !342
  %11 = or i64 %9, %10
  %12 = add nsw i32 %4, 7
  %13 = getelementptr inbounds %struct.working_state, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.working_state, ptr %0, i64 0, i32 3
  br label %15

15:                                               ; preds = %58, %6
  %16 = phi i32 [ %12, %6 ], [ %60, %58 ]
  %17 = phi i64 [ %11, %6 ], [ %59, %58 ]
  %18 = lshr i64 %17, 16
  %19 = trunc i64 %18 to i8
  %20 = load ptr, ptr %0, align 8, !tbaa !334
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr %0, align 8, !tbaa !334
  store i8 %19, ptr %20, align 1, !tbaa !19
  %22 = load i64, ptr %13, align 8, !tbaa !336
  %23 = add i64 %22, -1
  store i64 %23, ptr %13, align 8, !tbaa !336
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load ptr, ptr %14, align 8, !tbaa !338
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !196
  %31 = tail call i32 %30(ptr noundef %26) #28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %63, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr %28, align 8, !tbaa !194
  store ptr %34, ptr %0, align 8, !tbaa !334
  %35 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %28, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !195
  store i64 %36, ptr %13, align 8, !tbaa !336
  br label %37

37:                                               ; preds = %33, %15
  %38 = and i64 %17, 16711680
  %39 = icmp eq i64 %38, 16711680
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 8, !tbaa !334
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %42, ptr %0, align 8, !tbaa !334
  store i8 0, ptr %41, align 1, !tbaa !19
  %43 = load i64, ptr %13, align 8, !tbaa !336
  %44 = add i64 %43, -1
  store i64 %44, ptr %13, align 8, !tbaa !336
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load ptr, ptr %14, align 8, !tbaa !338
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !196
  %52 = tail call i32 %51(ptr noundef %47) #28
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %46
  %55 = load ptr, ptr %49, align 8, !tbaa !194
  store ptr %55, ptr %0, align 8, !tbaa !334
  %56 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %49, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !195
  store i64 %57, ptr %13, align 8, !tbaa !336
  br label %58

58:                                               ; preds = %54, %40, %37
  %59 = shl i64 %17, 8
  %60 = add nsw i32 %16, -8
  %61 = icmp sgt i32 %16, 15
  br i1 %61, label %15, label %62, !llvm.loop !343

62:                                               ; preds = %58, %1
  store i64 0, ptr %2, align 8, !tbaa !342
  store i32 0, ptr %3, align 8, !tbaa !341
  br label %63

63:                                               ; preds = %62, %46, %25
  %64 = phi i32 [ 1, %62 ], [ 0, %25 ], [ 0, %46 ]
  ret i32 %64
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #4

; Function Attrs: nounwind optsize uwtable
define internal void @jinit_phuff_encoder(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 184) #28
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  store ptr %5, ptr %6, align 8, !tbaa !148
  store ptr @start_pass_phuff, ptr %5, align 8, !tbaa !349
  %7 = getelementptr i8, ptr %5, i64 120
  %8 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 11
  store ptr null, ptr %8, align 8, !tbaa !351
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_pass_phuff(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 6
  store ptr %0, ptr %5, align 8, !tbaa !352
  %6 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 1
  store i32 %1, ptr %6, align 8, !tbaa !353
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %8 = load i32, ptr %7, align 4, !tbaa !155
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  %11 = load i32, ptr %10, align 4, !tbaa !156
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %4, i64 0, i32 1
  br i1 %12, label %14, label %17

14:                                               ; preds = %2
  br i1 %9, label %15, label %16

15:                                               ; preds = %14
  store ptr @encode_mcu_DC_first, ptr %13, align 8, !tbaa !354
  br label %28

16:                                               ; preds = %14
  store ptr @encode_mcu_AC_first, ptr %13, align 8, !tbaa !354
  br label %28

17:                                               ; preds = %2
  br i1 %9, label %18, label %19

18:                                               ; preds = %17
  store ptr @encode_mcu_DC_refine, ptr %13, align 8, !tbaa !354
  br label %28

19:                                               ; preds = %17
  store ptr @encode_mcu_AC_refine, ptr %13, align 8, !tbaa !354
  %20 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !351
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !7
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  %27 = tail call ptr %26(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 1000) #28
  store ptr %27, ptr %20, align 8, !tbaa !351
  br label %28

28:                                               ; preds = %23, %19, %18, %16, %15
  %29 = icmp ne i32 %1, 0
  %30 = select i1 %29, ptr @finish_pass_gather_phuff, ptr @finish_pass_phuff
  %31 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %4, i64 0, i32 2
  store ptr %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %33 = load i32, ptr %32, align 4, !tbaa !162
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %99

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 8
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  br label %38

38:                                               ; preds = %94, %35
  %39 = phi i64 [ 0, %35 ], [ %95, %94 ]
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %39
  store i32 0, ptr %42, align 4, !tbaa !61
  br i1 %9, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, ptr %10, align 4, !tbaa !156
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %41, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !188
  %49 = icmp ugt i32 %48, 3
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = zext i32 %48 to i64
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !25
  %54 = icmp ne ptr %53, null
  %55 = or i1 %29, %54
  br i1 %55, label %73, label %66

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %41, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !82
  store i32 %58, ptr %36, align 8, !tbaa !355
  %59 = icmp ugt i32 %58, 3
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !25
  %64 = icmp ne ptr %63, null
  %65 = or i1 %29, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %60, %56, %50, %46
  %67 = phi i32 [ %48, %50 ], [ %48, %46 ], [ %58, %60 ], [ %58, %56 ]
  %68 = load ptr, ptr %0, align 8, !tbaa !15
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 5
  store i32 49, ptr %69, align 8, !tbaa !16
  %70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 6
  store i32 %67, ptr %70, align 4, !tbaa !19
  %71 = load ptr, ptr %0, align 8, !tbaa !15
  %72 = load ptr, ptr %71, align 8, !tbaa !20
  tail call void %72(ptr noundef nonnull %0) #28
  br label %73

73:                                               ; preds = %66, %60, %50
  %74 = phi i32 [ %48, %50 ], [ %58, %60 ], [ %67, %66 ]
  %75 = sext i32 %74 to i64
  br i1 %29, label %76, label %86

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 15, i64 %75
  %78 = load ptr, ptr %77, align 8, !tbaa !25
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load ptr, ptr %37, align 8, !tbaa !7
  %82 = load ptr, ptr %81, align 8, !tbaa !68
  %83 = tail call ptr %82(ptr noundef %0, i32 noundef 1, i64 noundef 2056) #28
  store ptr %83, ptr %77, align 8, !tbaa !25
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi ptr [ %83, %80 ], [ %78, %76 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %85, i8 0, i64 2056, i1 false)
  br label %94

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 14, i64 %75
  br i1 %9, label %88, label %91

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %75
  %90 = load ptr, ptr %89, align 8, !tbaa !25
  tail call void @jpeg_make_c_derived_tbl(ptr noundef %0, ptr noundef %90, ptr noundef nonnull %87) #28
  br label %94

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %75
  %93 = load ptr, ptr %92, align 8, !tbaa !25
  tail call void @jpeg_make_c_derived_tbl(ptr noundef %0, ptr noundef %93, ptr noundef nonnull %87) #28
  br label %94

94:                                               ; preds = %91, %88, %84, %43
  %95 = add nuw nsw i64 %39, 1
  %96 = load i32, ptr %32, align 4, !tbaa !162
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %38, label %99, !llvm.loop !356

99:                                               ; preds = %94, %28
  %100 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 9
  store i32 0, ptr %100, align 4, !tbaa !357
  %101 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 10
  store i32 0, ptr %101, align 8, !tbaa !358
  %102 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 4
  store i64 0, ptr %102, align 8, !tbaa !359
  %103 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 5
  store i32 0, ptr %103, align 8, !tbaa !360
  %104 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %105 = load i32, ptr %104, align 8, !tbaa !181
  %106 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  store i32 %105, ptr %106, align 8, !tbaa !361
  %107 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  store i32 0, ptr %107, align 4, !tbaa !362
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @encode_mcu_DC_first(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %6 = load i32, ptr %5, align 8, !tbaa !168
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = load ptr, ptr %8, align 8, !tbaa !194
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !363
  %11 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !195
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 3
  store i64 %12, ptr %13, align 8, !tbaa !364
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %15 = load i32, ptr %14, align 8, !tbaa !181
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !361
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %23 = load i32, ptr %22, align 4, !tbaa !362
  tail call fastcc void @emit_restart(ptr noundef nonnull %4, i32 noundef %23) #30
  br label %24

24:                                               ; preds = %21, %17, %2
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  %26 = load i32, ptr %25, align 8, !tbaa !173
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %113

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 5
  %30 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 1
  %31 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 4
  br label %32

32:                                               ; preds = %108, %28
  %33 = phi i64 [ 0, %28 ], [ %109, %108 ]
  %34 = getelementptr inbounds ptr, ptr %1, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !25
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %33
  %37 = load i32, ptr %36, align 4, !tbaa !61
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !25
  %41 = load i16, ptr %35, align 2, !tbaa !65
  %42 = sext i16 %41 to i32
  %43 = ashr i32 %42, %6
  %44 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %38
  %45 = load i32, ptr %44, align 4, !tbaa !61
  %46 = sub nsw i32 %43, %45
  store i32 %43, ptr %44, align 4, !tbaa !61
  %47 = ashr i32 %46, 31
  %48 = add nsw i32 %47, %46
  %49 = icmp eq i32 %43, %45
  br i1 %49, label %50, label %53

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %40, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !188
  tail call fastcc void @emit_symbol(ptr noundef nonnull %4, i32 noundef %52, i32 noundef 0) #30
  br label %108

53:                                               ; preds = %32
  %54 = tail call i32 @llvm.abs.i32(i32 %46, i1 true)
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i32 [ %59, %55 ], [ %54, %53 ]
  %57 = phi i32 [ %58, %55 ], [ 0, %53 ]
  %58 = add nuw nsw i32 %57, 1
  %59 = lshr i32 %56, 1
  %60 = icmp ult i32 %56, 2
  br i1 %60, label %61, label %55, !llvm.loop !365

61:                                               ; preds = %55
  %.lcssa = phi i32 [ %58, %55 ]
  %62 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %40, i64 0, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !188
  tail call fastcc void @emit_symbol(ptr noundef %4, i32 noundef %63, i32 noundef %.lcssa) #30
  %64 = load i32, ptr %30, align 8, !tbaa !353
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %61
  %67 = load i32, ptr %29, align 8, !tbaa !360
  %68 = zext i32 %48 to i64
  %69 = zext i32 %.lcssa to i64
  %70 = shl nsw i64 -1, %69
  %71 = xor i64 %70, -1
  %72 = and i64 %71, %68
  %73 = add nsw i32 %67, %.lcssa
  %74 = sub nsw i32 24, %73
  %75 = zext i32 %74 to i64
  %76 = shl i64 %72, %75
  %77 = load i64, ptr %31, align 8, !tbaa !359
  %78 = or i64 %76, %77
  %79 = icmp sgt i32 %73, 7
  br i1 %79, label %80, label %105

80:                                               ; preds = %101, %66
  %81 = phi i64 [ %102, %101 ], [ %78, %66 ]
  %82 = phi i32 [ %103, %101 ], [ %73, %66 ]
  %83 = lshr i64 %81, 16
  %84 = trunc i64 %83 to i8
  %85 = load ptr, ptr %10, align 8, !tbaa !363
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  store ptr %86, ptr %10, align 8, !tbaa !363
  store i8 %84, ptr %85, align 1, !tbaa !19
  %87 = load i64, ptr %13, align 8, !tbaa !364
  %88 = add i64 %87, -1
  store i64 %88, ptr %13, align 8, !tbaa !364
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #30
  br label %91

91:                                               ; preds = %90, %80
  %92 = and i64 %81, 16711680
  %93 = icmp eq i64 %92, 16711680
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load ptr, ptr %10, align 8, !tbaa !363
  %96 = getelementptr inbounds i8, ptr %95, i64 1
  store ptr %96, ptr %10, align 8, !tbaa !363
  store i8 0, ptr %95, align 1, !tbaa !19
  %97 = load i64, ptr %13, align 8, !tbaa !364
  %98 = add i64 %97, -1
  store i64 %98, ptr %13, align 8, !tbaa !364
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #30
  br label %101

101:                                              ; preds = %100, %94, %91
  %102 = shl i64 %81, 8
  %103 = add nsw i32 %82, -8
  %104 = icmp sgt i32 %82, 15
  br i1 %104, label %80, label %105, !llvm.loop !366

105:                                              ; preds = %101, %66
  %106 = phi i32 [ %73, %66 ], [ %103, %101 ]
  %107 = phi i64 [ %78, %66 ], [ %102, %101 ]
  store i64 %107, ptr %31, align 8, !tbaa !359
  store i32 %106, ptr %29, align 8, !tbaa !360
  br label %108

108:                                              ; preds = %105, %61, %50
  %109 = add nuw nsw i64 %33, 1
  %110 = load i32, ptr %25, align 8, !tbaa !173
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %109, %111
  br i1 %112, label %32, label %113, !llvm.loop !367

113:                                              ; preds = %108, %24
  %114 = load ptr, ptr %10, align 8, !tbaa !363
  %115 = load ptr, ptr %7, align 8, !tbaa !22
  store ptr %114, ptr %115, align 8, !tbaa !194
  %116 = load i64, ptr %13, align 8, !tbaa !364
  %117 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %115, i64 0, i32 1
  store i64 %116, ptr %117, align 8, !tbaa !195
  %118 = load i32, ptr %14, align 8, !tbaa !181
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %122 = load i32, ptr %121, align 8, !tbaa !361
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %126 = load i32, ptr %125, align 4, !tbaa !362
  %127 = add nsw i32 %126, 1
  %128 = and i32 %127, 7
  store i32 %128, ptr %125, align 4, !tbaa !362
  br label %129

129:                                              ; preds = %124, %120
  %130 = phi i32 [ %118, %124 ], [ %122, %120 ]
  %131 = add i32 %130, -1
  store i32 %131, ptr %121, align 8, !tbaa !361
  br label %132

132:                                              ; preds = %129, %113
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @encode_mcu_AC_first(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  %6 = load i32, ptr %5, align 8, !tbaa !167
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %8 = load i32, ptr %7, align 8, !tbaa !168
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  %12 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !363
  %13 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %10, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !195
  %15 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 3
  store i64 %14, ptr %15, align 8, !tbaa !364
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %17 = load i32, ptr %16, align 8, !tbaa !181
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !361
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %25 = load i32, ptr %24, align 4, !tbaa !362
  tail call fastcc void @emit_restart(ptr noundef nonnull %4, i32 noundef %25) #30
  br label %26

26:                                               ; preds = %23, %19, %2
  %27 = load ptr, ptr %1, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %29 = load i32, ptr %28, align 4, !tbaa !155
  %30 = icmp sgt i32 %29, %6
  br i1 %30, label %213, label %31

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
  %44 = load i32, ptr %43, align 4, !tbaa !61
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [64 x i16], ptr %27, i64 0, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !65
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
  %64 = load i32, ptr %32, align 4, !tbaa !357
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call fastcc void @emit_eobrun(ptr noundef nonnull %4) #30
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
  %74 = load i32, ptr %33, align 8, !tbaa !355
  %75 = load i32, ptr %34, align 8, !tbaa !353
  %76 = icmp eq i32 %75, 0
  %77 = sext i32 %74 to i64
  br i1 %76, label %84, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 15, i64 %77
  %80 = load ptr, ptr %79, align 8, !tbaa !25
  %81 = getelementptr inbounds i64, ptr %80, i64 240
  %82 = load i64, ptr %81, align 8, !tbaa !273
  %83 = add nsw i64 %82, 1
  store i64 %83, ptr %81, align 8, !tbaa !273
  br label %142

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 14, i64 %77
  %86 = load ptr, ptr %85, align 8, !tbaa !25
  %87 = getelementptr inbounds [256 x i32], ptr %86, i64 0, i64 240
  %88 = load i32, ptr %87, align 4, !tbaa !61
  %89 = getelementptr inbounds %struct.c_derived_tbl, ptr %86, i64 0, i32 1, i64 240
  %90 = load i8, ptr %89, align 1, !tbaa !19
  %91 = sext i8 %90 to i32
  %92 = zext i32 %88 to i64
  %93 = load i32, ptr %35, align 8, !tbaa !360
  %94 = icmp eq i8 %90, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %84
  %96 = load ptr, ptr %36, align 8, !tbaa !352
  %97 = load ptr, ptr %96, align 8, !tbaa !15
  %98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %97, i64 0, i32 5
  store i32 39, ptr %98, align 8, !tbaa !16
  %99 = load ptr, ptr %97, align 8, !tbaa !20
  tail call void %99(ptr noundef nonnull %96) #28
  %100 = load i32, ptr %34, align 8, !tbaa !353
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
  %111 = load i64, ptr %37, align 8, !tbaa !359
  %112 = or i64 %111, %110
  %113 = icmp sgt i32 %107, 7
  br i1 %113, label %114, label %139

114:                                              ; preds = %135, %102
  %115 = phi i64 [ %136, %135 ], [ %112, %102 ]
  %116 = phi i32 [ %137, %135 ], [ %107, %102 ]
  %117 = lshr i64 %115, 16
  %118 = trunc i64 %117 to i8
  %119 = load ptr, ptr %12, align 8, !tbaa !363
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  store ptr %120, ptr %12, align 8, !tbaa !363
  store i8 %118, ptr %119, align 1, !tbaa !19
  %121 = load i64, ptr %15, align 8, !tbaa !364
  %122 = add i64 %121, -1
  store i64 %122, ptr %15, align 8, !tbaa !364
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #30
  br label %125

125:                                              ; preds = %124, %114
  %126 = and i64 %115, 16711680
  %127 = icmp eq i64 %126, 16711680
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load ptr, ptr %12, align 8, !tbaa !363
  %130 = getelementptr inbounds i8, ptr %129, i64 1
  store ptr %130, ptr %12, align 8, !tbaa !363
  store i8 0, ptr %129, align 1, !tbaa !19
  %131 = load i64, ptr %15, align 8, !tbaa !364
  %132 = add i64 %131, -1
  store i64 %132, ptr %15, align 8, !tbaa !364
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #30
  br label %135

135:                                              ; preds = %134, %128, %125
  %136 = shl i64 %115, 8
  %137 = add nsw i32 %116, -8
  %138 = icmp sgt i32 %116, 15
  br i1 %138, label %114, label %139, !llvm.loop !366

139:                                              ; preds = %135, %102
  %140 = phi i32 [ %107, %102 ], [ %137, %135 ]
  %141 = phi i64 [ %112, %102 ], [ %136, %135 ]
  store i64 %141, ptr %37, align 8, !tbaa !359
  store i32 %140, ptr %35, align 8, !tbaa !360
  br label %142

142:                                              ; preds = %139, %95, %78
  %143 = add nsw i32 %73, -16
  %144 = icmp sgt i32 %73, 31
  br i1 %144, label %72, label %69, !llvm.loop !368

145:                                              ; preds = %145, %69
  %146 = phi i32 [ %148, %145 ], [ %59, %69 ]
  %147 = phi i32 [ %149, %145 ], [ 1, %69 ]
  %148 = lshr i32 %146, 1
  %149 = add nuw nsw i32 %147, 1
  %150 = icmp ult i32 %146, 4
  br i1 %150, label %151, label %145, !llvm.loop !369

151:                                              ; preds = %145, %69
  %152 = phi i32 [ 1, %69 ], [ %149, %145 ]
  %153 = load i32, ptr %33, align 8, !tbaa !355
  %154 = shl i32 %70, 4
  %155 = add nsw i32 %152, %154
  tail call fastcc void @emit_symbol(ptr noundef %4, i32 noundef %153, i32 noundef %155) #30
  %156 = load i32, ptr %34, align 8, !tbaa !353
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %200

158:                                              ; preds = %151
  %159 = load i32, ptr %35, align 8, !tbaa !360
  %160 = zext i32 %58 to i64
  %161 = zext i32 %152 to i64
  %162 = shl nsw i64 -1, %161
  %163 = xor i64 %162, -1
  %164 = and i64 %163, %160
  %165 = add nsw i32 %159, %152
  %166 = sub nsw i32 24, %165
  %167 = zext i32 %166 to i64
  %168 = shl i64 %164, %167
  %169 = load i64, ptr %37, align 8, !tbaa !359
  %170 = or i64 %168, %169
  %171 = icmp sgt i32 %165, 7
  br i1 %171, label %172, label %197

172:                                              ; preds = %193, %158
  %173 = phi i64 [ %194, %193 ], [ %170, %158 ]
  %174 = phi i32 [ %195, %193 ], [ %165, %158 ]
  %175 = lshr i64 %173, 16
  %176 = trunc i64 %175 to i8
  %177 = load ptr, ptr %12, align 8, !tbaa !363
  %178 = getelementptr inbounds i8, ptr %177, i64 1
  store ptr %178, ptr %12, align 8, !tbaa !363
  store i8 %176, ptr %177, align 1, !tbaa !19
  %179 = load i64, ptr %15, align 8, !tbaa !364
  %180 = add i64 %179, -1
  store i64 %180, ptr %15, align 8, !tbaa !364
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #30
  br label %183

183:                                              ; preds = %182, %172
  %184 = and i64 %173, 16711680
  %185 = icmp eq i64 %184, 16711680
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load ptr, ptr %12, align 8, !tbaa !363
  %188 = getelementptr inbounds i8, ptr %187, i64 1
  store ptr %188, ptr %12, align 8, !tbaa !363
  store i8 0, ptr %187, align 1, !tbaa !19
  %189 = load i64, ptr %15, align 8, !tbaa !364
  %190 = add i64 %189, -1
  store i64 %190, ptr %15, align 8, !tbaa !364
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #30
  br label %193

193:                                              ; preds = %192, %186, %183
  %194 = shl i64 %173, 8
  %195 = add nsw i32 %174, -8
  %196 = icmp sgt i32 %174, 15
  br i1 %196, label %172, label %197, !llvm.loop !366

197:                                              ; preds = %193, %158
  %198 = phi i32 [ %165, %158 ], [ %195, %193 ]
  %199 = phi i64 [ %170, %158 ], [ %194, %193 ]
  store i64 %199, ptr %37, align 8, !tbaa !359
  store i32 %198, ptr %35, align 8, !tbaa !360
  br label %200

200:                                              ; preds = %197, %151, %61, %49
  %201 = phi i32 [ %50, %49 ], [ %62, %61 ], [ 0, %151 ], [ 0, %197 ]
  %202 = add nsw i64 %41, 1
  %203 = trunc i64 %202 to i32
  %204 = icmp eq i32 %39, %203
  br i1 %204, label %205, label %40, !llvm.loop !370

205:                                              ; preds = %200
  %.lcssa = phi i32 [ %201, %200 ]
  %206 = icmp sgt i32 %.lcssa, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 9
  %209 = load i32, ptr %208, align 4, !tbaa !357
  %210 = add i32 %209, 1
  store i32 %210, ptr %208, align 4, !tbaa !357
  %211 = icmp eq i32 %210, 32767
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  tail call fastcc void @emit_eobrun(ptr noundef nonnull %4) #30
  br label %213

213:                                              ; preds = %212, %207, %205, %26
  %214 = load ptr, ptr %12, align 8, !tbaa !363
  %215 = load ptr, ptr %9, align 8, !tbaa !22
  store ptr %214, ptr %215, align 8, !tbaa !194
  %216 = load i64, ptr %15, align 8, !tbaa !364
  %217 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %215, i64 0, i32 1
  store i64 %216, ptr %217, align 8, !tbaa !195
  %218 = load i32, ptr %16, align 8, !tbaa !181
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %222 = load i32, ptr %221, align 8, !tbaa !361
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %226 = load i32, ptr %225, align 4, !tbaa !362
  %227 = add nsw i32 %226, 1
  %228 = and i32 %227, 7
  store i32 %228, ptr %225, align 4, !tbaa !362
  br label %229

229:                                              ; preds = %224, %220
  %230 = phi i32 [ %218, %224 ], [ %222, %220 ]
  %231 = add i32 %230, -1
  store i32 %231, ptr %221, align 8, !tbaa !361
  br label %232

232:                                              ; preds = %229, %213
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @encode_mcu_DC_refine(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %6 = load i32, ptr %5, align 8, !tbaa !168
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = load ptr, ptr %8, align 8, !tbaa !194
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !363
  %11 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !195
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 3
  store i64 %12, ptr %13, align 8, !tbaa !364
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %15 = load i32, ptr %14, align 8, !tbaa !181
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !361
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %23 = load i32, ptr %22, align 4, !tbaa !362
  tail call fastcc void @emit_restart(ptr noundef nonnull %4, i32 noundef %23) #30
  br label %24

24:                                               ; preds = %21, %17, %2
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  %26 = load i32, ptr %25, align 8, !tbaa !173
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
  %36 = load i32, ptr %30, align 8, !tbaa !353
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %32
  %39 = load i32, ptr %29, align 8, !tbaa !360
  %40 = getelementptr inbounds ptr, ptr %1, i64 %35
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = load i16, ptr %41, align 2, !tbaa !65
  %43 = sext i16 %42 to i32
  %44 = lshr i32 %43, %6
  %45 = and i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = add nsw i32 %39, 1
  %48 = sub nsw i32 23, %39
  %49 = zext i32 %48 to i64
  %50 = shl nuw i64 %46, %49
  %51 = load i64, ptr %31, align 8, !tbaa !359
  %52 = or i64 %50, %51
  %53 = icmp sgt i32 %39, 6
  br i1 %53, label %54, label %81

54:                                               ; preds = %75, %38
  %55 = phi i64 [ %76, %75 ], [ %52, %38 ]
  %56 = phi i32 [ %77, %75 ], [ %47, %38 ]
  %57 = lshr i64 %55, 16
  %58 = trunc i64 %57 to i8
  %59 = load ptr, ptr %10, align 8, !tbaa !363
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %60, ptr %10, align 8, !tbaa !363
  store i8 %58, ptr %59, align 1, !tbaa !19
  %61 = load i64, ptr %13, align 8, !tbaa !364
  %62 = add i64 %61, -1
  store i64 %62, ptr %13, align 8, !tbaa !364
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #30
  br label %65

65:                                               ; preds = %64, %54
  %66 = and i64 %55, 16711680
  %67 = icmp eq i64 %66, 16711680
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load ptr, ptr %10, align 8, !tbaa !363
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %70, ptr %10, align 8, !tbaa !363
  store i8 0, ptr %69, align 1, !tbaa !19
  %71 = load i64, ptr %13, align 8, !tbaa !364
  %72 = add i64 %71, -1
  store i64 %72, ptr %13, align 8, !tbaa !364
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #30
  br label %75

75:                                               ; preds = %74, %68, %65
  %76 = shl i64 %55, 8
  %77 = add nsw i32 %56, -8
  %78 = icmp sgt i32 %56, 15
  br i1 %78, label %54, label %79, !llvm.loop !366

79:                                               ; preds = %75
  %.lcssa1 = phi i64 [ %76, %75 ]
  %.lcssa = phi i32 [ %77, %75 ]
  %80 = load i32, ptr %25, align 8, !tbaa !173
  br label %81

81:                                               ; preds = %79, %38
  %82 = phi i32 [ %33, %38 ], [ %80, %79 ]
  %83 = phi i32 [ %47, %38 ], [ %.lcssa, %79 ]
  %84 = phi i64 [ %52, %38 ], [ %.lcssa1, %79 ]
  store i64 %84, ptr %31, align 8, !tbaa !359
  store i32 %83, ptr %29, align 8, !tbaa !360
  br label %85

85:                                               ; preds = %81, %32
  %86 = phi i32 [ %33, %32 ], [ %82, %81 ]
  %87 = phi i32 [ %34, %32 ], [ %82, %81 ]
  %88 = add nuw nsw i64 %35, 1
  %89 = sext i32 %87 to i64
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %32, label %91, !llvm.loop !371

91:                                               ; preds = %85, %24
  %92 = load ptr, ptr %10, align 8, !tbaa !363
  %93 = load ptr, ptr %7, align 8, !tbaa !22
  store ptr %92, ptr %93, align 8, !tbaa !194
  %94 = load i64, ptr %13, align 8, !tbaa !364
  %95 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %93, i64 0, i32 1
  store i64 %94, ptr %95, align 8, !tbaa !195
  %96 = load i32, ptr %14, align 8, !tbaa !181
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %100 = load i32, ptr %99, align 8, !tbaa !361
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %104 = load i32, ptr %103, align 4, !tbaa !362
  %105 = add nsw i32 %104, 1
  %106 = and i32 %105, 7
  store i32 %106, ptr %103, align 4, !tbaa !362
  br label %107

107:                                              ; preds = %102, %98
  %108 = phi i32 [ %96, %102 ], [ %100, %98 ]
  %109 = add i32 %108, -1
  store i32 %109, ptr %99, align 8, !tbaa !361
  br label %110

110:                                              ; preds = %107, %91
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @encode_mcu_AC_refine(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i32], align 16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  %7 = load i32, ptr %6, align 8, !tbaa !167
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %9 = load i32, ptr %8, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #29
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !363
  %14 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %11, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !195
  %16 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !364
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %18 = load i32, ptr %17, align 8, !tbaa !181
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !361
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 13
  %26 = load i32, ptr %25, align 4, !tbaa !362
  tail call fastcc void @emit_restart(ptr noundef nonnull %5, i32 noundef %26) #30
  br label %27

27:                                               ; preds = %24, %20, %2
  %28 = load ptr, ptr %1, align 8, !tbaa !25
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %30 = load i32, ptr %29, align 4, !tbaa !155
  %31 = icmp sgt i32 %30, %7
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 10
  br label %231

34:                                               ; preds = %27
  %35 = sext i32 %30 to i64
  %36 = add i32 %7, 1
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i64 [ %35, %34 ], [ %52, %37 ]
  %39 = phi i32 [ 0, %34 ], [ %51, %37 ]
  %40 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %38
  %41 = load i32, ptr %40, align 4, !tbaa !61
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [64 x i16], ptr %28, i64 0, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !65
  %45 = tail call i16 @llvm.abs.i16(i16 %44, i1 false)
  %46 = zext i16 %45 to i32
  %47 = lshr i32 %46, %9
  %48 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %38
  store i32 %47, ptr %48, align 4, !tbaa !61
  %49 = icmp eq i32 %47, 1
  %50 = trunc i64 %38 to i32
  %51 = select i1 %49, i32 %50, i32 %39
  %52 = add nsw i64 %38, 1
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %36, %53
  br i1 %54, label %55, label %37, !llvm.loop !372

55:                                               ; preds = %37
  %.lcssa = phi i32 [ %51, %37 ]
  %56 = sext i32 %.lcssa to i64
  %57 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 11
  %58 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 10
  br i1 %31, label %231, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %57, align 8, !tbaa !351
  %61 = load i32, ptr %58, align 8, !tbaa !358
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %60, i64 %62
  %64 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 8
  %65 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 1
  %66 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 5
  %67 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 6
  %68 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 4
  %69 = sext i32 %30 to i64
  %70 = add i32 %7, 1
  br label %71

71:                                               ; preds = %224, %59
  %72 = phi i64 [ %69, %59 ], [ %228, %224 ]
  %73 = phi i32 [ 0, %59 ], [ %227, %224 ]
  %74 = phi i32 [ 0, %59 ], [ %226, %224 ]
  %75 = phi ptr [ %63, %59 ], [ %225, %224 ]
  %76 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %72
  %77 = load i32, ptr %76, align 4, !tbaa !61
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %71
  %80 = icmp sle i64 %72, %56
  %81 = icmp sgt i32 %73, 15
  %82 = select i1 %81, i1 %80, i1 false
  br i1 %82, label %85, label %161

83:                                               ; preds = %71
  %84 = add nsw i32 %73, 1
  br label %224

85:                                               ; preds = %157, %79
  %86 = phi i32 [ %158, %157 ], [ %73, %79 ]
  %87 = phi i32 [ 0, %157 ], [ %74, %79 ]
  %88 = phi ptr [ %159, %157 ], [ %75, %79 ]
  tail call fastcc void @emit_eobrun(ptr noundef %5) #30
  %89 = load i32, ptr %64, align 8, !tbaa !355
  %90 = load i32, ptr %65, align 8, !tbaa !353
  %91 = icmp eq i32 %90, 0
  %92 = sext i32 %89 to i64
  br i1 %91, label %99, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 15, i64 %92
  %95 = load ptr, ptr %94, align 8, !tbaa !25
  %96 = getelementptr inbounds i64, ptr %95, i64 240
  %97 = load i64, ptr %96, align 8, !tbaa !273
  %98 = add nsw i64 %97, 1
  store i64 %98, ptr %96, align 8, !tbaa !273
  br label %157

99:                                               ; preds = %85
  %100 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 14, i64 %92
  %101 = load ptr, ptr %100, align 8, !tbaa !25
  %102 = getelementptr inbounds [256 x i32], ptr %101, i64 0, i64 240
  %103 = load i32, ptr %102, align 4, !tbaa !61
  %104 = getelementptr inbounds %struct.c_derived_tbl, ptr %101, i64 0, i32 1, i64 240
  %105 = load i8, ptr %104, align 1, !tbaa !19
  %106 = sext i8 %105 to i32
  %107 = zext i32 %103 to i64
  %108 = load i32, ptr %66, align 8, !tbaa !360
  %109 = icmp eq i8 %105, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %99
  %111 = load ptr, ptr %67, align 8, !tbaa !352
  %112 = load ptr, ptr %111, align 8, !tbaa !15
  %113 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 5
  store i32 39, ptr %113, align 8, !tbaa !16
  %114 = load ptr, ptr %112, align 8, !tbaa !20
  tail call void %114(ptr noundef nonnull %111) #28
  %115 = load i32, ptr %65, align 8, !tbaa !353
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %157

117:                                              ; preds = %110, %99
  %118 = zext i32 %106 to i64
  %119 = shl nsw i64 -1, %118
  %120 = xor i64 %119, -1
  %121 = and i64 %120, %107
  %122 = add nsw i32 %108, %106
  %123 = sub nsw i32 24, %122
  %124 = zext i32 %123 to i64
  %125 = shl i64 %121, %124
  %126 = load i64, ptr %68, align 8, !tbaa !359
  %127 = or i64 %126, %125
  %128 = icmp sgt i32 %122, 7
  br i1 %128, label %129, label %154

129:                                              ; preds = %150, %117
  %130 = phi i64 [ %151, %150 ], [ %127, %117 ]
  %131 = phi i32 [ %152, %150 ], [ %122, %117 ]
  %132 = lshr i64 %130, 16
  %133 = trunc i64 %132 to i8
  %134 = load ptr, ptr %13, align 8, !tbaa !363
  %135 = getelementptr inbounds i8, ptr %134, i64 1
  store ptr %135, ptr %13, align 8, !tbaa !363
  store i8 %133, ptr %134, align 1, !tbaa !19
  %136 = load i64, ptr %16, align 8, !tbaa !364
  %137 = add i64 %136, -1
  store i64 %137, ptr %16, align 8, !tbaa !364
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  tail call fastcc void @dump_buffer(ptr noundef nonnull %5) #30
  br label %140

140:                                              ; preds = %139, %129
  %141 = and i64 %130, 16711680
  %142 = icmp eq i64 %141, 16711680
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load ptr, ptr %13, align 8, !tbaa !363
  %145 = getelementptr inbounds i8, ptr %144, i64 1
  store ptr %145, ptr %13, align 8, !tbaa !363
  store i8 0, ptr %144, align 1, !tbaa !19
  %146 = load i64, ptr %16, align 8, !tbaa !364
  %147 = add i64 %146, -1
  store i64 %147, ptr %16, align 8, !tbaa !364
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  tail call fastcc void @dump_buffer(ptr noundef nonnull %5) #30
  br label %150

150:                                              ; preds = %149, %143, %140
  %151 = shl i64 %130, 8
  %152 = add nsw i32 %131, -8
  %153 = icmp sgt i32 %131, 15
  br i1 %153, label %129, label %154, !llvm.loop !366

154:                                              ; preds = %150, %117
  %155 = phi i32 [ %122, %117 ], [ %152, %150 ]
  %156 = phi i64 [ %127, %117 ], [ %151, %150 ]
  store i64 %156, ptr %68, align 8, !tbaa !359
  store i32 %155, ptr %66, align 8, !tbaa !360
  br label %157

157:                                              ; preds = %154, %110, %93
  %158 = add nsw i32 %86, -16
  tail call fastcc void @emit_buffered_bits(ptr noundef nonnull %5, ptr noundef %88, i32 noundef %87) #30
  %159 = load ptr, ptr %57, align 8, !tbaa !351
  %160 = icmp sgt i32 %86, 31
  br i1 %160, label %85, label %161, !llvm.loop !373

161:                                              ; preds = %157, %79
  %162 = phi ptr [ %75, %79 ], [ %159, %157 ]
  %163 = phi i32 [ %74, %79 ], [ 0, %157 ]
  %164 = phi i32 [ %73, %79 ], [ %158, %157 ]
  %165 = icmp sgt i32 %77, 1
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = trunc i32 %77 to i8
  %168 = and i8 %167, 1
  %169 = add i32 %163, 1
  %170 = zext i32 %163 to i64
  %171 = getelementptr inbounds i8, ptr %162, i64 %170
  store i8 %168, ptr %171, align 1, !tbaa !19
  br label %224

172:                                              ; preds = %161
  tail call fastcc void @emit_eobrun(ptr noundef %5) #30
  %173 = load i32, ptr %64, align 8, !tbaa !355
  %174 = shl i32 %164, 4
  %175 = or i32 %174, 1
  tail call fastcc void @emit_symbol(ptr noundef %5, i32 noundef %173, i32 noundef %175) #30
  %176 = load i32, ptr %65, align 8, !tbaa !353
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %222

178:                                              ; preds = %172
  %179 = load i32, ptr %66, align 8, !tbaa !360
  %180 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %72
  %181 = load i32, ptr %180, align 4, !tbaa !61
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [64 x i16], ptr %28, i64 0, i64 %182
  %184 = load i16, ptr %183, align 2, !tbaa !65
  %185 = icmp sgt i16 %184, -1
  %186 = zext i1 %185 to i64
  %187 = add nsw i32 %179, 1
  %188 = sub nsw i32 23, %179
  %189 = zext i32 %188 to i64
  %190 = shl nuw i64 %186, %189
  %191 = load i64, ptr %68, align 8, !tbaa !359
  %192 = or i64 %190, %191
  %193 = icmp sgt i32 %179, 6
  br i1 %193, label %194, label %219

194:                                              ; preds = %215, %178
  %195 = phi i64 [ %216, %215 ], [ %192, %178 ]
  %196 = phi i32 [ %217, %215 ], [ %187, %178 ]
  %197 = lshr i64 %195, 16
  %198 = trunc i64 %197 to i8
  %199 = load ptr, ptr %13, align 8, !tbaa !363
  %200 = getelementptr inbounds i8, ptr %199, i64 1
  store ptr %200, ptr %13, align 8, !tbaa !363
  store i8 %198, ptr %199, align 1, !tbaa !19
  %201 = load i64, ptr %16, align 8, !tbaa !364
  %202 = add i64 %201, -1
  store i64 %202, ptr %16, align 8, !tbaa !364
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %194
  tail call fastcc void @dump_buffer(ptr noundef nonnull %5) #30
  br label %205

205:                                              ; preds = %204, %194
  %206 = and i64 %195, 16711680
  %207 = icmp eq i64 %206, 16711680
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = load ptr, ptr %13, align 8, !tbaa !363
  %210 = getelementptr inbounds i8, ptr %209, i64 1
  store ptr %210, ptr %13, align 8, !tbaa !363
  store i8 0, ptr %209, align 1, !tbaa !19
  %211 = load i64, ptr %16, align 8, !tbaa !364
  %212 = add i64 %211, -1
  store i64 %212, ptr %16, align 8, !tbaa !364
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  tail call fastcc void @dump_buffer(ptr noundef nonnull %5) #30
  br label %215

215:                                              ; preds = %214, %208, %205
  %216 = shl i64 %195, 8
  %217 = add nsw i32 %196, -8
  %218 = icmp sgt i32 %196, 15
  br i1 %218, label %194, label %219, !llvm.loop !366

219:                                              ; preds = %215, %178
  %220 = phi i32 [ %187, %178 ], [ %217, %215 ]
  %221 = phi i64 [ %192, %178 ], [ %216, %215 ]
  store i64 %221, ptr %68, align 8, !tbaa !359
  store i32 %220, ptr %66, align 8, !tbaa !360
  br label %222

222:                                              ; preds = %219, %172
  tail call fastcc void @emit_buffered_bits(ptr noundef nonnull %5, ptr noundef %162, i32 noundef %163) #30
  %223 = load ptr, ptr %57, align 8, !tbaa !351
  br label %224

224:                                              ; preds = %222, %166, %83
  %225 = phi ptr [ %75, %83 ], [ %162, %166 ], [ %223, %222 ]
  %226 = phi i32 [ %74, %83 ], [ %169, %166 ], [ 0, %222 ]
  %227 = phi i32 [ %84, %83 ], [ %164, %166 ], [ 0, %222 ]
  %228 = add nsw i64 %72, 1
  %229 = trunc i64 %228 to i32
  %230 = icmp eq i32 %70, %229
  br i1 %230, label %231, label %71, !llvm.loop !374

231:                                              ; preds = %224, %55, %32
  %232 = phi ptr [ %58, %55 ], [ %33, %32 ], [ %58, %224 ]
  %233 = phi i32 [ 0, %55 ], [ 0, %32 ], [ %226, %224 ]
  %234 = phi i32 [ 0, %55 ], [ 0, %32 ], [ %227, %224 ]
  %235 = icmp sgt i32 %234, 0
  %236 = icmp ne i32 %233, 0
  %237 = select i1 %235, i1 true, i1 %236
  br i1 %237, label %238, label %248

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 9
  %240 = load i32, ptr %239, align 4, !tbaa !357
  %241 = add i32 %240, 1
  store i32 %241, ptr %239, align 4, !tbaa !357
  %242 = load i32, ptr %232, align 8, !tbaa !358
  %243 = add i32 %242, %233
  store i32 %243, ptr %232, align 8, !tbaa !358
  %244 = icmp eq i32 %241, 32767
  %245 = icmp ugt i32 %243, 937
  %246 = select i1 %244, i1 true, i1 %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %238
  tail call fastcc void @emit_eobrun(ptr noundef nonnull %5) #30
  br label %248

248:                                              ; preds = %247, %238, %231
  %249 = load ptr, ptr %13, align 8, !tbaa !363
  %250 = load ptr, ptr %10, align 8, !tbaa !22
  store ptr %249, ptr %250, align 8, !tbaa !194
  %251 = load i64, ptr %16, align 8, !tbaa !364
  %252 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %250, i64 0, i32 1
  store i64 %251, ptr %252, align 8, !tbaa !195
  %253 = load i32, ptr %17, align 8, !tbaa !181
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %267, label %255

255:                                              ; preds = %248
  %256 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 12
  %257 = load i32, ptr %256, align 8, !tbaa !361
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 13
  %261 = load i32, ptr %260, align 4, !tbaa !362
  %262 = add nsw i32 %261, 1
  %263 = and i32 %262, 7
  store i32 %263, ptr %260, align 4, !tbaa !362
  br label %264

264:                                              ; preds = %259, %255
  %265 = phi i32 [ %253, %259 ], [ %257, %255 ]
  %266 = add i32 %265, -1
  store i32 %266, ptr %256, align 8, !tbaa !361
  br label %267

267:                                              ; preds = %264, %248
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #29
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal void @finish_pass_gather_phuff(ptr noundef %0) #0 {
  %2 = alloca [4 x i32], align 16
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #29
  tail call fastcc void @emit_eobrun(ptr noundef %4) #30
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %6 = load i32, ptr %5, align 4, !tbaa !155
  %7 = icmp eq i32 %6, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %9 = load i32, ptr %8, align 4, !tbaa !162
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  br label %13

13:                                               ; preds = %45, %11
  %14 = phi i32 [ %9, %11 ], [ %46, %45 ]
  %15 = phi i64 [ 0, %11 ], [ %47, %45 ]
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  br i1 %7, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, ptr %12, align 4, !tbaa !156
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %17, i64 0, i32 5
  br label %25

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %17, i64 0, i32 6
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi ptr [ %22, %21 ], [ %24, %23 ]
  %27 = load i32, ptr %26, align 4, !tbaa !61
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !61
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %28
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %28
  %35 = select i1 %7, ptr %33, ptr %34
  %36 = load ptr, ptr %35, align 8, !tbaa !25
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #28
  store ptr %39, ptr %35, align 8, !tbaa !25
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi ptr [ %39, %38 ], [ %36, %32 ]
  %42 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 15, i64 %28
  %43 = load ptr, ptr %42, align 8, !tbaa !25
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %41, ptr noundef %43) #28
  store i32 1, ptr %29, align 4, !tbaa !61
  %44 = load i32, ptr %8, align 4, !tbaa !162
  br label %45

45:                                               ; preds = %40, %25, %18
  %46 = phi i32 [ %14, %25 ], [ %44, %40 ], [ %14, %18 ]
  %47 = add nuw nsw i64 %15, 1
  %48 = sext i32 %46 to i64
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %13, label %50, !llvm.loop !375

50:                                               ; preds = %45, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @finish_pass_phuff(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %3, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !363
  %8 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !195
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %3, i64 0, i32 3
  store i64 %9, ptr %10, align 8, !tbaa !364
  tail call fastcc void @emit_eobrun(ptr noundef %3) #30
  tail call fastcc void @flush_bits.21(ptr noundef %3) #30
  %11 = load ptr, ptr %7, align 8, !tbaa !363
  %12 = load ptr, ptr %4, align 8, !tbaa !22
  store ptr %11, ptr %12, align 8, !tbaa !194
  %13 = load i64, ptr %10, align 8, !tbaa !364
  %14 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %12, i64 0, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !195
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_eobrun(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !357
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
  br i1 %9, label %10, label %4, !llvm.loop !376

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %8, %4 ]
  %12 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !355
  %14 = shl i32 %11, 4
  tail call fastcc void @emit_symbol(ptr noundef %0, i32 noundef %13, i32 noundef %14) #30
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %68, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 5
  %18 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !353
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %16
  %22 = load i32, ptr %17, align 8, !tbaa !360
  %23 = load i32, ptr %2, align 4, !tbaa !357
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
  %34 = load i64, ptr %33, align 8, !tbaa !359
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
  %45 = load ptr, ptr %38, align 8, !tbaa !363
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %46, ptr %38, align 8, !tbaa !363
  store i8 %44, ptr %45, align 1, !tbaa !19
  %47 = load i64, ptr %39, align 8, !tbaa !364
  %48 = add i64 %47, -1
  store i64 %48, ptr %39, align 8, !tbaa !364
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #30
  br label %51

51:                                               ; preds = %50, %40
  %52 = and i64 %41, 16711680
  %53 = icmp eq i64 %52, 16711680
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load ptr, ptr %38, align 8, !tbaa !363
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  store ptr %56, ptr %38, align 8, !tbaa !363
  store i8 0, ptr %55, align 1, !tbaa !19
  %57 = load i64, ptr %39, align 8, !tbaa !364
  %58 = add i64 %57, -1
  store i64 %58, ptr %39, align 8, !tbaa !364
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #30
  br label %61

61:                                               ; preds = %60, %54, %51
  %62 = shl i64 %41, 8
  %63 = add nsw i32 %42, -8
  %64 = icmp sgt i32 %42, 15
  br i1 %64, label %40, label %65, !llvm.loop !366

65:                                               ; preds = %61, %21
  %66 = phi i32 [ %29, %21 ], [ %63, %61 ]
  %67 = phi i64 [ %35, %21 ], [ %62, %61 ]
  store i64 %67, ptr %33, align 8, !tbaa !359
  store i32 %66, ptr %17, align 8, !tbaa !360
  br label %68

68:                                               ; preds = %65, %16, %10
  store i32 0, ptr %2, align 4, !tbaa !357
  %69 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 11
  %70 = load ptr, ptr %69, align 8, !tbaa !351
  %71 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 10
  %72 = load i32, ptr %71, align 8, !tbaa !358
  tail call fastcc void @emit_buffered_bits(ptr noundef nonnull %0, ptr noundef %70, i32 noundef %72) #30
  store i32 0, ptr %71, align 8, !tbaa !358
  br label %73

73:                                               ; preds = %68, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @flush_bits.21(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !353
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !360
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %6
  %10 = sub nsw i32 17, %7
  %11 = zext i32 %10 to i64
  %12 = shl i64 127, %11
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !359
  %15 = or i64 %12, %14
  %16 = add nsw i32 %7, 7
  %17 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  br label %19

19:                                               ; preds = %40, %9
  %20 = phi i64 [ %15, %9 ], [ %41, %40 ]
  %21 = phi i32 [ %16, %9 ], [ %42, %40 ]
  %22 = lshr i64 %20, 16
  %23 = trunc i64 %22 to i8
  %24 = load ptr, ptr %17, align 8, !tbaa !363
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %25, ptr %17, align 8, !tbaa !363
  store i8 %23, ptr %24, align 1, !tbaa !19
  %26 = load i64, ptr %18, align 8, !tbaa !364
  %27 = add i64 %26, -1
  store i64 %27, ptr %18, align 8, !tbaa !364
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #30
  br label %30

30:                                               ; preds = %29, %19
  %31 = and i64 %20, 16711680
  %32 = icmp eq i64 %31, 16711680
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load ptr, ptr %17, align 8, !tbaa !363
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %35, ptr %17, align 8, !tbaa !363
  store i8 0, ptr %34, align 1, !tbaa !19
  %36 = load i64, ptr %18, align 8, !tbaa !364
  %37 = add i64 %36, -1
  store i64 %37, ptr %18, align 8, !tbaa !364
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #30
  br label %40

40:                                               ; preds = %39, %33, %30
  %41 = shl i64 %20, 8
  %42 = add nsw i32 %21, -8
  %43 = icmp sgt i32 %21, 15
  br i1 %43, label %19, label %44, !llvm.loop !366

44:                                               ; preds = %40, %6, %1
  %45 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 4
  store i64 0, ptr %45, align 8, !tbaa !359
  store i32 0, ptr %2, align 8, !tbaa !360
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @dump_buffer(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = tail call i32 %7(ptr noundef %3) #28
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !352
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 22, ptr %13, align 8, !tbaa !16
  %14 = load ptr, ptr %12, align 8, !tbaa !20
  tail call void %14(ptr noundef nonnull %11) #28
  br label %15

15:                                               ; preds = %10, %1
  %16 = load ptr, ptr %5, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !363
  %18 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %5, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !195
  %20 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !364
  ret void
}

; Function Attrs: inlinehint nounwind optsize uwtable
define internal fastcc void @emit_symbol(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 {
  %4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !353
  %6 = icmp eq i32 %5, 0
  %7 = sext i32 %1 to i64
  %8 = sext i32 %2 to i64
  br i1 %6, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 15, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = getelementptr inbounds i64, ptr %11, i64 %8
  %13 = load i64, ptr %12, align 8, !tbaa !273
  %14 = add nsw i64 %13, 1
  store i64 %14, ptr %12, align 8, !tbaa !273
  br label %79

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 14, i64 %7
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %8
  %19 = load i32, ptr %18, align 4, !tbaa !61
  %20 = getelementptr inbounds %struct.c_derived_tbl, ptr %17, i64 0, i32 1, i64 %8
  %21 = load i8, ptr %20, align 1, !tbaa !19
  %22 = sext i8 %21 to i32
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !360
  %26 = icmp eq i8 %21, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !352
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i64 0, i32 5
  store i32 39, ptr %31, align 8, !tbaa !16
  %32 = load ptr, ptr %30, align 8, !tbaa !20
  tail call void %32(ptr noundef nonnull %29) #28
  %33 = load i32, ptr %4, align 8, !tbaa !353
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
  %45 = load i64, ptr %44, align 8, !tbaa !359
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
  %56 = load ptr, ptr %49, align 8, !tbaa !363
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %57, ptr %49, align 8, !tbaa !363
  store i8 %55, ptr %56, align 1, !tbaa !19
  %58 = load i64, ptr %50, align 8, !tbaa !364
  %59 = add i64 %58, -1
  store i64 %59, ptr %50, align 8, !tbaa !364
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #30
  br label %62

62:                                               ; preds = %61, %51
  %63 = and i64 %52, 16711680
  %64 = icmp eq i64 %63, 16711680
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load ptr, ptr %49, align 8, !tbaa !363
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %67, ptr %49, align 8, !tbaa !363
  store i8 0, ptr %66, align 1, !tbaa !19
  %68 = load i64, ptr %50, align 8, !tbaa !364
  %69 = add i64 %68, -1
  store i64 %69, ptr %50, align 8, !tbaa !364
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #30
  br label %72

72:                                               ; preds = %71, %65, %62
  %73 = shl i64 %52, 8
  %74 = add nsw i32 %53, -8
  %75 = icmp sgt i32 %53, 15
  br i1 %75, label %51, label %76, !llvm.loop !366

76:                                               ; preds = %72, %35
  %77 = phi i32 [ %40, %35 ], [ %74, %72 ]
  %78 = phi i64 [ %46, %35 ], [ %73, %72 ]
  store i64 %78, ptr %44, align 8, !tbaa !359
  store i32 %77, ptr %24, align 8, !tbaa !360
  br label %79

79:                                               ; preds = %76, %27, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_buffered_bits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !353
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
  %17 = load i32, ptr %4, align 8, !tbaa !353
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %14
  %20 = load i32, ptr %10, align 8, !tbaa !360
  %21 = load i8, ptr %15, align 1, !tbaa !19
  %22 = and i8 %21, 1
  %23 = zext i8 %22 to i64
  %24 = add nsw i32 %20, 1
  %25 = sub nsw i32 23, %20
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %23, %26
  %28 = load i64, ptr %11, align 8, !tbaa !359
  %29 = or i64 %27, %28
  %30 = icmp sgt i32 %20, 6
  br i1 %30, label %31, label %56

31:                                               ; preds = %52, %19
  %32 = phi i64 [ %53, %52 ], [ %29, %19 ]
  %33 = phi i32 [ %54, %52 ], [ %24, %19 ]
  %34 = lshr i64 %32, 16
  %35 = trunc i64 %34 to i8
  %36 = load ptr, ptr %12, align 8, !tbaa !363
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %37, ptr %12, align 8, !tbaa !363
  store i8 %35, ptr %36, align 1, !tbaa !19
  %38 = load i64, ptr %13, align 8, !tbaa !364
  %39 = add i64 %38, -1
  store i64 %39, ptr %13, align 8, !tbaa !364
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #30
  br label %42

42:                                               ; preds = %41, %31
  %43 = and i64 %32, 16711680
  %44 = icmp eq i64 %43, 16711680
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load ptr, ptr %12, align 8, !tbaa !363
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %47, ptr %12, align 8, !tbaa !363
  store i8 0, ptr %46, align 1, !tbaa !19
  %48 = load i64, ptr %13, align 8, !tbaa !364
  %49 = add i64 %48, -1
  store i64 %49, ptr %13, align 8, !tbaa !364
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #30
  br label %52

52:                                               ; preds = %51, %45, %42
  %53 = shl i64 %32, 8
  %54 = add nsw i32 %33, -8
  %55 = icmp sgt i32 %33, 15
  br i1 %55, label %31, label %56, !llvm.loop !366

56:                                               ; preds = %52, %19
  %57 = phi i32 [ %24, %19 ], [ %54, %52 ]
  %58 = phi i64 [ %29, %19 ], [ %53, %52 ]
  store i64 %58, ptr %11, align 8, !tbaa !359
  store i32 %57, ptr %10, align 8, !tbaa !360
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
define internal fastcc void @emit_restart(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @emit_eobrun(ptr noundef %0) #30
  %3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !353
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  tail call fastcc void @flush_bits.21(ptr noundef nonnull %0) #30
  %7 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !363
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %9, ptr %7, align 8, !tbaa !363
  store i8 -1, ptr %8, align 1, !tbaa !19
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !364
  %12 = add i64 %11, -1
  store i64 %12, ptr %10, align 8, !tbaa !364
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #30
  br label %15

15:                                               ; preds = %14, %6
  %16 = trunc i32 %1 to i8
  %17 = add i8 %16, -48
  %18 = load ptr, ptr %7, align 8, !tbaa !363
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %19, ptr %7, align 8, !tbaa !363
  store i8 %17, ptr %18, align 1, !tbaa !19
  %20 = load i64, ptr %10, align 8, !tbaa !364
  %21 = add i64 %20, -1
  store i64 %21, ptr %10, align 8, !tbaa !364
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #30
  br label %24

24:                                               ; preds = %23, %15, %2
  %25 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !352
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i64 0, i32 47
  %28 = load i32, ptr %27, align 4, !tbaa !155
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i64 0, i32 41
  %32 = load i32, ptr %31, align 4, !tbaa !162
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %34, %30
  %35 = phi i64 [ %37, %34 ], [ 0, %30 ]
  %36 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 7, i64 %35
  store i32 0, ptr %36, align 4, !tbaa !61
  %37 = add nuw nsw i64 %35, 1
  %38 = load i32, ptr %31, align 4, !tbaa !162
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %34, label %44, !llvm.loop !377

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 9
  store i32 0, ptr %42, align 4, !tbaa !357
  %43 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 10
  store i32 0, ptr %43, align 8, !tbaa !358
  br label %44

44:                                               ; preds = %41, %34, %30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jinit_forward_dct(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 96) #28
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  store ptr %5, ptr %6, align 8, !tbaa !145
  store ptr @start_pass_fdctmgr, ptr %5, align 8, !tbaa !378
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 28
  %8 = load i32, ptr %7, align 4, !tbaa !380
  switch i32 %8, label %18 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %15
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @forward_DCT, ptr %10, align 8, !tbaa !381
  %11 = getelementptr inbounds %struct.my_fdct_controller, ptr %5, i64 0, i32 1
  store ptr @jpeg_fdct_islow, ptr %11, align 8, !tbaa !382
  br label %22

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @forward_DCT, ptr %13, align 8, !tbaa !381
  %14 = getelementptr inbounds %struct.my_fdct_controller, ptr %5, i64 0, i32 1
  store ptr @jpeg_fdct_ifast, ptr %14, align 8, !tbaa !382
  br label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %5, i64 0, i32 1
  store ptr @forward_DCT_float, ptr %16, align 8, !tbaa !381
  %17 = getelementptr inbounds %struct.my_fdct_controller, ptr %5, i64 0, i32 3
  store ptr @jpeg_fdct_float, ptr %17, align 8, !tbaa !383
  br label %22

18:                                               ; preds = %1
  %19 = load ptr, ptr %0, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 47, ptr %20, align 8, !tbaa !16
  %21 = load ptr, ptr %19, align 8, !tbaa !20
  tail call void %21(ptr noundef nonnull %0) #28
  br label %22

22:                                               ; preds = %18, %15, %12, %9
  %23 = getelementptr i8, ptr %5, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false), !tbaa !25
  %24 = getelementptr i8, ptr %5, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false), !tbaa !25
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_pass_fdctmgr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !79
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %126

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 28
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %121, %7
  %13 = phi i32 [ 0, %7 ], [ %122, %121 ]
  %14 = phi ptr [ %9, %7 ], [ %123, %121 ]
  %15 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !185
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18, %12
  %24 = load ptr, ptr %0, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 5
  store i32 51, ptr %25, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 6
  store i32 %16, ptr %26, align 4, !tbaa !19
  %27 = load ptr, ptr %0, align 8, !tbaa !15
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  tail call void %28(ptr noundef nonnull %0) #28
  br label %29

29:                                               ; preds = %23, %18
  %30 = sext i32 %16 to i64
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !25
  %33 = load i32, ptr %10, align 4, !tbaa !380
  switch i32 %33, label %117 [
    i32 0, label %34
    i32 1, label %53
    i32 2, label %78
  ]

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.my_fdct_controller, ptr %3, i64 0, i32 2, i64 %30
  %36 = load ptr, ptr %35, align 8, !tbaa !25
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load ptr, ptr %11, align 8, !tbaa !7
  %40 = load ptr, ptr %39, align 8, !tbaa !68
  %41 = tail call ptr %40(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 256) #28
  store ptr %41, ptr %35, align 8, !tbaa !25
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi ptr [ %41, %38 ], [ %36, %34 ]
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i64 [ 0, %42 ], [ %51, %44 ]
  %46 = getelementptr inbounds [64 x i16], ptr %32, i64 0, i64 %45
  %47 = load <4 x i16>, ptr %46, align 2, !tbaa !65
  %48 = zext <4 x i16> %47 to <4 x i32>
  %49 = shl nuw nsw <4 x i32> %48, <i32 3, i32 3, i32 3, i32 3>
  %50 = getelementptr inbounds i32, ptr %43, i64 %45
  store <4 x i32> %49, ptr %50, align 4, !tbaa !61
  %51 = add nuw i64 %45, 4
  %52 = icmp eq i64 %51, 64
  br i1 %52, label %121, label %44, !llvm.loop !384

53:                                               ; preds = %29
  %54 = getelementptr inbounds %struct.my_fdct_controller, ptr %3, i64 0, i32 2, i64 %30
  %55 = load ptr, ptr %54, align 8, !tbaa !25
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load ptr, ptr %11, align 8, !tbaa !7
  %59 = load ptr, ptr %58, align 8, !tbaa !68
  %60 = tail call ptr %59(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 256) #28
  store ptr %60, ptr %54, align 8, !tbaa !25
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi ptr [ %60, %57 ], [ %55, %53 ]
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i64 [ 0, %61 ], [ %76, %63 ]
  %65 = getelementptr inbounds [64 x i16], ptr %32, i64 0, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !65
  %67 = zext i16 %66 to i64
  %68 = getelementptr inbounds [64 x i16], ptr @start_pass_fdctmgr.aanscales, i64 0, i64 %64
  %69 = load i16, ptr %68, align 2, !tbaa !65
  %70 = sext i16 %69 to i64
  %71 = mul nsw i64 %70, %67
  %72 = add nsw i64 %71, 1024
  %73 = ashr i64 %72, 11
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds i32, ptr %62, i64 %64
  store i32 %74, ptr %75, align 4, !tbaa !61
  %76 = add nuw nsw i64 %64, 1
  %77 = icmp eq i64 %76, 64
  br i1 %77, label %121, label %63, !llvm.loop !385

78:                                               ; preds = %29
  %79 = getelementptr inbounds %struct.my_fdct_controller, ptr %3, i64 0, i32 4, i64 %30
  %80 = load ptr, ptr %79, align 8, !tbaa !25
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load ptr, ptr %11, align 8, !tbaa !7
  %84 = load ptr, ptr %83, align 8, !tbaa !68
  %85 = tail call ptr %84(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 256) #28
  store ptr %85, ptr %79, align 8, !tbaa !25
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi ptr [ %85, %82 ], [ %80, %78 ]
  br label %88

88:                                               ; preds = %114, %86
  %89 = phi i64 [ 0, %86 ], [ %115, %114 ]
  %90 = phi i64 [ 0, %86 ], [ %95, %114 ]
  %91 = shl i64 %90, 32
  %92 = ashr exact i64 %91, 32
  %93 = getelementptr inbounds [8 x double], ptr @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %89
  %94 = load double, ptr %93, align 8, !tbaa !386
  %95 = add nsw i64 %92, 8
  %96 = insertelement <2 x double> poison, double %94, i64 0
  %97 = shufflevector <2 x double> %96, <2 x double> poison, <2 x i32> zeroinitializer
  br label %98

98:                                               ; preds = %98, %88
  %99 = phi i64 [ 0, %88 ], [ %112, %98 ]
  %100 = add i64 %92, %99
  %101 = getelementptr inbounds [64 x i16], ptr %32, i64 0, i64 %100
  %102 = load <2 x i16>, ptr %101, align 2, !tbaa !65
  %103 = uitofp <2 x i16> %102 to <2 x double>
  %104 = fmul <2 x double> %97, %103
  %105 = getelementptr inbounds [8 x double], ptr @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %99
  %106 = load <2 x double>, ptr %105, align 16, !tbaa !386
  %107 = fmul <2 x double> %104, %106
  %108 = fmul <2 x double> %107, <double 8.000000e+00, double 8.000000e+00>
  %109 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %108
  %110 = fptrunc <2 x double> %109 to <2 x float>
  %111 = getelementptr inbounds float, ptr %87, i64 %100
  store <2 x float> %110, ptr %111, align 4, !tbaa !387
  %112 = add nuw i64 %99, 2
  %113 = icmp eq i64 %112, 8
  br i1 %113, label %114, label %98, !llvm.loop !389

114:                                              ; preds = %98
  %115 = add nuw nsw i64 %89, 1
  %116 = icmp eq i64 %115, 8
  br i1 %116, label %121, label %88, !llvm.loop !390

117:                                              ; preds = %29
  %118 = load ptr, ptr %0, align 8, !tbaa !15
  %119 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 5
  store i32 47, ptr %119, align 8, !tbaa !16
  %120 = load ptr, ptr %118, align 8, !tbaa !20
  tail call void %120(ptr noundef nonnull %0) #28
  br label %121

121:                                              ; preds = %117, %114, %63, %44
  %122 = add nuw nsw i32 %13, 1
  %123 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %14, i64 1
  %124 = load i32, ptr %4, align 4, !tbaa !79
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %12, label %126, !llvm.loop !391

126:                                              ; preds = %121, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @forward_DCT(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca [64 x i32], align 16
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %10 = load ptr, ptr %9, align 8, !tbaa !145
  %11 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !382
  %13 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !185
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #29
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
  %31 = load ptr, ptr %30, align 8, !tbaa !25
  %32 = getelementptr inbounds i8, ptr %31, i64 %26
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %32, align 1, !tbaa !19
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -128
  %37 = getelementptr inbounds i32, ptr %29, i64 1
  store i32 %36, ptr %29, align 4, !tbaa !61
  %38 = getelementptr inbounds i8, ptr %32, i64 2
  %39 = load i8, ptr %33, align 1, !tbaa !19
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, -128
  %42 = getelementptr inbounds i32, ptr %29, i64 2
  store i32 %41, ptr %37, align 4, !tbaa !61
  %43 = getelementptr inbounds i8, ptr %32, i64 3
  %44 = load i8, ptr %38, align 1, !tbaa !19
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, -128
  %47 = getelementptr inbounds i32, ptr %29, i64 3
  store i32 %46, ptr %42, align 4, !tbaa !61
  %48 = getelementptr inbounds i8, ptr %32, i64 4
  %49 = load i8, ptr %43, align 1, !tbaa !19
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, -128
  %52 = getelementptr inbounds i32, ptr %29, i64 4
  store i32 %51, ptr %47, align 4, !tbaa !61
  %53 = getelementptr inbounds i8, ptr %32, i64 5
  %54 = load i8, ptr %48, align 1, !tbaa !19
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, -128
  %57 = getelementptr inbounds i32, ptr %29, i64 5
  store i32 %56, ptr %52, align 4, !tbaa !61
  %58 = getelementptr inbounds i8, ptr %32, i64 6
  %59 = load i8, ptr %53, align 1, !tbaa !19
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %60, -128
  %62 = getelementptr inbounds i32, ptr %29, i64 6
  store i32 %61, ptr %57, align 4, !tbaa !61
  %63 = getelementptr inbounds i8, ptr %32, i64 7
  %64 = load i8, ptr %58, align 1, !tbaa !19
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, -128
  %67 = getelementptr inbounds i32, ptr %29, i64 7
  store i32 %66, ptr %62, align 4, !tbaa !61
  %68 = load i8, ptr %63, align 1, !tbaa !19
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %69, -128
  %71 = getelementptr inbounds i32, ptr %29, i64 8
  store i32 %70, ptr %67, align 4, !tbaa !61
  %72 = add nuw nsw i64 %28, 1
  %73 = icmp eq i64 %72, 8
  br i1 %73, label %74, label %27, !llvm.loop !392

74:                                               ; preds = %27
  call void %12(ptr noundef nonnull %8) #28
  %75 = getelementptr inbounds [64 x i16], ptr %3, i64 %24
  br label %76

76:                                               ; preds = %97, %74
  %77 = phi i64 [ 0, %74 ], [ %101, %97 ]
  %78 = getelementptr inbounds i32, ptr %17, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !61
  %80 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %77
  %81 = load i32, ptr %80, align 4, !tbaa !61
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
  store i16 %99, ptr %100, align 2, !tbaa !65
  %101 = add nuw nsw i64 %77, 1
  %102 = icmp eq i64 %101, 64
  br i1 %102, label %103, label %76, !llvm.loop !393

103:                                              ; preds = %97
  %104 = add nuw nsw i64 %24, 1
  %105 = add i32 %25, 8
  %106 = icmp eq i64 %104, %22
  br i1 %106, label %107, label %23, !llvm.loop !394

107:                                              ; preds = %103, %7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @forward_DCT_float(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca [64 x float], align 16
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %10 = load ptr, ptr %9, align 8, !tbaa !145
  %11 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !383
  %13 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !185
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 4, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #29
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
  %31 = load ptr, ptr %30, align 8, !tbaa !25
  %32 = getelementptr inbounds i8, ptr %31, i64 %26
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %32, align 1, !tbaa !19
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -128
  %37 = sitofp i32 %36 to float
  %38 = getelementptr inbounds float, ptr %29, i64 1
  store float %37, ptr %29, align 4, !tbaa !387
  %39 = getelementptr inbounds i8, ptr %32, i64 2
  %40 = load i8, ptr %33, align 1, !tbaa !19
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, -128
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds float, ptr %29, i64 2
  store float %43, ptr %38, align 4, !tbaa !387
  %45 = getelementptr inbounds i8, ptr %32, i64 3
  %46 = load i8, ptr %39, align 1, !tbaa !19
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %47, -128
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds float, ptr %29, i64 3
  store float %49, ptr %44, align 4, !tbaa !387
  %51 = getelementptr inbounds i8, ptr %32, i64 4
  %52 = load i8, ptr %45, align 1, !tbaa !19
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, -128
  %55 = sitofp i32 %54 to float
  %56 = getelementptr inbounds float, ptr %29, i64 4
  store float %55, ptr %50, align 4, !tbaa !387
  %57 = getelementptr inbounds i8, ptr %32, i64 5
  %58 = load i8, ptr %51, align 1, !tbaa !19
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, -128
  %61 = sitofp i32 %60 to float
  %62 = getelementptr inbounds float, ptr %29, i64 5
  store float %61, ptr %56, align 4, !tbaa !387
  %63 = getelementptr inbounds i8, ptr %32, i64 6
  %64 = load i8, ptr %57, align 1, !tbaa !19
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, -128
  %67 = sitofp i32 %66 to float
  %68 = getelementptr inbounds float, ptr %29, i64 6
  store float %67, ptr %62, align 4, !tbaa !387
  %69 = getelementptr inbounds i8, ptr %32, i64 7
  %70 = load i8, ptr %63, align 1, !tbaa !19
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, -128
  %73 = sitofp i32 %72 to float
  %74 = getelementptr inbounds float, ptr %29, i64 7
  store float %73, ptr %68, align 4, !tbaa !387
  %75 = load i8, ptr %69, align 1, !tbaa !19
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %76, -128
  %78 = sitofp i32 %77 to float
  %79 = getelementptr inbounds float, ptr %29, i64 8
  store float %78, ptr %74, align 4, !tbaa !387
  %80 = add nuw nsw i64 %28, 1
  %81 = icmp eq i64 %80, 8
  br i1 %81, label %82, label %27, !llvm.loop !395

82:                                               ; preds = %27
  call void %12(ptr noundef nonnull %8) #28
  %83 = getelementptr inbounds [64 x i16], ptr %3, i64 %24
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi i64 [ 0, %82 ], [ %96, %84 ]
  %86 = getelementptr inbounds [64 x float], ptr %8, i64 0, i64 %85
  %87 = load <4 x float>, ptr %86, align 16, !tbaa !387
  %88 = getelementptr inbounds float, ptr %17, i64 %85
  %89 = load <4 x float>, ptr %88, align 4, !tbaa !387
  %90 = fmul <4 x float> %87, %89
  %91 = fadd <4 x float> %90, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %92 = fptosi <4 x float> %91 to <4 x i32>
  %93 = trunc <4 x i32> %92 to <4 x i16>
  %94 = add <4 x i16> %93, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %95 = getelementptr inbounds i16, ptr %83, i64 %85
  store <4 x i16> %94, ptr %95, align 2, !tbaa !65
  %96 = add nuw i64 %85, 4
  %97 = icmp eq i64 %96, 64
  br i1 %97, label %98, label %84, !llvm.loop !396

98:                                               ; preds = %84
  %99 = add nuw nsw i64 %24, 1
  %100 = add i32 %25, 8
  %101 = icmp eq i64 %99, %22
  br i1 %101, label %102, label %23, !llvm.loop !397

102:                                              ; preds = %98, %7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #29
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @jpeg_fdct_ifast(ptr nocapture noundef %0) #12 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 7, %1 ], [ %70, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %69, %2 ]
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds i32, ptr %4, i64 7
  %7 = load i32, ptr %6, align 4, !tbaa !61
  %8 = add nsw i32 %7, %5
  %9 = sub nsw i32 %5, %7
  %10 = getelementptr inbounds i32, ptr %4, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !61
  %12 = getelementptr inbounds i32, ptr %4, i64 6
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = add nsw i32 %13, %11
  %15 = sub nsw i32 %11, %13
  %16 = getelementptr inbounds i32, ptr %4, i64 2
  %17 = load i32, ptr %16, align 4, !tbaa !61
  %18 = getelementptr inbounds i32, ptr %4, i64 5
  %19 = load i32, ptr %18, align 4, !tbaa !61
  %20 = add nsw i32 %19, %17
  %21 = sub nsw i32 %17, %19
  %22 = getelementptr inbounds i32, ptr %4, i64 3
  %23 = load i32, ptr %22, align 4, !tbaa !61
  %24 = getelementptr inbounds i32, ptr %4, i64 4
  %25 = load i32, ptr %24, align 4, !tbaa !61
  %26 = add nsw i32 %25, %23
  %27 = sub nsw i32 %23, %25
  %28 = add nsw i32 %26, %8
  %29 = sub nsw i32 %8, %26
  %30 = add nsw i32 %20, %14
  %31 = sub i32 %14, %20
  %32 = add nsw i32 %28, %30
  store i32 %32, ptr %4, align 4, !tbaa !61
  %33 = sub nsw i32 %28, %30
  store i32 %33, ptr %24, align 4, !tbaa !61
  %34 = add nsw i32 %31, %29
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, 181
  %37 = lshr i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %29, %38
  store i32 %39, ptr %16, align 4, !tbaa !61
  %40 = sub nsw i32 %29, %38
  store i32 %40, ptr %12, align 4, !tbaa !61
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
  store i32 %65, ptr %18, align 4, !tbaa !61
  %66 = sub nsw i32 %64, %53
  store i32 %66, ptr %22, align 4, !tbaa !61
  %67 = add nsw i32 %58, %63
  store i32 %67, ptr %10, align 4, !tbaa !61
  %68 = sub nsw i32 %63, %58
  store i32 %68, ptr %6, align 4, !tbaa !61
  %69 = getelementptr inbounds i32, ptr %4, i64 8
  %70 = add nsw i32 %3, -1
  %71 = icmp eq i32 %3, 0
  br i1 %71, label %72, label %2, !llvm.loop !398

72:                                               ; preds = %72, %2
  %73 = phi i64 [ %140, %72 ], [ 0, %2 ]
  %74 = shl i64 %73, 2
  %75 = getelementptr i8, ptr %0, i64 %74
  %76 = load <4 x i32>, ptr %75, align 4, !tbaa !61
  %77 = getelementptr inbounds i32, ptr %75, i64 56
  %78 = load <4 x i32>, ptr %77, align 4, !tbaa !61
  %79 = add nsw <4 x i32> %78, %76
  %80 = sub nsw <4 x i32> %76, %78
  %81 = getelementptr inbounds i32, ptr %75, i64 8
  %82 = load <4 x i32>, ptr %81, align 4, !tbaa !61
  %83 = getelementptr inbounds i32, ptr %75, i64 48
  %84 = load <4 x i32>, ptr %83, align 4, !tbaa !61
  %85 = add nsw <4 x i32> %84, %82
  %86 = sub nsw <4 x i32> %82, %84
  %87 = getelementptr inbounds i32, ptr %75, i64 16
  %88 = load <4 x i32>, ptr %87, align 4, !tbaa !61
  %89 = getelementptr inbounds i32, ptr %75, i64 40
  %90 = load <4 x i32>, ptr %89, align 4, !tbaa !61
  %91 = add nsw <4 x i32> %90, %88
  %92 = sub nsw <4 x i32> %88, %90
  %93 = getelementptr inbounds i32, ptr %75, i64 24
  %94 = load <4 x i32>, ptr %93, align 4, !tbaa !61
  %95 = getelementptr inbounds i32, ptr %75, i64 32
  %96 = load <4 x i32>, ptr %95, align 4, !tbaa !61
  %97 = add nsw <4 x i32> %96, %94
  %98 = sub nsw <4 x i32> %94, %96
  %99 = add nsw <4 x i32> %97, %79
  %100 = sub nsw <4 x i32> %79, %97
  %101 = add nsw <4 x i32> %91, %85
  %102 = sub <4 x i32> %85, %91
  %103 = add nsw <4 x i32> %99, %101
  store <4 x i32> %103, ptr %75, align 4, !tbaa !61
  %104 = sub nsw <4 x i32> %99, %101
  store <4 x i32> %104, ptr %95, align 4, !tbaa !61
  %105 = add nsw <4 x i32> %102, %100
  %106 = sext <4 x i32> %105 to <4 x i64>
  %107 = mul nsw <4 x i64> %106, <i64 181, i64 181, i64 181, i64 181>
  %108 = lshr <4 x i64> %107, <i64 8, i64 8, i64 8, i64 8>
  %109 = trunc <4 x i64> %108 to <4 x i32>
  %110 = add nsw <4 x i32> %100, %109
  store <4 x i32> %110, ptr %87, align 4, !tbaa !61
  %111 = sub nsw <4 x i32> %100, %109
  store <4 x i32> %111, ptr %83, align 4, !tbaa !61
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
  store <4 x i32> %136, ptr %89, align 4, !tbaa !61
  %137 = sub nsw <4 x i32> %135, %124
  store <4 x i32> %137, ptr %93, align 4, !tbaa !61
  %138 = add nsw <4 x i32> %129, %134
  store <4 x i32> %138, ptr %81, align 4, !tbaa !61
  %139 = sub nsw <4 x i32> %134, %129
  store <4 x i32> %139, ptr %77, align 4, !tbaa !61
  %140 = add nuw i64 %73, 4
  %141 = icmp eq i64 %140, 8
  br i1 %141, label %142, label %72, !llvm.loop !399

142:                                              ; preds = %72
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @jpeg_fdct_float(ptr nocapture noundef %0) #13 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %54, %2 ]
  %4 = shl i64 %3, 5
  %5 = getelementptr i8, ptr %0, i64 %4
  %6 = load <32 x float>, ptr %5, align 4, !tbaa !387
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
  store <32 x float> %53, ptr %5, align 4, !tbaa !387
  %54 = add nuw i64 %3, 4
  %55 = icmp eq i64 %54, 8
  br i1 %55, label %56, label %2, !llvm.loop !400

56:                                               ; preds = %56, %2
  %57 = phi i64 [ %107, %56 ], [ 0, %2 ]
  %58 = shl i64 %57, 2
  %59 = getelementptr i8, ptr %0, i64 %58
  %60 = load <4 x float>, ptr %59, align 4, !tbaa !387
  %61 = getelementptr inbounds float, ptr %59, i64 56
  %62 = load <4 x float>, ptr %61, align 4, !tbaa !387
  %63 = fadd <4 x float> %60, %62
  %64 = fsub <4 x float> %60, %62
  %65 = getelementptr inbounds float, ptr %59, i64 8
  %66 = load <4 x float>, ptr %65, align 4, !tbaa !387
  %67 = getelementptr inbounds float, ptr %59, i64 48
  %68 = load <4 x float>, ptr %67, align 4, !tbaa !387
  %69 = fadd <4 x float> %66, %68
  %70 = fsub <4 x float> %66, %68
  %71 = getelementptr inbounds float, ptr %59, i64 16
  %72 = load <4 x float>, ptr %71, align 4, !tbaa !387
  %73 = getelementptr inbounds float, ptr %59, i64 40
  %74 = load <4 x float>, ptr %73, align 4, !tbaa !387
  %75 = fadd <4 x float> %72, %74
  %76 = fsub <4 x float> %72, %74
  %77 = getelementptr inbounds float, ptr %59, i64 24
  %78 = load <4 x float>, ptr %77, align 4, !tbaa !387
  %79 = getelementptr inbounds float, ptr %59, i64 32
  %80 = load <4 x float>, ptr %79, align 4, !tbaa !387
  %81 = fadd <4 x float> %78, %80
  %82 = fsub <4 x float> %78, %80
  %83 = fadd <4 x float> %63, %81
  %84 = fsub <4 x float> %63, %81
  %85 = fadd <4 x float> %69, %75
  %86 = fsub <4 x float> %69, %75
  %87 = fadd <4 x float> %85, %83
  store <4 x float> %87, ptr %59, align 4, !tbaa !387
  %88 = fsub <4 x float> %83, %85
  store <4 x float> %88, ptr %79, align 4, !tbaa !387
  %89 = fadd <4 x float> %86, %84
  %90 = fmul <4 x float> %89, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %91 = fadd <4 x float> %84, %90
  store <4 x float> %91, ptr %71, align 4, !tbaa !387
  %92 = fsub <4 x float> %84, %90
  store <4 x float> %92, ptr %67, align 4, !tbaa !387
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
  store <4 x float> %103, ptr %73, align 4, !tbaa !387
  %104 = fsub <4 x float> %102, %98
  store <4 x float> %104, ptr %77, align 4, !tbaa !387
  %105 = fadd <4 x float> %101, %99
  store <4 x float> %105, ptr %65, align 4, !tbaa !387
  %106 = fsub <4 x float> %101, %99
  store <4 x float> %106, ptr %61, align 4, !tbaa !387
  %107 = add nuw i64 %57, 4
  %108 = icmp eq i64 %107, 8
  br i1 %108, label %109, label %56, !llvm.loop !401

109:                                              ; preds = %56
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @jpeg_fdct_islow(ptr nocapture noundef %0) #12 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 7, %1 ], [ %92, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %91, %2 ]
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds i32, ptr %4, i64 7
  %7 = load i32, ptr %6, align 4, !tbaa !61
  %8 = add nsw i32 %7, %5
  %9 = sext i32 %8 to i64
  %10 = sub nsw i32 %5, %7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %4, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = getelementptr inbounds i32, ptr %4, i64 6
  %15 = load i32, ptr %14, align 4, !tbaa !61
  %16 = add nsw i32 %15, %13
  %17 = sext i32 %16 to i64
  %18 = sub nsw i32 %13, %15
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %4, i64 2
  %21 = load i32, ptr %20, align 4, !tbaa !61
  %22 = getelementptr inbounds i32, ptr %4, i64 5
  %23 = load i32, ptr %22, align 4, !tbaa !61
  %24 = add nsw i32 %23, %21
  %25 = sext i32 %24 to i64
  %26 = sub nsw i32 %21, %23
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %4, i64 3
  %29 = load i32, ptr %28, align 4, !tbaa !61
  %30 = getelementptr inbounds i32, ptr %4, i64 4
  %31 = load i32, ptr %30, align 4, !tbaa !61
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
  store i32 %42, ptr %4, align 4, !tbaa !61
  %43 = sub nsw i64 %36, %38
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 2
  store i32 %45, ptr %30, align 4, !tbaa !61
  %46 = add nsw i64 %37, %39
  %47 = mul nsw i64 %46, 4433
  %48 = mul nsw i64 %37, 6270
  %49 = add nsw i64 %47, 1024
  %50 = add nsw i64 %49, %48
  %51 = lshr i64 %50, 11
  %52 = trunc i64 %51 to i32
  store i32 %52, ptr %20, align 4, !tbaa !61
  %53 = mul i64 %39, 8796093007071
  %54 = add i64 %49, %53
  %55 = lshr i64 %54, 11
  %56 = trunc i64 %55 to i32
  store i32 %56, ptr %14, align 4, !tbaa !61
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
  store i32 %77, ptr %6, align 4, !tbaa !61
  %78 = add nsw i64 %68, 1024
  %79 = add nsw i64 %78, %64
  %80 = add nsw i64 %79, %72
  %81 = lshr i64 %80, 11
  %82 = trunc i64 %81 to i32
  store i32 %82, ptr %22, align 4, !tbaa !61
  %83 = add nsw i64 %78, %65
  %84 = add nsw i64 %83, %71
  %85 = lshr i64 %84, 11
  %86 = trunc i64 %85 to i32
  store i32 %86, ptr %28, align 4, !tbaa !61
  %87 = add nsw i64 %73, %66
  %88 = add nsw i64 %87, %72
  %89 = lshr i64 %88, 11
  %90 = trunc i64 %89 to i32
  store i32 %90, ptr %12, align 4, !tbaa !61
  %91 = getelementptr inbounds i32, ptr %4, i64 8
  %92 = add nsw i32 %3, -1
  %93 = icmp eq i32 %3, 0
  br i1 %93, label %94, label %2, !llvm.loop !402

94:                                               ; preds = %94, %2
  %95 = phi i64 [ %186, %94 ], [ 0, %2 ]
  %96 = shl i64 %95, 2
  %97 = getelementptr i8, ptr %0, i64 %96
  %98 = load <4 x i32>, ptr %97, align 4, !tbaa !61
  %99 = getelementptr inbounds i32, ptr %97, i64 56
  %100 = load <4 x i32>, ptr %99, align 4, !tbaa !61
  %101 = add nsw <4 x i32> %100, %98
  %102 = sext <4 x i32> %101 to <4 x i64>
  %103 = sub nsw <4 x i32> %98, %100
  %104 = sext <4 x i32> %103 to <4 x i64>
  %105 = getelementptr inbounds i32, ptr %97, i64 8
  %106 = load <4 x i32>, ptr %105, align 4, !tbaa !61
  %107 = getelementptr inbounds i32, ptr %97, i64 48
  %108 = load <4 x i32>, ptr %107, align 4, !tbaa !61
  %109 = add nsw <4 x i32> %108, %106
  %110 = sext <4 x i32> %109 to <4 x i64>
  %111 = sub nsw <4 x i32> %106, %108
  %112 = sext <4 x i32> %111 to <4 x i64>
  %113 = getelementptr inbounds i32, ptr %97, i64 16
  %114 = load <4 x i32>, ptr %113, align 4, !tbaa !61
  %115 = getelementptr inbounds i32, ptr %97, i64 40
  %116 = load <4 x i32>, ptr %115, align 4, !tbaa !61
  %117 = add nsw <4 x i32> %116, %114
  %118 = sext <4 x i32> %117 to <4 x i64>
  %119 = sub nsw <4 x i32> %114, %116
  %120 = sext <4 x i32> %119 to <4 x i64>
  %121 = getelementptr inbounds i32, ptr %97, i64 24
  %122 = load <4 x i32>, ptr %121, align 4, !tbaa !61
  %123 = getelementptr inbounds i32, ptr %97, i64 32
  %124 = load <4 x i32>, ptr %123, align 4, !tbaa !61
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
  store <4 x i32> %136, ptr %97, align 4, !tbaa !61
  %137 = sub nsw <4 x i64> %129, %131
  %138 = add nsw <4 x i64> %137, <i64 2, i64 2, i64 2, i64 2>
  %139 = lshr <4 x i64> %138, <i64 2, i64 2, i64 2, i64 2>
  %140 = trunc <4 x i64> %139 to <4 x i32>
  store <4 x i32> %140, ptr %123, align 4, !tbaa !61
  %141 = add nsw <4 x i64> %130, %132
  %142 = mul nsw <4 x i64> %141, <i64 4433, i64 4433, i64 4433, i64 4433>
  %143 = mul nsw <4 x i64> %130, <i64 6270, i64 6270, i64 6270, i64 6270>
  %144 = add nsw <4 x i64> %142, <i64 16384, i64 16384, i64 16384, i64 16384>
  %145 = add nsw <4 x i64> %144, %143
  %146 = lshr <4 x i64> %145, <i64 15, i64 15, i64 15, i64 15>
  %147 = trunc <4 x i64> %146 to <4 x i32>
  store <4 x i32> %147, ptr %113, align 4, !tbaa !61
  %148 = mul <4 x i64> %132, <i64 140737488340191, i64 140737488340191, i64 140737488340191, i64 140737488340191>
  %149 = add <4 x i64> %144, %148
  %150 = lshr <4 x i64> %149, <i64 15, i64 15, i64 15, i64 15>
  %151 = trunc <4 x i64> %150 to <4 x i32>
  store <4 x i32> %151, ptr %107, align 4, !tbaa !61
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
  store <4 x i32> %172, ptr %99, align 4, !tbaa !61
  %173 = add nsw <4 x i64> %163, <i64 16384, i64 16384, i64 16384, i64 16384>
  %174 = add nsw <4 x i64> %173, %159
  %175 = add nsw <4 x i64> %174, %167
  %176 = lshr <4 x i64> %175, <i64 15, i64 15, i64 15, i64 15>
  %177 = trunc <4 x i64> %176 to <4 x i32>
  store <4 x i32> %177, ptr %115, align 4, !tbaa !61
  %178 = add nsw <4 x i64> %173, %160
  %179 = add nsw <4 x i64> %178, %166
  %180 = lshr <4 x i64> %179, <i64 15, i64 15, i64 15, i64 15>
  %181 = trunc <4 x i64> %180 to <4 x i32>
  store <4 x i32> %181, ptr %121, align 4, !tbaa !61
  %182 = add nsw <4 x i64> %168, %161
  %183 = add nsw <4 x i64> %182, %167
  %184 = lshr <4 x i64> %183, <i64 15, i64 15, i64 15, i64 15>
  %185 = trunc <4 x i64> %184 to <4 x i32>
  store <4 x i32> %185, ptr %105, align 4, !tbaa !61
  %186 = add nuw i64 %95, 4
  %187 = icmp eq i64 %186, 8
  br i1 %187, label %188, label %94, !llvm.loop !403

188:                                              ; preds = %94
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_abort(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !404
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !406
  tail call void %5(ptr noundef %0, i32 noundef 1) #28
  %6 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !407
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 100, i32 200
  %10 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 4
  store i32 %9, ptr %10, align 4, !tbaa !408
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !404
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %3, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !409
  tail call void %7(ptr noundef nonnull %0) #28
  br label %8

8:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !404
  %9 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !408
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @jpeg_alloc_quant_table(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !404
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 0, i64 noundef 132) #28
  %6 = getelementptr inbounds %struct.JQUANT_TBL, ptr %5, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !26
  ret ptr %5
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @jpeg_alloc_huff_table(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !404
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 0, i64 noundef 280) #28
  %6 = getelementptr inbounds %struct.JHUFF_TBL, ptr %5, i64 0, i32 2
  store i32 0, ptr %6, align 4, !tbaa !30
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i64 @jdiv_round_up(i64 noundef %0, i64 noundef %1) #11 {
  %3 = add i64 %0, -1
  %4 = add i64 %3, %1
  %5 = sdiv i64 %4, %1
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i64 @jround_up(i64 noundef %0, i64 noundef %1) #11 {
  %3 = add i64 %0, -1
  %4 = add i64 %3, %1
  %5 = srem i64 %4, %1
  %6 = sub nsw i64 %4, %5
  ret i64 %6
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @jcopy_sample_rows(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13 {
  %7 = zext i32 %5 to i64
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds ptr, ptr %2, i64 %10
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %0, i64 %12
  br label %14

14:                                               ; preds = %14, %9
  %15 = phi i32 [ %22, %14 ], [ %4, %9 ]
  %16 = phi ptr [ %18, %14 ], [ %13, %9 ]
  %17 = phi ptr [ %20, %14 ], [ %11, %9 ]
  %18 = getelementptr inbounds ptr, ptr %16, i64 1
  %19 = load ptr, ptr %16, align 8, !tbaa !25
  %20 = getelementptr inbounds ptr, ptr %17, i64 1
  %21 = load ptr, ptr %17, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %19, i64 %7, i1 false)
  %22 = add nsw i32 %15, -1
  %23 = icmp ugt i32 %15, 1
  br i1 %23, label %14, label %24, !llvm.loop !410

24:                                               ; preds = %14, %6
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @jzero_far(ptr nocapture noundef writeonly %0, i64 noundef %1) #15 {
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %1, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal ptr @jpeg_std_error(ptr noundef returned writeonly %0) #15 {
  store ptr @error_exit, ptr %0, align 8, !tbaa !20
  %2 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 1
  store ptr @emit_message, ptr %2, align 8, !tbaa !58
  %3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 2
  store ptr @output_message, ptr %3, align 8, !tbaa !411
  %4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 3
  store ptr @format_message, ptr %4, align 8, !tbaa !412
  %5 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 4
  store ptr @reset_error_mgr, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 7
  store i32 0, ptr %6, align 4, !tbaa !413
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 8
  store i64 0, ptr %7, align 8, !tbaa !414
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 5
  store i32 0, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 9
  store ptr @jpeg_std_message_table, ptr %9, align 8, !tbaa !415
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 10
  store i32 119, ptr %10, align 8, !tbaa !416
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @error_exit(ptr noundef %0) #16 {
  %2 = load ptr, ptr %0, align 8, !tbaa !417
  %3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  tail call void %4(ptr noundef nonnull %0) #28
  tail call void @jpeg_destroy(ptr noundef nonnull %0) #28
  tail call void @exit(i32 noundef 1) #31
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal void @emit_message(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !417
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 8
  %7 = load i64, ptr %6, align 8, !tbaa !414
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !413
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !411
  tail call void %15(ptr noundef nonnull %0) #28
  %16 = load i64, ptr %6, align 8, !tbaa !414
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i64 [ %16, %13 ], [ %7, %9 ]
  %19 = add nsw i64 %18, 1
  store i64 %19, ptr %6, align 8, !tbaa !414
  br label %27

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 7
  %22 = load i32, ptr %21, align 4, !tbaa !413
  %23 = icmp slt i32 %22, %1
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !411
  tail call void %26(ptr noundef nonnull %0) #28
  br label %27

27:                                               ; preds = %24, %20, %17
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @output_message(ptr noundef %0) #0 {
  %2 = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #29
  %3 = load ptr, ptr %0, align 8, !tbaa !417
  %4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !412
  call void %5(ptr noundef nonnull %0, ptr noundef nonnull %2) #28
  %6 = load ptr, ptr @stderr, align 8, !tbaa !25
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.120, ptr noundef nonnull %2) #32
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #29
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @format_message(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #17 {
  %3 = load ptr, ptr %0, align 8, !tbaa !417
  %4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !16
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !416
  %10 = icmp sgt i32 %5, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !415
  %14 = zext i32 %5 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  br label %32

16:                                               ; preds = %7, %2
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !418
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !419
  %23 = icmp slt i32 %5, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 13
  %26 = load i32, ptr %25, align 4, !tbaa !420
  %27 = icmp sgt i32 %5, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = sub nsw i32 %5, %22
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %18, i64 %30
  br label %32

32:                                               ; preds = %28, %11
  %33 = phi ptr [ %15, %11 ], [ %31, %28 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !25
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %24, %20, %16
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  store i32 %5, ptr %37, align 4, !tbaa !19
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !415
  %40 = load ptr, ptr %39, align 8, !tbaa !25
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi ptr [ %40, %36 ], [ %34, %32 ]
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi ptr [ %42, %41 ], [ %45, %43 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  %46 = load i8, ptr %44, align 1, !tbaa !19
  switch i8 %46, label %43 [
    i8 0, label %53
    i8 37, label %47
  ]

47:                                               ; preds = %43
  %.lcssa1 = phi ptr [ %45, %43 ]
  %48 = load i8, ptr %.lcssa1, align 1, !tbaa !19
  %49 = icmp eq i8 %48, 115
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  %52 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull %51) #28
  br label %71

53:                                               ; preds = %47, %43
  %54 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !19
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 1
  %57 = load i32, ptr %56, align 4, !tbaa !19
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 2
  %59 = load i32, ptr %58, align 4, !tbaa !19
  %60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 3
  %61 = load i32, ptr %60, align 4, !tbaa !19
  %62 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 4
  %63 = load i32, ptr %62, align 4, !tbaa !19
  %64 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 5
  %65 = load i32, ptr %64, align 4, !tbaa !19
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 6
  %67 = load i32, ptr %66, align 4, !tbaa !19
  %68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 7
  %69 = load i32, ptr %68, align 4, !tbaa !19
  %70 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %42, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69) #28
  br label %71

71:                                               ; preds = %53, %50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @reset_error_mgr(ptr nocapture noundef readonly %0) #18 {
  %2 = load ptr, ptr %0, align 8, !tbaa !417
  %3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 8
  store i64 0, ptr %3, align 8, !tbaa !414
  %4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 0, ptr %4, align 8, !tbaa !16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: nounwind optsize uwtable
define internal void @jinit_memory_mgr(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  %4 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !404
  %5 = tail call i64 @jpeg_mem_init(ptr noundef %0) #28
  store i64 %5, ptr %2, align 8, !tbaa !273
  %6 = tail call ptr @jpeg_get_small(ptr noundef %0, i64 noundef 160) #28
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  tail call void @jpeg_mem_term(ptr noundef nonnull %0) #28
  %9 = load ptr, ptr %0, align 8, !tbaa !417
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 53, ptr %10, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 6
  store i32 0, ptr %11, align 4, !tbaa !19
  %12 = load ptr, ptr %0, align 8, !tbaa !417
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  tail call void %13(ptr noundef nonnull %0) #28
  br label %14

14:                                               ; preds = %8, %1
  store ptr @alloc_small, ptr %6, align 8, !tbaa !421
  %15 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 1
  store ptr @alloc_large, ptr %15, align 8, !tbaa !423
  %16 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 2
  store ptr @alloc_sarray, ptr %16, align 8, !tbaa !424
  %17 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 3
  store ptr @alloc_barray, ptr %17, align 8, !tbaa !425
  %18 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 4
  store ptr @request_virt_sarray, ptr %18, align 8, !tbaa !426
  %19 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 5
  store ptr @request_virt_barray, ptr %19, align 8, !tbaa !427
  %20 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 6
  store ptr @realize_virt_arrays, ptr %20, align 8, !tbaa !428
  %21 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 7
  store ptr @access_virt_sarray, ptr %21, align 8, !tbaa !429
  %22 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 8
  store ptr @access_virt_barray, ptr %22, align 8, !tbaa !430
  %23 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 9
  store ptr @free_pool, ptr %23, align 8, !tbaa !431
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 10
  store ptr @self_destruct, ptr %24, align 8, !tbaa !432
  %25 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 11
  store i64 %5, ptr %25, align 8, !tbaa !433
  %26 = getelementptr i8, ptr %6, i64 96
  %27 = getelementptr inbounds %struct.my_memory_mgr, ptr %6, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %26, i8 0, i64 48, i1 false)
  store i64 160, ptr %27, align 8, !tbaa !434
  store ptr %6, ptr %4, align 8, !tbaa !404
  %28 = tail call ptr @getenv(ptr noundef nonnull @.str.121) #28
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #29
  store i8 120, ptr %3, align 1, !tbaa !19
  %31 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %28, ptr noundef nonnull @.str.1.122, ptr noundef nonnull %2, ptr noundef nonnull %3) #28
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i8, ptr %3, align 1
  %35 = and i8 %34, -33
  %36 = icmp eq i8 %35, 77
  %37 = load i64, ptr %2, align 8, !tbaa !273
  %38 = mul nsw i64 %37, 1000
  %39 = select i1 %36, i64 %38, i64 %37
  %40 = mul nsw i64 %39, 1000
  store i64 %40, ptr %25, align 8, !tbaa !433
  br label %41

41:                                               ; preds = %33, %30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #29
  br label %42

42:                                               ; preds = %41, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @alloc_small(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !404
  %6 = icmp ugt i64 %2, 999999976
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !417
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 53, ptr %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 1, ptr %10, align 4, !tbaa !19
  %11 = load ptr, ptr %0, align 8, !tbaa !417
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  tail call void %12(ptr noundef nonnull %0) #28
  br label %13

13:                                               ; preds = %7, %3
  %14 = add i64 %2, 7
  %15 = and i64 %14, -8
  %16 = icmp ugt i32 %1, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !417
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 12, ptr %19, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 6
  store i32 %1, ptr %20, align 4, !tbaa !19
  %21 = load ptr, ptr %0, align 8, !tbaa !417
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  tail call void %22(ptr noundef nonnull %0) #28
  br label %23

23:                                               ; preds = %17, %13
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds %struct.my_memory_mgr, ptr %5, i64 0, i32 1, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %31

28:                                               ; preds = %31
  %29 = load ptr, ptr %32, align 8, !tbaa !19
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31, !llvm.loop !435

31:                                               ; preds = %28, %23
  %32 = phi ptr [ %29, %28 ], [ %26, %23 ]
  %33 = getelementptr inbounds %struct.anon.0, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !19
  %35 = icmp ult i64 %34, %15
  br i1 %35, label %28, label %67, !llvm.loop !435

36:                                               ; preds = %28, %23
  %37 = phi ptr [ null, %23 ], [ %32, %28 ]
  %38 = add i64 %15, 24
  %39 = icmp eq ptr %37, null
  %40 = select i1 %39, ptr @first_pool_slop, ptr @extra_pool_slop
  %41 = getelementptr inbounds [2 x i64], ptr %40, i64 0, i64 %24
  %42 = load i64, ptr %41, align 8, !tbaa !273
  %43 = sub i64 999999976, %15
  %44 = tail call i64 @llvm.umin.i64(i64 %42, i64 %43)
  br label %45

45:                                               ; preds = %59, %36
  %46 = phi i64 [ %44, %36 ], [ %51, %59 ]
  %47 = add i64 %38, %46
  %48 = tail call ptr @jpeg_get_small(ptr noundef %0, i64 noundef %47) #28
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = lshr i64 %46, 1
  %52 = icmp ult i64 %46, 100
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load ptr, ptr %0, align 8, !tbaa !417
  %55 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 5
  store i32 53, ptr %55, align 8, !tbaa !16
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 6
  store i32 2, ptr %56, align 4, !tbaa !19
  %57 = load ptr, ptr %0, align 8, !tbaa !417
  %58 = load ptr, ptr %57, align 8, !tbaa !20
  tail call void %58(ptr noundef nonnull %0) #28
  br label %59

59:                                               ; preds = %53, %50
  br label %45

60:                                               ; preds = %45
  %.lcssa2 = phi i64 [ %46, %45 ]
  %.lcssa1 = phi i64 [ %47, %45 ]
  %.lcssa = phi ptr [ %48, %45 ]
  %61 = getelementptr inbounds %struct.my_memory_mgr, ptr %5, i64 0, i32 5
  %62 = load i64, ptr %61, align 8, !tbaa !434
  %63 = add i64 %62, %.lcssa1
  store i64 %63, ptr %61, align 8, !tbaa !434
  %64 = add i64 %.lcssa2, %15
  %65 = getelementptr inbounds %struct.anon.0, ptr %.lcssa, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, i8 0, i64 16, i1 false)
  store i64 %64, ptr %65, align 8, !tbaa !19
  %66 = select i1 %39, ptr %25, ptr %37
  store ptr %.lcssa, ptr %66, align 8, !tbaa !19
  br label %67

67:                                               ; preds = %60, %31
  %68 = phi ptr [ %.lcssa, %60 ], [ %32, %31 ]
  %69 = getelementptr inbounds %union.large_pool_struct, ptr %68, i64 1
  %70 = getelementptr inbounds %struct.anon.0, ptr %68, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !19
  %72 = getelementptr inbounds i8, ptr %69, i64 %71
  %73 = add i64 %71, %15
  store i64 %73, ptr %70, align 8, !tbaa !19
  %74 = getelementptr inbounds %struct.anon.0, ptr %68, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !19
  %76 = sub i64 %75, %15
  store i64 %76, ptr %74, align 8, !tbaa !19
  ret ptr %72
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @alloc_large(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !404
  %6 = icmp ugt i64 %2, 999999976
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !417
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 53, ptr %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 3, ptr %10, align 4, !tbaa !19
  %11 = load ptr, ptr %0, align 8, !tbaa !417
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  tail call void %12(ptr noundef nonnull %0) #28
  br label %13

13:                                               ; preds = %7, %3
  %14 = add i64 %2, 7
  %15 = and i64 %14, -8
  %16 = icmp ugt i32 %1, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !417
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 12, ptr %19, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 6
  store i32 %1, ptr %20, align 4, !tbaa !19
  %21 = load ptr, ptr %0, align 8, !tbaa !417
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  tail call void %22(ptr noundef nonnull %0) #28
  br label %23

23:                                               ; preds = %17, %13
  %24 = add i64 %15, 24
  %25 = tail call ptr @jpeg_get_large(ptr noundef nonnull %0, i64 noundef %24) #28
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8, !tbaa !417
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 53, ptr %29, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 6
  store i32 4, ptr %30, align 4, !tbaa !19
  %31 = load ptr, ptr %0, align 8, !tbaa !417
  %32 = load ptr, ptr %31, align 8, !tbaa !20
  tail call void %32(ptr noundef nonnull %0) #28
  br label %33

33:                                               ; preds = %27, %23
  %34 = getelementptr inbounds %struct.my_memory_mgr, ptr %5, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !434
  %36 = add i64 %35, %24
  store i64 %36, ptr %34, align 8, !tbaa !434
  %37 = sext i32 %1 to i64
  %38 = getelementptr inbounds %struct.my_memory_mgr, ptr %5, i64 0, i32 2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !25
  store ptr %39, ptr %25, align 8, !tbaa !19
  %40 = getelementptr inbounds %struct.anon.0, ptr %25, i64 0, i32 1
  store i64 %15, ptr %40, align 8, !tbaa !19
  %41 = getelementptr inbounds %struct.anon.0, ptr %25, i64 0, i32 2
  store i64 0, ptr %41, align 8, !tbaa !19
  store ptr %25, ptr %38, align 8, !tbaa !25
  %42 = getelementptr inbounds %union.large_pool_struct, ptr %25, i64 1
  ret ptr %42
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @alloc_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !404
  %7 = zext i32 %2 to i64
  %8 = udiv i32 999999976, %2
  %9 = icmp ugt i32 %2, 999999976
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !417
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 69, ptr %12, align 8, !tbaa !16
  %13 = load ptr, ptr %11, align 8, !tbaa !20
  tail call void %13(ptr noundef nonnull %0) #28
  br label %14

14:                                               ; preds = %10, %4
  %15 = zext i32 %3 to i64
  %16 = tail call i32 @llvm.umin.i32(i32 %8, i32 %3)
  %17 = getelementptr inbounds %struct.my_memory_mgr, ptr %6, i64 0, i32 6
  store i32 %16, ptr %17, align 8, !tbaa !436
  %18 = shl nuw nsw i64 %15, 3
  %19 = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %18) #30
  %20 = icmp eq i32 %3, 0
  br i1 %20, label %43, label %24

21:                                               ; preds = %33, %24
  %22 = phi i32 [ %25, %24 ], [ %37, %33 ]
  %23 = icmp ult i32 %22, %3
  br i1 %23, label %24, label %43, !llvm.loop !437

24:                                               ; preds = %21, %14
  %25 = phi i32 [ %22, %21 ], [ 0, %14 ]
  %26 = phi i32 [ %28, %21 ], [ %16, %14 ]
  %27 = sub i32 %3, %25
  %28 = tail call i32 @llvm.umin.i32(i32 %26, i32 %27)
  %29 = zext i32 %28 to i64
  %30 = mul nuw nsw i64 %29, %7
  %31 = tail call ptr @alloc_large(ptr noundef %0, i32 noundef %1, i64 noundef %30) #30
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %21, label %33

33:                                               ; preds = %33, %24
  %34 = phi ptr [ %40, %33 ], [ %31, %24 ]
  %35 = phi i32 [ %41, %33 ], [ %28, %24 ]
  %36 = phi i32 [ %37, %33 ], [ %25, %24 ]
  %37 = add i32 %36, 1
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds ptr, ptr %19, i64 %38
  store ptr %34, ptr %39, align 8, !tbaa !25
  %40 = getelementptr inbounds i8, ptr %34, i64 %7
  %41 = add i32 %35, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %21, label %33, !llvm.loop !438

43:                                               ; preds = %21, %14
  ret ptr %19
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @alloc_barray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !404
  %7 = zext i32 %2 to i64
  %8 = shl nuw nsw i64 %7, 7
  %9 = udiv i64 999999976, %8
  %10 = icmp ugt i32 %2, 7812499
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !417
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 69, ptr %13, align 8, !tbaa !16
  %14 = load ptr, ptr %12, align 8, !tbaa !20
  tail call void %14(ptr noundef nonnull %0) #28
  br label %15

15:                                               ; preds = %11, %4
  %16 = zext i32 %3 to i64
  %17 = icmp ult i64 %9, %16
  %18 = trunc i64 %9 to i32
  %19 = select i1 %17, i32 %18, i32 %3
  %20 = getelementptr inbounds %struct.my_memory_mgr, ptr %6, i64 0, i32 6
  store i32 %19, ptr %20, align 8, !tbaa !436
  %21 = shl nuw nsw i64 %16, 3
  %22 = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %21) #30
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %46, label %27

24:                                               ; preds = %36, %27
  %25 = phi i32 [ %28, %27 ], [ %40, %36 ]
  %26 = icmp ult i32 %25, %3
  br i1 %26, label %27, label %46, !llvm.loop !439

27:                                               ; preds = %24, %15
  %28 = phi i32 [ %25, %24 ], [ 0, %15 ]
  %29 = phi i32 [ %31, %24 ], [ %19, %15 ]
  %30 = sub i32 %3, %28
  %31 = tail call i32 @llvm.umin.i32(i32 %29, i32 %30)
  %32 = zext i32 %31 to i64
  %33 = mul i64 %8, %32
  %34 = tail call ptr @alloc_large(ptr noundef %0, i32 noundef %1, i64 noundef %33) #30
  %35 = icmp eq i32 %31, 0
  br i1 %35, label %24, label %36

36:                                               ; preds = %36, %27
  %37 = phi ptr [ %43, %36 ], [ %34, %27 ]
  %38 = phi i32 [ %44, %36 ], [ %31, %27 ]
  %39 = phi i32 [ %40, %36 ], [ %28, %27 ]
  %40 = add i32 %39, 1
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds ptr, ptr %22, i64 %41
  store ptr %37, ptr %42, align 8, !tbaa !25
  %43 = getelementptr inbounds [64 x i16], ptr %37, i64 %7
  %44 = add i32 %38, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %24, label %36, !llvm.loop !440

46:                                               ; preds = %24, %15
  ret ptr %22
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @request_virt_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !404
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !417
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 12, ptr %12, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  store i32 %1, ptr %13, align 4, !tbaa !19
  %14 = load ptr, ptr %0, align 8, !tbaa !417
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  tail call void %15(ptr noundef nonnull %0) #28
  br label %16

16:                                               ; preds = %10, %6
  %17 = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef 152) #30
  store ptr null, ptr %17, align 8, !tbaa !441
  %18 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 1
  store i32 %4, ptr %18, align 8, !tbaa !444
  %19 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 2
  store i32 %3, ptr %19, align 4, !tbaa !445
  %20 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 3
  store i32 %5, ptr %20, align 8, !tbaa !446
  %21 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 8
  store i32 %2, ptr %21, align 4, !tbaa !447
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 10
  store i32 0, ptr %22, align 4, !tbaa !448
  %23 = getelementptr inbounds %struct.my_memory_mgr, ptr %8, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !449
  %25 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 11
  store ptr %24, ptr %25, align 8, !tbaa !450
  store ptr %17, ptr %23, align 8, !tbaa !449
  ret ptr %17
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @request_virt_barray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !404
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !417
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 12, ptr %12, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  store i32 %1, ptr %13, align 4, !tbaa !19
  %14 = load ptr, ptr %0, align 8, !tbaa !417
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  tail call void %15(ptr noundef nonnull %0) #28
  br label %16

16:                                               ; preds = %10, %6
  %17 = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef 152) #30
  store ptr null, ptr %17, align 8, !tbaa !451
  %18 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 1
  store i32 %4, ptr %18, align 8, !tbaa !453
  %19 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 2
  store i32 %3, ptr %19, align 4, !tbaa !454
  %20 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 3
  store i32 %5, ptr %20, align 8, !tbaa !455
  %21 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 8
  store i32 %2, ptr %21, align 4, !tbaa !456
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 10
  store i32 0, ptr %22, align 4, !tbaa !457
  %23 = getelementptr inbounds %struct.my_memory_mgr, ptr %8, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !458
  %25 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 11
  store ptr %24, ptr %25, align 8, !tbaa !459
  store ptr %17, ptr %23, align 8, !tbaa !458
  ret ptr %17
}

; Function Attrs: nounwind optsize uwtable
define internal void @realize_virt_arrays(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !404
  %4 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %27, %1
  %8 = phi ptr [ %31, %27 ], [ %5, %1 ]
  %9 = phi i64 [ %29, %27 ], [ 0, %1 ]
  %10 = phi i64 [ %28, %27 ], [ 0, %1 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !441
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !446
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !445
  %19 = zext i32 %18 to i64
  %20 = mul nuw nsw i64 %19, %16
  %21 = add i64 %20, %9
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !444
  %24 = zext i32 %23 to i64
  %25 = mul nuw nsw i64 %24, %19
  %26 = add i64 %25, %10
  br label %27

27:                                               ; preds = %13, %7
  %28 = phi i64 [ %26, %13 ], [ %10, %7 ]
  %29 = phi i64 [ %21, %13 ], [ %9, %7 ]
  %30 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !25
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !llvm.loop !460

33:                                               ; preds = %27, %1
  %34 = phi i64 [ 0, %1 ], [ %28, %27 ]
  %35 = phi i64 [ 0, %1 ], [ %29, %27 ]
  %36 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !25
  %38 = icmp eq ptr %37, null
  br i1 %38, label %67, label %39

39:                                               ; preds = %61, %33
  %40 = phi ptr [ %65, %61 ], [ %37, %33 ]
  %41 = phi i64 [ %63, %61 ], [ %35, %33 ]
  %42 = phi i64 [ %62, %61 ], [ %34, %33 ]
  %43 = load ptr, ptr %40, align 8, !tbaa !451
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %40, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !455
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %40, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !454
  %51 = zext i32 %50 to i64
  %52 = shl nuw nsw i64 %48, 7
  %53 = mul i64 %52, %51
  %54 = add i64 %53, %41
  %55 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %40, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !453
  %57 = zext i32 %56 to i64
  %58 = shl nuw nsw i64 %51, 7
  %59 = mul i64 %58, %57
  %60 = add i64 %59, %42
  br label %61

61:                                               ; preds = %45, %39
  %62 = phi i64 [ %60, %45 ], [ %42, %39 ]
  %63 = phi i64 [ %54, %45 ], [ %41, %39 ]
  %64 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %40, i64 0, i32 11
  %65 = load ptr, ptr %64, align 8, !tbaa !25
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %39, !llvm.loop !461

67:                                               ; preds = %61, %33
  %68 = phi i64 [ %34, %33 ], [ %62, %61 ]
  %69 = phi i64 [ %35, %33 ], [ %63, %61 ]
  %70 = icmp slt i64 %69, 1
  br i1 %70, label %173, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 5
  %73 = load i64, ptr %72, align 8, !tbaa !434
  %74 = tail call i64 @jpeg_mem_available(ptr noundef %0, i64 noundef %69, i64 noundef %68, i64 noundef %73) #28
  %75 = icmp slt i64 %74, %68
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = sdiv i64 %74, %69
  %78 = tail call i64 @llvm.smax.i64(i64 %77, i64 1)
  br label %79

79:                                               ; preds = %76, %71
  %80 = phi i64 [ %78, %76 ], [ 1000000000, %71 ]
  %81 = load ptr, ptr %4, align 8, !tbaa !25
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = trunc i64 %80 to i32
  %85 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 6
  br label %92

86:                                               ; preds = %128, %79
  %87 = load ptr, ptr %36, align 8, !tbaa !25
  %88 = icmp eq ptr %87, null
  br i1 %88, label %173, label %89

89:                                               ; preds = %86
  %90 = trunc i64 %80 to i32
  %91 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 6
  br label %132

92:                                               ; preds = %128, %83
  %93 = phi ptr [ %81, %83 ], [ %130, %128 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !441
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %128

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !444
  %99 = zext i32 %98 to i64
  %100 = add nsw i64 %99, -1
  %101 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !446
  %103 = zext i32 %102 to i64
  %104 = sdiv i64 %100, %103
  %105 = icmp slt i64 %104, %80
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 4
  store i32 %98, ptr %107, align 4, !tbaa !462
  br label %118

108:                                              ; preds = %96
  %109 = mul i32 %102, %84
  %110 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 4
  store i32 %109, ptr %110, align 4, !tbaa !462
  %111 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 12
  %112 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !445
  %114 = zext i32 %113 to i64
  %115 = mul nuw nsw i64 %114, %99
  tail call void @jpeg_open_backing_store(ptr noundef %0, ptr noundef nonnull %111, i64 noundef %115) #28
  %116 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 10
  store i32 1, ptr %116, align 4, !tbaa !448
  %117 = load i32, ptr %110, align 4, !tbaa !462
  br label %118

118:                                              ; preds = %108, %106
  %119 = phi i32 [ %117, %108 ], [ %98, %106 ]
  %120 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !445
  %122 = tail call ptr @alloc_sarray(ptr noundef %0, i32 noundef 1, i32 noundef %121, i32 noundef %119) #30
  store ptr %122, ptr %93, align 8, !tbaa !441
  %123 = load i32, ptr %85, align 8, !tbaa !436
  %124 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 5
  store i32 %123, ptr %124, align 8, !tbaa !463
  %125 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 6
  store i32 0, ptr %125, align 4, !tbaa !464
  %126 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 7
  store i32 0, ptr %126, align 8, !tbaa !465
  %127 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 9
  store i32 0, ptr %127, align 8, !tbaa !466
  br label %128

128:                                              ; preds = %118, %92
  %129 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 11
  %130 = load ptr, ptr %129, align 8, !tbaa !25
  %131 = icmp eq ptr %130, null
  br i1 %131, label %86, label %92, !llvm.loop !467

132:                                              ; preds = %169, %89
  %133 = phi ptr [ %87, %89 ], [ %171, %169 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !451
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %169

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !453
  %139 = zext i32 %138 to i64
  %140 = add nsw i64 %139, -1
  %141 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 3
  %142 = load i32, ptr %141, align 8, !tbaa !455
  %143 = zext i32 %142 to i64
  %144 = sdiv i64 %140, %143
  %145 = icmp slt i64 %144, %80
  br i1 %145, label %146, label %148

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 4
  store i32 %138, ptr %147, align 4, !tbaa !468
  br label %159

148:                                              ; preds = %136
  %149 = mul i32 %142, %90
  %150 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 4
  store i32 %149, ptr %150, align 4, !tbaa !468
  %151 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 12
  %152 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 2
  %153 = load i32, ptr %152, align 4, !tbaa !454
  %154 = zext i32 %153 to i64
  %155 = shl nuw nsw i64 %139, 7
  %156 = mul i64 %155, %154
  tail call void @jpeg_open_backing_store(ptr noundef %0, ptr noundef nonnull %151, i64 noundef %156) #28
  %157 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 10
  store i32 1, ptr %157, align 4, !tbaa !457
  %158 = load i32, ptr %150, align 4, !tbaa !468
  br label %159

159:                                              ; preds = %148, %146
  %160 = phi i32 [ %158, %148 ], [ %138, %146 ]
  %161 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 2
  %162 = load i32, ptr %161, align 4, !tbaa !454
  %163 = tail call ptr @alloc_barray(ptr noundef %0, i32 noundef 1, i32 noundef %162, i32 noundef %160) #30
  store ptr %163, ptr %133, align 8, !tbaa !451
  %164 = load i32, ptr %91, align 8, !tbaa !436
  %165 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 5
  store i32 %164, ptr %165, align 8, !tbaa !469
  %166 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 6
  store i32 0, ptr %166, align 4, !tbaa !470
  %167 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 7
  store i32 0, ptr %167, align 8, !tbaa !471
  %168 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 9
  store i32 0, ptr %168, align 8, !tbaa !472
  br label %169

169:                                              ; preds = %159, %132
  %170 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %133, i64 0, i32 11
  %171 = load ptr, ptr %170, align 8, !tbaa !25
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %132, !llvm.loop !473

173:                                              ; preds = %169, %86, %67
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @access_virt_sarray(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = add i32 %3, %2
  %7 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !444
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !446
  %13 = icmp ult i32 %12, %3
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !441
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %10, %5
  %18 = load ptr, ptr %0, align 8, !tbaa !417
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 20, ptr %19, align 8, !tbaa !16
  %20 = load ptr, ptr %18, align 8, !tbaa !20
  tail call void %20(ptr noundef nonnull %0) #28
  br label %21

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !464
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !462
  %28 = add i32 %27, %23
  %29 = icmp ugt i32 %6, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !448
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !417
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 5
  store i32 68, ptr %36, align 8, !tbaa !16
  %37 = load ptr, ptr %35, align 8, !tbaa !20
  tail call void %37(ptr noundef nonnull %0) #28
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !466
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call fastcc void @do_sarray_io(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #30
  store i32 0, ptr %39, align 8, !tbaa !466
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, ptr %22, align 4, !tbaa !464
  %45 = icmp ult i32 %44, %2
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = zext i32 %6 to i64
  %48 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !462
  %50 = zext i32 %49 to i64
  %51 = sub nsw i64 %47, %50
  %52 = tail call i64 @llvm.smax.i64(i64 %51, i64 0)
  %53 = trunc i64 %52 to i32
  br label %54

54:                                               ; preds = %46, %43
  %55 = phi i32 [ %53, %46 ], [ %2, %43 ]
  store i32 %55, ptr %22, align 4, !tbaa !464
  tail call fastcc void @do_sarray_io(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #30
  br label %56

56:                                               ; preds = %54, %25
  %57 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !465
  %59 = icmp ult i32 %58, %6
  br i1 %59, label %60, label %105

60:                                               ; preds = %56
  %61 = icmp ult i32 %58, %2
  %62 = icmp eq i32 %4, 0
  br i1 %61, label %63, label %68

63:                                               ; preds = %60
  br i1 %62, label %78, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %0, align 8, !tbaa !417
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i64 0, i32 5
  store i32 20, ptr %66, align 8, !tbaa !16
  %67 = load ptr, ptr %65, align 8, !tbaa !20
  tail call void %67(ptr noundef nonnull %0) #28
  br label %73

68:                                               ; preds = %60
  br i1 %62, label %69, label %73

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %71 = load i32, ptr %70, align 4, !tbaa !447
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %101, label %82

73:                                               ; preds = %68, %64
  %74 = phi i32 [ %2, %64 ], [ %58, %68 ]
  store i32 %6, ptr %57, align 8, !tbaa !465
  %75 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %76 = load i32, ptr %75, align 4, !tbaa !447
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %107, label %82

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %80 = load i32, ptr %79, align 4, !tbaa !447
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %78, %73, %69
  %83 = phi i32 [ %2, %78 ], [ %58, %69 ], [ %74, %73 ]
  %84 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !445
  %86 = zext i32 %85 to i64
  %87 = load i32, ptr %22, align 4, !tbaa !464
  %88 = sub i32 %83, %87
  %89 = sub i32 %6, %87
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %82
  %92 = zext i32 %88 to i64
  br label %93

93:                                               ; preds = %93, %91
  %94 = phi i64 [ %92, %91 ], [ %98, %93 ]
  %95 = load ptr, ptr %1, align 8, !tbaa !441
  %96 = getelementptr inbounds ptr, ptr %95, i64 %94
  %97 = load ptr, ptr %96, align 8, !tbaa !25
  tail call void @jzero_far(ptr noundef %97, i64 noundef %86) #28
  %98 = add nuw nsw i64 %94, 1
  %99 = trunc i64 %98 to i32
  %100 = icmp eq i32 %89, %99
  br i1 %100, label %105, label %93, !llvm.loop !474

101:                                              ; preds = %78, %69
  %102 = load ptr, ptr %0, align 8, !tbaa !417
  %103 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %102, i64 0, i32 5
  store i32 20, ptr %103, align 8, !tbaa !16
  %104 = load ptr, ptr %102, align 8, !tbaa !20
  tail call void %104(ptr noundef nonnull %0) #28
  br label %109

105:                                              ; preds = %93, %82, %56
  %106 = icmp eq i32 %4, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %105, %73
  %108 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 9
  store i32 1, ptr %108, align 8, !tbaa !466
  br label %109

109:                                              ; preds = %107, %105, %101
  %110 = load ptr, ptr %1, align 8, !tbaa !441
  %111 = load i32, ptr %22, align 4, !tbaa !464
  %112 = sub i32 %2, %111
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %110, i64 %113
  ret ptr %114
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @access_virt_barray(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = add i32 %3, %2
  %7 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !453
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !455
  %13 = icmp ult i32 %12, %3
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !451
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %10, %5
  %18 = load ptr, ptr %0, align 8, !tbaa !417
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 20, ptr %19, align 8, !tbaa !16
  %20 = load ptr, ptr %18, align 8, !tbaa !20
  tail call void %20(ptr noundef nonnull %0) #28
  br label %21

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !470
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !468
  %28 = add i32 %27, %23
  %29 = icmp ugt i32 %6, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !457
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !417
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 5
  store i32 68, ptr %36, align 8, !tbaa !16
  %37 = load ptr, ptr %35, align 8, !tbaa !20
  tail call void %37(ptr noundef nonnull %0) #28
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !472
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call fastcc void @do_barray_io(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #30
  store i32 0, ptr %39, align 8, !tbaa !472
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, ptr %22, align 4, !tbaa !470
  %45 = icmp ult i32 %44, %2
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = zext i32 %6 to i64
  %48 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !468
  %50 = zext i32 %49 to i64
  %51 = sub nsw i64 %47, %50
  %52 = tail call i64 @llvm.smax.i64(i64 %51, i64 0)
  %53 = trunc i64 %52 to i32
  br label %54

54:                                               ; preds = %46, %43
  %55 = phi i32 [ %53, %46 ], [ %2, %43 ]
  store i32 %55, ptr %22, align 4, !tbaa !470
  tail call fastcc void @do_barray_io(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #30
  br label %56

56:                                               ; preds = %54, %25
  %57 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !471
  %59 = icmp ult i32 %58, %6
  br i1 %59, label %60, label %106

60:                                               ; preds = %56
  %61 = icmp ult i32 %58, %2
  %62 = icmp eq i32 %4, 0
  br i1 %61, label %63, label %68

63:                                               ; preds = %60
  br i1 %62, label %78, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %0, align 8, !tbaa !417
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i64 0, i32 5
  store i32 20, ptr %66, align 8, !tbaa !16
  %67 = load ptr, ptr %65, align 8, !tbaa !20
  tail call void %67(ptr noundef nonnull %0) #28
  br label %73

68:                                               ; preds = %60
  br i1 %62, label %69, label %73

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %71 = load i32, ptr %70, align 4, !tbaa !456
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %102, label %82

73:                                               ; preds = %68, %64
  %74 = phi i32 [ %2, %64 ], [ %58, %68 ]
  store i32 %6, ptr %57, align 8, !tbaa !471
  %75 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %76 = load i32, ptr %75, align 4, !tbaa !456
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %108, label %82

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %80 = load i32, ptr %79, align 4, !tbaa !456
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %78, %73, %69
  %83 = phi i32 [ %2, %78 ], [ %58, %69 ], [ %74, %73 ]
  %84 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !454
  %86 = zext i32 %85 to i64
  %87 = shl nuw nsw i64 %86, 7
  %88 = load i32, ptr %22, align 4, !tbaa !470
  %89 = sub i32 %83, %88
  %90 = sub i32 %6, %88
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %82
  %93 = zext i32 %89 to i64
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi i64 [ %93, %92 ], [ %99, %94 ]
  %96 = load ptr, ptr %1, align 8, !tbaa !451
  %97 = getelementptr inbounds ptr, ptr %96, i64 %95
  %98 = load ptr, ptr %97, align 8, !tbaa !25
  tail call void @jzero_far(ptr noundef %98, i64 noundef %87) #28
  %99 = add nuw nsw i64 %95, 1
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %90, %100
  br i1 %101, label %106, label %94, !llvm.loop !475

102:                                              ; preds = %78, %69
  %103 = load ptr, ptr %0, align 8, !tbaa !417
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 5
  store i32 20, ptr %104, align 8, !tbaa !16
  %105 = load ptr, ptr %103, align 8, !tbaa !20
  tail call void %105(ptr noundef nonnull %0) #28
  br label %110

106:                                              ; preds = %94, %82, %56
  %107 = icmp eq i32 %4, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %106, %73
  %109 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 9
  store i32 1, ptr %109, align 8, !tbaa !472
  br label %110

110:                                              ; preds = %108, %106, %102
  %111 = load ptr, ptr %1, align 8, !tbaa !451
  %112 = load i32, ptr %22, align 4, !tbaa !470
  %113 = sub i32 %2, %112
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %111, i64 %114
  ret ptr %115
}

; Function Attrs: nounwind optsize uwtable
define internal void @free_pool(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !404
  %5 = icmp ugt i32 %1, 1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !417
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 12, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %1, ptr %9, align 4, !tbaa !19
  %10 = load ptr, ptr %0, align 8, !tbaa !417
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  tail call void %11(ptr noundef nonnull %0) #28
  br label %49

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %14, label %49

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %27, %14
  %19 = phi ptr [ %29, %27 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i64 0, i32 10
  %21 = load i32, ptr %20, align 4, !tbaa !448
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  store i32 0, ptr %20, align 4, !tbaa !448
  %24 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i64 0, i32 12
  %25 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i64 0, i32 12, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !476
  tail call void %26(ptr noundef %0, ptr noundef nonnull %24) #28
  br label %27

27:                                               ; preds = %23, %18
  %28 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !477

31:                                               ; preds = %27, %14
  store ptr null, ptr %15, align 8, !tbaa !449
  %32 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  %34 = icmp eq ptr %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %44, %31
  %36 = phi ptr [ %46, %44 ], [ %33, %31 ]
  %37 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %36, i64 0, i32 10
  %38 = load i32, ptr %37, align 4, !tbaa !457
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  store i32 0, ptr %37, align 4, !tbaa !457
  %41 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %36, i64 0, i32 12
  %42 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %36, i64 0, i32 12, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !478
  tail call void %43(ptr noundef %0, ptr noundef nonnull %41) #28
  br label %44

44:                                               ; preds = %40, %35
  %45 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %36, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !25
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %35, !llvm.loop !479

48:                                               ; preds = %44, %31
  store ptr null, ptr %32, align 8, !tbaa !458
  br label %49

49:                                               ; preds = %48, %12, %6
  %50 = sext i32 %1 to i64
  %51 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 2, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !25
  store ptr null, ptr %51, align 8, !tbaa !25
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 5
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi ptr [ %52, %54 ], [ %58, %56 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !19
  %59 = getelementptr inbounds %struct.anon.0, ptr %57, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !19
  %61 = getelementptr inbounds %struct.anon.0, ptr %57, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !19
  %63 = add i64 %60, 24
  %64 = add i64 %63, %62
  tail call void @jpeg_free_large(ptr noundef %0, ptr noundef nonnull %57, i64 noundef %64) #28
  %65 = load i64, ptr %55, align 8, !tbaa !434
  %66 = sub i64 %65, %64
  store i64 %66, ptr %55, align 8, !tbaa !434
  %67 = icmp eq ptr %58, null
  br i1 %67, label %68, label %56, !llvm.loop !480

68:                                               ; preds = %56, %49
  %69 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 1, i64 %50
  %70 = load ptr, ptr %69, align 8, !tbaa !25
  store ptr null, ptr %69, align 8, !tbaa !25
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 5
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi ptr [ %70, %72 ], [ %76, %74 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !19
  %77 = getelementptr inbounds %struct.anon.0, ptr %75, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !19
  %79 = getelementptr inbounds %struct.anon.0, ptr %75, i64 0, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !19
  %81 = add i64 %78, 24
  %82 = add i64 %81, %80
  tail call void @jpeg_free_small(ptr noundef %0, ptr noundef nonnull %75, i64 noundef %82) #28
  %83 = load i64, ptr %73, align 8, !tbaa !434
  %84 = sub i64 %83, %82
  store i64 %84, ptr %73, align 8, !tbaa !434
  %85 = icmp eq ptr %76, null
  br i1 %85, label %86, label %74, !llvm.loop !481

86:                                               ; preds = %74, %68
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @self_destruct(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 1, %1 ], [ %4, %2 ]
  tail call void @free_pool(ptr noundef %0, i32 noundef %3) #30
  %4 = add nsw i32 %3, -1
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %2, !llvm.loop !482

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !404
  tail call void @jpeg_free_small(ptr noundef %0, ptr noundef %8, i64 noundef 160) #28
  store ptr null, ptr %7, align 8, !tbaa !404
  tail call void @jpeg_mem_term(ptr noundef %0) #28
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_barray_io(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !454
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 7
  %8 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 6
  %9 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 5
  %10 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !468
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %58, label %13

13:                                               ; preds = %3
  %14 = zext i32 %11 to i64
  %15 = load i32, ptr %8, align 4, !tbaa !470
  %16 = zext i32 %15 to i64
  %17 = mul nsw i64 %7, %16
  %18 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 7
  %19 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 1
  %20 = icmp eq i32 %2, 0
  %21 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 12
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 12, i32 1
  %23 = load i32, ptr %9, align 8, !tbaa !469
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
  %33 = load i32, ptr %8, align 4, !tbaa !470
  %34 = zext i32 %33 to i64
  %35 = add nuw nsw i64 %28, %34
  %36 = load i32, ptr %18, align 8, !tbaa !471
  %37 = zext i32 %36 to i64
  %38 = sub nsw i64 %37, %35
  %39 = tail call i64 @llvm.smin.i64(i64 %32, i64 %38)
  %40 = load i32, ptr %19, align 8, !tbaa !453
  %41 = zext i32 %40 to i64
  %42 = sub nsw i64 %41, %35
  %43 = tail call i64 @llvm.smin.i64(i64 %39, i64 %42)
  %44 = icmp slt i64 %43, 1
  br i1 %44, label %58, label %45

45:                                               ; preds = %25
  %46 = mul nsw i64 %43, %7
  %47 = load ptr, ptr %1, align 8, !tbaa !451
  %48 = getelementptr inbounds ptr, ptr %47, i64 %28
  %49 = load ptr, ptr %48, align 8, !tbaa !25
  %50 = load ptr, ptr %24, align 8, !tbaa !25
  tail call void %50(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %49, i64 noundef %29, i64 noundef %46) #28
  %51 = add nsw i64 %46, %29
  %52 = load i32, ptr %9, align 8, !tbaa !469
  %53 = zext i32 %52 to i64
  %54 = add nuw nsw i64 %28, %53
  %55 = load i32, ptr %10, align 4, !tbaa !468
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %25, label %58, !llvm.loop !483

58:                                               ; preds = %45, %25, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_sarray_io(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !445
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 6
  %8 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 5
  %9 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !462
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %57, label %12

12:                                               ; preds = %3
  %13 = zext i32 %10 to i64
  %14 = load i32, ptr %7, align 4, !tbaa !464
  %15 = zext i32 %14 to i64
  %16 = mul nuw nsw i64 %15, %6
  %17 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 7
  %18 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 1
  %19 = icmp eq i32 %2, 0
  %20 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 12
  %21 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 12, i32 1
  %22 = load i32, ptr %8, align 8, !tbaa !463
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
  %32 = load i32, ptr %7, align 4, !tbaa !464
  %33 = zext i32 %32 to i64
  %34 = add nuw nsw i64 %27, %33
  %35 = load i32, ptr %17, align 8, !tbaa !465
  %36 = zext i32 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = tail call i64 @llvm.smin.i64(i64 %31, i64 %37)
  %39 = load i32, ptr %18, align 8, !tbaa !444
  %40 = zext i32 %39 to i64
  %41 = sub nsw i64 %40, %34
  %42 = tail call i64 @llvm.smin.i64(i64 %38, i64 %41)
  %43 = icmp slt i64 %42, 1
  br i1 %43, label %57, label %44

44:                                               ; preds = %24
  %45 = mul nuw nsw i64 %42, %6
  %46 = load ptr, ptr %1, align 8, !tbaa !441
  %47 = getelementptr inbounds ptr, ptr %46, i64 %27
  %48 = load ptr, ptr %47, align 8, !tbaa !25
  %49 = load ptr, ptr %23, align 8, !tbaa !25
  tail call void %49(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %48, i64 noundef %28, i64 noundef %45) #28
  %50 = add nsw i64 %45, %28
  %51 = load i32, ptr %8, align 8, !tbaa !463
  %52 = zext i32 %51 to i64
  %53 = add nuw nsw i64 %27, %52
  %54 = load i32, ptr %9, align 4, !tbaa !462
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %24, label %57, !llvm.loop !484

57:                                               ; preds = %44, %24, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(inaccessiblemem: readwrite) uwtable
define internal noalias ptr @jpeg_get_small(ptr nocapture noundef readnone %0, i64 noundef %1) #20 {
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #33
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @jpeg_free_small(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i64 noundef %2) #22 {
  tail call void @free(ptr noundef %1) #28
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(inaccessiblemem: readwrite) uwtable
define internal noalias ptr @jpeg_get_large(ptr nocapture noundef readnone %0, i64 noundef %1) #20 {
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #33
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @jpeg_free_large(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i64 noundef %2) #22 {
  tail call void @free(ptr noundef %1) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i64 @jpeg_mem_available(ptr nocapture noundef readnone %0, i64 noundef %1, i64 noundef returned %2, i64 noundef %3) #11 {
  ret i64 %2
}

; Function Attrs: nounwind optsize uwtable
define internal void @jpeg_open_backing_store(ptr noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !417
  %5 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 5
  store i32 48, ptr %5, align 8, !tbaa !16
  %6 = load ptr, ptr %4, align 8, !tbaa !20
  tail call void %6(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i64 @jpeg_mem_init(ptr nocapture noundef readnone %0) #11 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @jpeg_mem_term(ptr nocapture noundef %0) #11 {
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #16 {
  %3 = alloca %struct.jpeg_compress_struct, align 8
  %4 = alloca %struct.jpeg_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 496, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %4) #29
  %5 = load ptr, ptr %1, align 8, !tbaa !25
  store ptr %5, ptr @progname, align 8, !tbaa !25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !tbaa !19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  store ptr @.str.139, ptr @progname, align 8, !tbaa !25
  br label %11

11:                                               ; preds = %10, %7
  %12 = call ptr @jpeg_std_error(ptr noundef nonnull %4) #28
  store ptr %12, ptr %3, align 8, !tbaa !15
  call void @jpeg_CreateCompress(ptr noundef nonnull %3, i32 noundef 61, i64 noundef 496) #28
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 11
  store ptr @cdjpeg_message_table, ptr %13, align 8, !tbaa !418
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 12
  store i32 1000, ptr %14, align 8, !tbaa !419
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 13
  store i32 1043, ptr %15, align 4, !tbaa !420
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 9
  store i32 2, ptr %16, align 4, !tbaa !75
  call void @jpeg_set_defaults(ptr noundef nonnull %3) #28
  %17 = call fastcc i32 @parse_switches(ptr noundef nonnull %3, i32 noundef %0, ptr noundef nonnull %1, i32 noundef 0) #30
  %18 = add nsw i32 %0, -1
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load ptr, ptr @stderr, align 8, !tbaa !25
  %22 = load ptr, ptr @progname, align 8, !tbaa !25
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.1.140, ptr noundef %22) #32
  call fastcc void @usage() #30
  unreachable

24:                                               ; preds = %11
  %25 = icmp slt i32 %17, %0
  br i1 %25, label %26, label %37

26:                                               ; preds = %24
  %27 = sext i32 %17 to i64
  %28 = getelementptr inbounds ptr, ptr %1, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = call noalias ptr @fopen(ptr noundef %29, ptr noundef nonnull @.str.2.141) #30
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load ptr, ptr @stderr, align 8, !tbaa !25
  %34 = load ptr, ptr @progname, align 8, !tbaa !25
  %35 = load ptr, ptr %28, align 8, !tbaa !25
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.3.142, ptr noundef %34, ptr noundef %35) #32
  call void @exit(i32 noundef 1) #31
  unreachable

37:                                               ; preds = %24
  %38 = call ptr @read_stdin() #28
  br label %39

39:                                               ; preds = %37, %26
  %40 = phi ptr [ %30, %26 ], [ %38, %37 ]
  %41 = load ptr, ptr @outfilename, align 8, !tbaa !25
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = call noalias ptr @fopen(ptr noundef nonnull %41, ptr noundef nonnull @.str.4.143) #30
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load ptr, ptr @stderr, align 8, !tbaa !25
  %48 = load ptr, ptr @progname, align 8, !tbaa !25
  %49 = load ptr, ptr @outfilename, align 8, !tbaa !25
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.3.142, ptr noundef %48, ptr noundef %49) #32
  call void @exit(i32 noundef 1) #31
  unreachable

51:                                               ; preds = %39
  %52 = call ptr @write_stdout() #28
  br label %53

53:                                               ; preds = %51, %43
  %54 = phi ptr [ %44, %43 ], [ %52, %51 ]
  %55 = load i1, ptr @is_targa, align 4
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call ptr @jinit_read_targa(ptr noundef nonnull %3) #28
  br label %85

58:                                               ; preds = %53
  %59 = call i32 @getc(ptr noundef %40) #30
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load ptr, ptr %3, align 8, !tbaa !15
  %63 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 5
  store i32 41, ptr %63, align 8, !tbaa !16
  %64 = load ptr, ptr %62, align 8, !tbaa !20
  call void %64(ptr noundef nonnull %3) #28
  br label %65

65:                                               ; preds = %61, %58
  %66 = call i32 @ungetc(i32 noundef %59, ptr noundef %40) #30
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load ptr, ptr %3, align 8, !tbaa !15
  %70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %69, i64 0, i32 5
  store i32 1040, ptr %70, align 8, !tbaa !16
  %71 = load ptr, ptr %69, align 8, !tbaa !20
  call void %71(ptr noundef nonnull %3) #28
  br label %72

72:                                               ; preds = %68, %65
  switch i32 %59, label %81 [
    i32 66, label %73
    i32 71, label %75
    i32 80, label %77
    i32 0, label %79
  ]

73:                                               ; preds = %72
  %74 = call ptr @jinit_read_bmp(ptr noundef nonnull %3) #28
  br label %85

75:                                               ; preds = %72
  %76 = call ptr @jinit_read_gif(ptr noundef nonnull %3) #28
  br label %85

77:                                               ; preds = %72
  %78 = call ptr @jinit_read_ppm(ptr noundef nonnull %3) #28
  br label %85

79:                                               ; preds = %72
  %80 = call ptr @jinit_read_targa(ptr noundef nonnull %3) #28
  br label %85

81:                                               ; preds = %72
  %82 = load ptr, ptr %3, align 8, !tbaa !15
  %83 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i64 0, i32 5
  store i32 1041, ptr %83, align 8, !tbaa !16
  %84 = load ptr, ptr %82, align 8, !tbaa !20
  call void %84(ptr noundef nonnull %3) #28
  br label %85

85:                                               ; preds = %81, %79, %77, %75, %73, %56
  %86 = phi ptr [ %57, %56 ], [ null, %81 ], [ %80, %79 ], [ %78, %77 ], [ %76, %75 ], [ %74, %73 ]
  %87 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %86, i64 0, i32 3
  store ptr %40, ptr %87, align 8, !tbaa !485
  %88 = load ptr, ptr %86, align 8, !tbaa !487
  call void %88(ptr noundef nonnull %3, ptr noundef nonnull %86) #28
  call void @jpeg_default_colorspace(ptr noundef nonnull %3) #28
  %89 = call fastcc i32 @parse_switches(ptr noundef nonnull %3, i32 noundef %0, ptr noundef nonnull %1, i32 noundef 1) #30
  call void @jpeg_stdio_dest(ptr noundef nonnull %3, ptr noundef %54) #28
  call void @jpeg_start_compress(ptr noundef nonnull %3, i32 noundef 1) #28
  %90 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 36
  %91 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 7
  %92 = load i32, ptr %90, align 8, !tbaa !33
  %93 = load i32, ptr %91, align 4, !tbaa !34
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %86, i64 0, i32 1
  %97 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %86, i64 0, i32 4
  br label %98

98:                                               ; preds = %98, %95
  %99 = load ptr, ptr %96, align 8, !tbaa !488
  %100 = call i32 %99(ptr noundef nonnull %3, ptr noundef nonnull %86) #28
  %101 = load ptr, ptr %97, align 8, !tbaa !489
  %102 = call i32 @jpeg_write_scanlines(ptr noundef nonnull %3, ptr noundef %101, i32 noundef %100) #28
  %103 = load i32, ptr %90, align 8, !tbaa !33
  %104 = load i32, ptr %91, align 4, !tbaa !34
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %98, label %106, !llvm.loop !490

106:                                              ; preds = %98, %85
  %107 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %86, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !491
  call void %108(ptr noundef nonnull %3, ptr noundef nonnull %86) #28
  call void @jpeg_finish_compress(ptr noundef nonnull %3) #28
  call void @jpeg_destroy_compress(ptr noundef nonnull %3) #28
  %109 = load ptr, ptr @stdin, align 8, !tbaa !25
  %110 = icmp eq ptr %40, %109
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = call i32 @fclose(ptr noundef %40) #30
  br label %113

113:                                              ; preds = %111, %106
  %114 = load ptr, ptr @stdout, align 8, !tbaa !25
  %115 = icmp eq ptr %54, %114
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = call i32 @fclose(ptr noundef %54) #30
  br label %118

118:                                              ; preds = %116, %113
  %119 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 8
  %120 = load i64, ptr %119, align 8, !tbaa !414
  %121 = icmp eq i64 %120, 0
  %122 = select i1 %121, i32 0, i32 2
  call void @exit(i32 noundef %122) #31
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @parse_switches(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #29
  store i32 75, ptr %5, align 4, !tbaa !61
  store i1 false, ptr @is_targa, align 4
  store ptr null, ptr @outfilename, align 8, !tbaa !25
  %11 = load ptr, ptr %0, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 7
  store i32 0, ptr %12, align 4, !tbaa !413
  %13 = icmp sgt i32 %1, 1
  br i1 %13, label %14, label %264

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 28
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 30
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  br label %21

21:                                               ; preds = %253, %14
  %22 = phi ptr [ null, %14 ], [ %261, %253 ]
  %23 = phi ptr [ null, %14 ], [ %260, %253 ]
  %24 = phi ptr [ null, %14 ], [ %259, %253 ]
  %25 = phi ptr [ null, %14 ], [ %258, %253 ]
  %26 = phi i32 [ 0, %14 ], [ %257, %253 ]
  %27 = phi i32 [ 0, %14 ], [ %256, %253 ]
  %28 = phi i32 [ 100, %14 ], [ %255, %253 ]
  %29 = phi i32 [ 1, %14 ], [ %262, %253 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %2, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !25
  %33 = load i8, ptr %32, align 1, !tbaa !19
  %34 = icmp eq i8 %33, 45
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = icmp slt i32 %29, 1
  br i1 %36, label %37, label %264

37:                                               ; preds = %35
  store ptr null, ptr @outfilename, align 8, !tbaa !25
  br label %253

38:                                               ; preds = %21
  %39 = getelementptr inbounds i8, ptr %32, i64 1
  %40 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.47.169, i32 noundef 1) #28
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @stderr, align 8, !tbaa !25
  %44 = load ptr, ptr @progname, align 8, !tbaa !25
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.48.170, ptr noundef %44) #32
  call void @exit(i32 noundef 1) #31
  unreachable

46:                                               ; preds = %38
  %47 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.49.171, i32 noundef 1) #28
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %253

49:                                               ; preds = %46
  %50 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.50.172, i32 noundef 2) #28
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %49
  %53 = add nsw i32 %29, 1
  %54 = icmp slt i32 %53, %1
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call fastcc void @usage() #30
  unreachable

56:                                               ; preds = %52
  %57 = sext i32 %53 to i64
  %58 = getelementptr inbounds ptr, ptr %2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !25
  %60 = call i32 @keymatch(ptr noundef %59, ptr noundef nonnull @.str.51.173, i32 noundef 1) #28
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i32 0, ptr %15, align 4, !tbaa !380
  br label %253

63:                                               ; preds = %56
  %64 = load ptr, ptr %58, align 8, !tbaa !25
  %65 = call i32 @keymatch(ptr noundef %64, ptr noundef nonnull @.str.52.174, i32 noundef 2) #28
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 1, ptr %15, align 4, !tbaa !380
  br label %253

68:                                               ; preds = %63
  %69 = load ptr, ptr %58, align 8, !tbaa !25
  %70 = call i32 @keymatch(ptr noundef %69, ptr noundef nonnull @.str.53.175, i32 noundef 2) #28
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 2, ptr %15, align 4, !tbaa !380
  br label %253

73:                                               ; preds = %68
  call fastcc void @usage() #30
  unreachable

74:                                               ; preds = %49
  %75 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.54.176, i32 noundef 1) #28
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.55.177, i32 noundef 1) #28
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %77, %74
  %81 = load i1, ptr @parse_switches.printed_version, align 4
  br i1 %81, label %85, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr @stderr, align 8, !tbaa !25
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.56.178, ptr noundef nonnull @.str.57.179, ptr noundef nonnull @.str.58.180) #32
  store i1 true, ptr @parse_switches.printed_version, align 4
  br label %85

85:                                               ; preds = %82, %80
  %86 = load ptr, ptr %0, align 8, !tbaa !15
  %87 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %86, i64 0, i32 7
  %88 = load i32, ptr %87, align 4, !tbaa !413
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %87, align 4, !tbaa !413
  br label %253

90:                                               ; preds = %77
  %91 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.59.181, i32 noundef 2) #28
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.60.182, i32 noundef 2) #28
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93, %90
  call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 1) #28
  br label %253

97:                                               ; preds = %93
  %98 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.61.183, i32 noundef 3) #28
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %121, label %100

100:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #29
  store i8 120, ptr %7, align 1, !tbaa !19
  %101 = add nsw i32 %29, 1
  %102 = icmp slt i32 %101, %1
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  call fastcc void @usage() #30
  unreachable

104:                                              ; preds = %100
  %105 = sext i32 %101 to i64
  %106 = getelementptr inbounds ptr, ptr %2, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !25
  %108 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %107, ptr noundef nonnull @.str.62.184, ptr noundef nonnull %6, ptr noundef nonnull %7) #28
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  call fastcc void @usage() #30
  unreachable

111:                                              ; preds = %104
  %112 = load i8, ptr %7, align 1
  %113 = and i8 %112, -33
  %114 = icmp eq i8 %113, 77
  %115 = load i64, ptr %6, align 8, !tbaa !273
  %116 = mul nsw i64 %115, 1000
  %117 = select i1 %114, i64 %116, i64 %115
  %118 = mul nsw i64 %117, 1000
  %119 = load ptr, ptr %16, align 8, !tbaa !7
  %120 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %119, i64 0, i32 11
  store i64 %118, ptr %120, align 8, !tbaa !492
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  br label %253

121:                                              ; preds = %97
  %122 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.63.185, i32 noundef 1) #28
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.64.186, i32 noundef 1) #28
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124, %121
  store i32 1, ptr %17, align 8, !tbaa !104
  br label %253

128:                                              ; preds = %124
  %129 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.65.187, i32 noundef 4) #28
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %128
  %132 = add nsw i32 %29, 1
  %133 = icmp slt i32 %132, %1
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  call fastcc void @usage() #30
  unreachable

135:                                              ; preds = %131
  %136 = sext i32 %132 to i64
  %137 = getelementptr inbounds ptr, ptr %2, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !25
  store ptr %138, ptr @outfilename, align 8, !tbaa !25
  br label %253

139:                                              ; preds = %128
  %140 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.66.188, i32 noundef 1) #28
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %253

142:                                              ; preds = %139
  %143 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.67.189, i32 noundef 1) #28
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %142
  %146 = add nsw i32 %29, 1
  %147 = icmp slt i32 %146, %1
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  call fastcc void @usage() #30
  unreachable

149:                                              ; preds = %145
  %150 = sext i32 %146 to i64
  %151 = getelementptr inbounds ptr, ptr %2, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !25
  %153 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %152, ptr noundef nonnull @.str.68.190, ptr noundef nonnull %5) #28
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %156, label %155

155:                                              ; preds = %149
  call fastcc void @usage() #30
  unreachable

156:                                              ; preds = %149
  %157 = load i32, ptr %5, align 4, !tbaa !61
  %158 = call i32 @jpeg_quality_scaling(i32 noundef %157) #28
  br label %253

159:                                              ; preds = %142
  %160 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.69.191, i32 noundef 2) #28
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %159
  %163 = add nsw i32 %29, 1
  %164 = icmp slt i32 %163, %1
  br i1 %164, label %166, label %165

165:                                              ; preds = %162
  call fastcc void @usage() #30
  unreachable

166:                                              ; preds = %162
  %167 = sext i32 %163 to i64
  %168 = getelementptr inbounds ptr, ptr %2, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !25
  br label %253

170:                                              ; preds = %159
  %171 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.70.192, i32 noundef 2) #28
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %170
  %174 = add nsw i32 %29, 1
  %175 = icmp slt i32 %174, %1
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  call fastcc void @usage() #30
  unreachable

177:                                              ; preds = %173
  %178 = sext i32 %174 to i64
  %179 = getelementptr inbounds ptr, ptr %2, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !25
  br label %253

181:                                              ; preds = %170
  %182 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.71.193, i32 noundef 1) #28
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %207, label %184

184:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #29
  store i8 120, ptr %9, align 1, !tbaa !19
  %185 = add nsw i32 %29, 1
  %186 = icmp slt i32 %185, %1
  br i1 %186, label %188, label %187

187:                                              ; preds = %184
  call fastcc void @usage() #30
  unreachable

188:                                              ; preds = %184
  %189 = sext i32 %185 to i64
  %190 = getelementptr inbounds ptr, ptr %2, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !25
  %192 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %191, ptr noundef nonnull @.str.62.184, ptr noundef nonnull %8, ptr noundef nonnull %9) #28
  %193 = icmp slt i32 %192, 1
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  call fastcc void @usage() #30
  unreachable

195:                                              ; preds = %188
  %196 = load i64, ptr %8, align 8
  %197 = icmp ugt i64 %196, 65535
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  call fastcc void @usage() #30
  unreachable

199:                                              ; preds = %195
  %200 = load i8, ptr %9, align 1
  %201 = and i8 %200, -33
  %202 = icmp eq i8 %201, 66
  %203 = trunc i64 %196 to i32
  br i1 %202, label %204, label %205

204:                                              ; preds = %199
  store i32 %203, ptr %19, align 8, !tbaa !181
  br label %205

205:                                              ; preds = %204, %199
  %206 = phi i32 [ 0, %204 ], [ %203, %199 ]
  store i32 %206, ptr %18, align 4, !tbaa !180
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #29
  br label %253

207:                                              ; preds = %181
  %208 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.72.194, i32 noundef 2) #28
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %207
  %211 = add nsw i32 %29, 1
  %212 = icmp slt i32 %211, %1
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  call fastcc void @usage() #30
  unreachable

214:                                              ; preds = %210
  %215 = sext i32 %211 to i64
  %216 = getelementptr inbounds ptr, ptr %2, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !25
  br label %253

218:                                              ; preds = %207
  %219 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.73.195, i32 noundef 2) #28
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %218
  %222 = add nsw i32 %29, 1
  %223 = icmp slt i32 %222, %1
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  call fastcc void @usage() #30
  unreachable

225:                                              ; preds = %221
  %226 = sext i32 %222 to i64
  %227 = getelementptr inbounds ptr, ptr %2, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !25
  br label %253

229:                                              ; preds = %218
  %230 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.74.196, i32 noundef 2) #28
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %248, label %232

232:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #29
  %233 = add nsw i32 %29, 1
  %234 = icmp slt i32 %233, %1
  br i1 %234, label %236, label %235

235:                                              ; preds = %232
  call fastcc void @usage() #30
  unreachable

236:                                              ; preds = %232
  %237 = sext i32 %233 to i64
  %238 = getelementptr inbounds ptr, ptr %2, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !25
  %240 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %239, ptr noundef nonnull @.str.68.190, ptr noundef nonnull %10) #28
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %243, label %242

242:                                              ; preds = %236
  call fastcc void @usage() #30
  unreachable

243:                                              ; preds = %236
  %244 = load i32, ptr %10, align 4
  %245 = icmp ugt i32 %244, 100
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  call fastcc void @usage() #30
  unreachable

247:                                              ; preds = %243
  store i32 %244, ptr %20, align 8, !tbaa !289
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #29
  br label %253

248:                                              ; preds = %229
  %249 = call i32 @keymatch(ptr noundef nonnull %39, ptr noundef nonnull @.str.75.197, i32 noundef 1) #28
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %248
  store i1 true, ptr @is_targa, align 4
  br label %253

252:                                              ; preds = %248
  call fastcc void @usage() #30
  unreachable

253:                                              ; preds = %251, %247, %225, %214, %205, %177, %166, %156, %139, %135, %127, %111, %96, %85, %72, %67, %62, %46, %37
  %254 = phi i32 [ %29, %37 ], [ %53, %62 ], [ %53, %67 ], [ %53, %72 ], [ %29, %85 ], [ %29, %96 ], [ %101, %111 ], [ %29, %127 ], [ %132, %135 ], [ %146, %156 ], [ %163, %166 ], [ %174, %177 ], [ %185, %205 ], [ %211, %214 ], [ %222, %225 ], [ %233, %247 ], [ %29, %251 ], [ %29, %46 ], [ %29, %139 ]
  %255 = phi i32 [ %28, %37 ], [ %28, %62 ], [ %28, %67 ], [ %28, %72 ], [ %28, %85 ], [ %28, %96 ], [ %28, %111 ], [ %28, %127 ], [ %28, %135 ], [ %158, %156 ], [ %28, %166 ], [ %28, %177 ], [ %28, %205 ], [ %28, %214 ], [ %28, %225 ], [ %28, %247 ], [ %28, %251 ], [ %28, %46 ], [ %28, %139 ]
  %256 = phi i32 [ %27, %37 ], [ %27, %62 ], [ %27, %67 ], [ %27, %72 ], [ %27, %85 ], [ %27, %96 ], [ %27, %111 ], [ %27, %127 ], [ %27, %135 ], [ %27, %156 ], [ %27, %166 ], [ %27, %177 ], [ %27, %205 ], [ %27, %214 ], [ %27, %225 ], [ %27, %247 ], [ %27, %251 ], [ 1, %46 ], [ %27, %139 ]
  %257 = phi i32 [ %26, %37 ], [ %26, %62 ], [ %26, %67 ], [ %26, %72 ], [ %26, %85 ], [ %26, %96 ], [ %26, %111 ], [ %26, %127 ], [ %26, %135 ], [ %26, %156 ], [ %26, %166 ], [ %26, %177 ], [ %26, %205 ], [ %26, %214 ], [ %26, %225 ], [ %26, %247 ], [ %26, %251 ], [ %26, %46 ], [ 1, %139 ]
  %258 = phi ptr [ %25, %37 ], [ %25, %62 ], [ %25, %67 ], [ %25, %72 ], [ %25, %85 ], [ %25, %96 ], [ %25, %111 ], [ %25, %127 ], [ %25, %135 ], [ %25, %156 ], [ %25, %166 ], [ %180, %177 ], [ %25, %205 ], [ %25, %214 ], [ %25, %225 ], [ %25, %247 ], [ %25, %251 ], [ %25, %46 ], [ %25, %139 ]
  %259 = phi ptr [ %24, %37 ], [ %24, %62 ], [ %24, %67 ], [ %24, %72 ], [ %24, %85 ], [ %24, %96 ], [ %24, %111 ], [ %24, %127 ], [ %24, %135 ], [ %24, %156 ], [ %169, %166 ], [ %24, %177 ], [ %24, %205 ], [ %24, %214 ], [ %24, %225 ], [ %24, %247 ], [ %24, %251 ], [ %24, %46 ], [ %24, %139 ]
  %260 = phi ptr [ %23, %37 ], [ %23, %62 ], [ %23, %67 ], [ %23, %72 ], [ %23, %85 ], [ %23, %96 ], [ %23, %111 ], [ %23, %127 ], [ %23, %135 ], [ %23, %156 ], [ %23, %166 ], [ %23, %177 ], [ %23, %205 ], [ %217, %214 ], [ %23, %225 ], [ %23, %247 ], [ %23, %251 ], [ %23, %46 ], [ %23, %139 ]
  %261 = phi ptr [ %22, %37 ], [ %22, %62 ], [ %22, %67 ], [ %22, %72 ], [ %22, %85 ], [ %22, %96 ], [ %22, %111 ], [ %22, %127 ], [ %22, %135 ], [ %22, %156 ], [ %22, %166 ], [ %22, %177 ], [ %22, %205 ], [ %22, %214 ], [ %228, %225 ], [ %22, %247 ], [ %22, %251 ], [ %22, %46 ], [ %22, %139 ]
  %262 = add nsw i32 %254, 1
  %263 = icmp slt i32 %262, %1
  br i1 %263, label %21, label %264, !llvm.loop !493

264:                                              ; preds = %253, %35, %4
  %265 = phi i32 [ 1, %4 ], [ %29, %35 ], [ %262, %253 ]
  %266 = phi i32 [ 100, %4 ], [ %28, %35 ], [ %255, %253 ]
  %267 = phi i32 [ 0, %4 ], [ %27, %35 ], [ %256, %253 ]
  %268 = phi i32 [ 0, %4 ], [ %26, %35 ], [ %257, %253 ]
  %269 = phi ptr [ null, %4 ], [ %25, %35 ], [ %258, %253 ]
  %270 = phi ptr [ null, %4 ], [ %24, %35 ], [ %259, %253 ]
  %271 = phi ptr [ null, %4 ], [ %23, %35 ], [ %260, %253 ]
  %272 = phi ptr [ null, %4 ], [ %22, %35 ], [ %261, %253 ]
  %273 = icmp eq i32 %3, 0
  br i1 %273, label %302, label %274

274:                                              ; preds = %264
  %275 = load i32, ptr %5, align 4, !tbaa !61
  call void @jpeg_set_quality(ptr noundef nonnull %0, i32 noundef %275, i32 noundef %267) #28
  %276 = icmp eq ptr %269, null
  br i1 %276, label %281, label %277

277:                                              ; preds = %274
  %278 = call i32 @read_quant_tables(ptr noundef nonnull %0, ptr noundef nonnull %269, i32 noundef %266, i32 noundef %267) #28
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  call fastcc void @usage() #30
  unreachable

281:                                              ; preds = %277, %274
  %282 = icmp eq ptr %270, null
  br i1 %282, label %287, label %283

283:                                              ; preds = %281
  %284 = call i32 @set_quant_slots(ptr noundef nonnull %0, ptr noundef nonnull %270) #28
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  call fastcc void @usage() #30
  unreachable

287:                                              ; preds = %283, %281
  %288 = icmp eq ptr %271, null
  br i1 %288, label %293, label %289

289:                                              ; preds = %287
  %290 = call i32 @set_sample_factors(ptr noundef nonnull %0, ptr noundef nonnull %271) #28
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  call fastcc void @usage() #30
  unreachable

293:                                              ; preds = %289, %287
  %294 = icmp eq i32 %268, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %293
  call void @jpeg_simple_progression(ptr noundef nonnull %0) #28
  br label %296

296:                                              ; preds = %295, %293
  %297 = icmp eq ptr %272, null
  br i1 %297, label %302, label %298

298:                                              ; preds = %296
  %299 = call i32 @read_scan_script(ptr noundef nonnull %0, ptr noundef nonnull %272) #28
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %298
  call fastcc void @usage() #30
  unreachable

302:                                              ; preds = %298, %296, %264
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #29
  ret i32 %265
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @usage() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !25
  %2 = load ptr, ptr @progname, align 8, !tbaa !25
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.76.144, ptr noundef %2) #32
  %4 = load ptr, ptr @stderr, align 8, !tbaa !25
  %5 = tail call i64 @fwrite(ptr nonnull @.str.77.145, i64 12, i64 1, ptr %4) #34
  %6 = load ptr, ptr @stderr, align 8, !tbaa !25
  %7 = tail call i64 @fwrite(ptr nonnull @.str.78.146, i64 37, i64 1, ptr %6) #34
  %8 = load ptr, ptr @stderr, align 8, !tbaa !25
  %9 = tail call i64 @fwrite(ptr nonnull @.str.79.147, i64 68, i64 1, ptr %8) #34
  %10 = load ptr, ptr @stderr, align 8, !tbaa !25
  %11 = tail call i64 @fwrite(ptr nonnull @.str.80.148, i64 45, i64 1, ptr %10) #34
  %12 = load ptr, ptr @stderr, align 8, !tbaa !25
  %13 = tail call i64 @fwrite(ptr nonnull @.str.81.149, i64 77, i64 1, ptr %12) #34
  %14 = load ptr, ptr @stderr, align 8, !tbaa !25
  %15 = tail call i64 @fwrite(ptr nonnull @.str.82.150, i64 46, i64 1, ptr %14) #34
  %16 = load ptr, ptr @stderr, align 8, !tbaa !25
  %17 = tail call i64 @fwrite(ptr nonnull @.str.83.151, i64 65, i64 1, ptr %16) #34
  %18 = load ptr, ptr @stderr, align 8, !tbaa !25
  %19 = tail call i64 @fwrite(ptr nonnull @.str.84.152, i64 29, i64 1, ptr %18) #34
  %20 = load ptr, ptr @stderr, align 8, !tbaa !25
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.85.153, ptr noundef nonnull @.str.86.154) #32
  %22 = load ptr, ptr @stderr, align 8, !tbaa !25
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.87.155, ptr noundef nonnull @.str.88.156) #32
  %24 = load ptr, ptr @stderr, align 8, !tbaa !25
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.89.157, ptr noundef nonnull @.str.88.156) #32
  %26 = load ptr, ptr @stderr, align 8, !tbaa !25
  %27 = tail call i64 @fwrite(ptr nonnull @.str.90.158, i64 67, i64 1, ptr %26) #34
  %28 = load ptr, ptr @stderr, align 8, !tbaa !25
  %29 = tail call i64 @fwrite(ptr nonnull @.str.91.159, i64 62, i64 1, ptr %28) #34
  %30 = load ptr, ptr @stderr, align 8, !tbaa !25
  %31 = tail call i64 @fwrite(ptr nonnull @.str.92.160, i64 51, i64 1, ptr %30) #34
  %32 = load ptr, ptr @stderr, align 8, !tbaa !25
  %33 = tail call i64 @fwrite(ptr nonnull @.str.93.161, i64 46, i64 1, ptr %32) #34
  %34 = load ptr, ptr @stderr, align 8, !tbaa !25
  %35 = tail call i64 @fwrite(ptr nonnull @.str.94.162, i64 43, i64 1, ptr %34) #34
  %36 = load ptr, ptr @stderr, align 8, !tbaa !25
  %37 = tail call i64 @fwrite(ptr nonnull @.str.95.163, i64 22, i64 1, ptr %36) #34
  %38 = load ptr, ptr @stderr, align 8, !tbaa !25
  %39 = tail call i64 @fwrite(ptr nonnull @.str.96.164, i64 39, i64 1, ptr %38) #34
  %40 = load ptr, ptr @stderr, align 8, !tbaa !25
  %41 = tail call i64 @fwrite(ptr nonnull @.str.97.165, i64 55, i64 1, ptr %40) #34
  %42 = load ptr, ptr @stderr, align 8, !tbaa !25
  %43 = tail call i64 @fwrite(ptr nonnull @.str.98.166, i64 55, i64 1, ptr %42) #34
  %44 = load ptr, ptr @stderr, align 8, !tbaa !25
  %45 = tail call i64 @fwrite(ptr nonnull @.str.99.167, i64 52, i64 1, ptr %44) #34
  %46 = load ptr, ptr @stderr, align 8, !tbaa !25
  %47 = tail call i64 @fwrite(ptr nonnull @.str.100.168, i64 56, i64 1, ptr %46) #34
  tail call void @exit(i32 noundef 1) #31
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal ptr @jinit_read_ppm(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 80) #28
  store ptr @start_input_ppm, ptr %5, align 8, !tbaa !494
  %6 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %5, i64 0, i32 2
  store ptr @finish_input_ppm, ptr %6, align 8, !tbaa !496
  ret ptr %5
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_input_ppm(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !497
  %5 = tail call i32 @getc(ptr noundef %4) #30
  %6 = icmp eq i32 %5, 80
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 1027, ptr %9, align 8, !tbaa !16
  %10 = load ptr, ptr %8, align 8, !tbaa !20
  tail call void %10(ptr noundef nonnull %0) #28
  br label %11

11:                                               ; preds = %7, %2
  %12 = load ptr, ptr %3, align 8, !tbaa !497
  %13 = tail call i32 @getc(ptr noundef %12) #30
  %14 = load ptr, ptr %3, align 8, !tbaa !497
  %15 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %14) #30
  %16 = load ptr, ptr %3, align 8, !tbaa !497
  %17 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %16) #30
  %18 = load ptr, ptr %3, align 8, !tbaa !497
  %19 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %18) #30
  %20 = icmp eq i32 %15, 0
  %21 = icmp eq i32 %17, 0
  %22 = select i1 %20, i1 true, i1 %21
  %23 = icmp eq i32 %19, 0
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %11
  %26 = load ptr, ptr %0, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 1027, ptr %27, align 8, !tbaa !16
  %28 = load ptr, ptr %26, align 8, !tbaa !20
  tail call void %28(ptr noundef nonnull %0) #28
  br label %29

29:                                               ; preds = %25, %11
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %30, align 8, !tbaa !70
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  store i32 %15, ptr %31, align 8, !tbaa !112
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  store i32 %17, ptr %32, align 4, !tbaa !34
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
  store i32 1, ptr %35, align 8, !tbaa !83
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 1, ptr %36, align 4, !tbaa !75
  %37 = load ptr, ptr %0, align 8, !tbaa !15
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 5
  store i32 1028, ptr %38, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 6
  store i32 %15, ptr %39, align 4, !tbaa !19
  %40 = load ptr, ptr %0, align 8, !tbaa !15
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 6, i32 0, i64 1
  store i32 %17, ptr %41, align 4, !tbaa !19
  %42 = load ptr, ptr %0, align 8, !tbaa !15
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !58
  tail call void %44(ptr noundef nonnull %0, i32 noundef 1) #28
  %45 = icmp ugt i32 %19, 255
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_word_gray_row, ptr %47, align 8, !tbaa !498
  br label %76

48:                                               ; preds = %34
  %49 = icmp eq i32 %19, 255
  %50 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  br i1 %49, label %51, label %52

51:                                               ; preds = %48
  store ptr @get_raw_row, ptr %50, align 8, !tbaa !498
  br label %76

52:                                               ; preds = %48
  store ptr @get_scaled_gray_row, ptr %50, align 8, !tbaa !498
  br label %76

53:                                               ; preds = %29
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 3, ptr %54, align 8, !tbaa !83
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %55, align 4, !tbaa !75
  %56 = load ptr, ptr %0, align 8, !tbaa !15
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 5
  store i32 1030, ptr %57, align 8, !tbaa !16
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 6
  store i32 %15, ptr %58, align 4, !tbaa !19
  %59 = load ptr, ptr %0, align 8, !tbaa !15
  %60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i64 0, i32 6, i32 0, i64 1
  store i32 %17, ptr %60, align 4, !tbaa !19
  %61 = load ptr, ptr %0, align 8, !tbaa !15
  %62 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !58
  tail call void %63(ptr noundef nonnull %0, i32 noundef 1) #28
  %64 = icmp ugt i32 %19, 255
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_word_rgb_row, ptr %66, align 8, !tbaa !498
  br label %76

67:                                               ; preds = %53
  %68 = icmp eq i32 %19, 255
  %69 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  br i1 %68, label %70, label %71

70:                                               ; preds = %67
  store ptr @get_raw_row, ptr %69, align 8, !tbaa !498
  br label %76

71:                                               ; preds = %67
  store ptr @get_scaled_rgb_row, ptr %69, align 8, !tbaa !498
  br label %76

72:                                               ; preds = %29
  %73 = load ptr, ptr %0, align 8, !tbaa !15
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 1027, ptr %74, align 8, !tbaa !16
  %75 = load ptr, ptr %73, align 8, !tbaa !20
  tail call void %75(ptr noundef nonnull %0) #28
  br label %76

76:                                               ; preds = %72, %71, %70, %65, %52, %51, %46
  %77 = phi i1 [ true, %52 ], [ false, %51 ], [ true, %46 ], [ true, %71 ], [ false, %70 ], [ true, %65 ], [ true, %72 ]
  %78 = phi i1 [ false, %52 ], [ true, %51 ], [ false, %46 ], [ false, %71 ], [ true, %70 ], [ false, %65 ], [ false, %72 ]
  %79 = zext i32 %15 to i64
  %80 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %81 = load i32, ptr %80, align 8, !tbaa !83
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, %79
  %84 = icmp ugt i32 %19, 255
  %85 = zext i1 %84 to i64
  %86 = shl i64 %83, %85
  %87 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  store i64 %86, ptr %87, align 8, !tbaa !499
  %88 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !7
  %90 = load ptr, ptr %89, align 8, !tbaa !68
  %91 = tail call ptr %90(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %86) #28
  %92 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  store ptr %91, ptr %92, align 8, !tbaa !500
  br i1 %77, label %107, label %119

93:                                               ; preds = %33, %29
  %94 = phi i32 [ 1031, %33 ], [ 1029, %29 ]
  %95 = phi ptr [ @get_text_rgb_row, %33 ], [ @get_text_gray_row, %29 ]
  %96 = phi <2 x i32> [ <i32 3, i32 2>, %33 ], [ <i32 1, i32 1>, %29 ]
  %97 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store <2 x i32> %96, ptr %97, align 8, !tbaa !19
  %98 = load ptr, ptr %0, align 8, !tbaa !15
  %99 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %98, i64 0, i32 5
  store i32 %94, ptr %99, align 8, !tbaa !16
  %100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %98, i64 0, i32 6
  store i32 %15, ptr %100, align 4, !tbaa !19
  %101 = load ptr, ptr %0, align 8, !tbaa !15
  %102 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %101, i64 0, i32 6, i32 0, i64 1
  store i32 %17, ptr %102, align 4, !tbaa !19
  %103 = load ptr, ptr %0, align 8, !tbaa !15
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !58
  tail call void %105(ptr noundef nonnull %0, i32 noundef 1) #28
  %106 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr %95, ptr %106, align 8, !tbaa !498
  br label %107

107:                                              ; preds = %93, %76
  %108 = phi i1 [ %78, %76 ], [ false, %93 ]
  %109 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !7
  %111 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !205
  %113 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %114 = load i32, ptr %113, align 8, !tbaa !83
  %115 = mul i32 %114, %15
  %116 = tail call ptr %112(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %115, i32 noundef 1) #28
  %117 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %116, ptr %117, align 8, !tbaa !501
  %118 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %118, align 8, !tbaa !502
  br i1 %108, label %143, label %123

119:                                              ; preds = %76
  %120 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 2
  store ptr %91, ptr %120, align 8, !tbaa !503
  %121 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %120, ptr %121, align 8, !tbaa !501
  %122 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %122, align 8, !tbaa !502
  br i1 %78, label %143, label %123

123:                                              ; preds = %119, %107
  %124 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !7
  %126 = load ptr, ptr %125, align 8, !tbaa !68
  %127 = zext i32 %19 to i64
  %128 = add nuw nsw i64 %127, 1
  %129 = tail call ptr %126(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %128) #28
  %130 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  store ptr %129, ptr %130, align 8, !tbaa !504
  %131 = lshr i32 %19, 1
  %132 = zext i32 %131 to i64
  br label %133

133:                                              ; preds = %133, %123
  %134 = phi i64 [ 0, %123 ], [ %141, %133 ]
  %135 = mul nuw nsw i64 %134, 255
  %136 = add nuw nsw i64 %135, %132
  %137 = udiv i64 %136, %127
  %138 = trunc i64 %137 to i8
  %139 = load ptr, ptr %130, align 8, !tbaa !504
  %140 = getelementptr inbounds i8, ptr %139, i64 %134
  store i8 %138, ptr %140, align 1, !tbaa !19
  %141 = add nuw nsw i64 %134, 1
  %142 = icmp eq i64 %134, %127
  br i1 %142, label %143, label %133, !llvm.loop !505

143:                                              ; preds = %133, %119, %107
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @finish_input_ppm(ptr nocapture %0, ptr nocapture %1) #11 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_pbm_integer(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %5, %2
  %4 = tail call fastcc i32 @pbm_getc(ptr noundef %1) #30
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
  %7 = load ptr, ptr %0, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 42, ptr %8, align 8, !tbaa !16
  %9 = load ptr, ptr %7, align 8, !tbaa !20
  tail call void %9(ptr noundef nonnull %0) #28
  br label %13

10:                                               ; preds = %3
  %.lcssa1 = phi i32 [ %4, %3 ]
  %11 = add i32 %.lcssa1, -58
  %12 = icmp ult i32 %11, -10
  br i1 %12, label %13, label %18

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %.lcssa1, %10 ], [ %.lcssa2, %6 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 1026, ptr %16, align 8, !tbaa !16
  %17 = load ptr, ptr %15, align 8, !tbaa !20
  tail call void %17(ptr noundef nonnull %0) #28
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i32 [ %14, %13 ], [ %.lcssa1, %10 ]
  %20 = add nsw i32 %19, -48
  br label %21

21:                                               ; preds = %26, %18
  %22 = phi i32 [ %20, %18 ], [ %28, %26 ]
  %23 = tail call fastcc i32 @pbm_getc(ptr noundef %1) #30
  %24 = add i32 %23, -48
  %25 = icmp ult i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = mul i32 %22, 10
  %28 = add i32 %24, %27
  br label %21, !llvm.loop !506

29:                                               ; preds = %21
  %.lcssa = phi i32 [ %22, %21 ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_word_gray_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !504
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !500
  %7 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !499
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !497
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10) #30
  %12 = load i64, ptr %7, align 8, !tbaa !499
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %16, align 8, !tbaa !16
  %17 = load ptr, ptr %15, align 8, !tbaa !20
  tail call void %17(ptr noundef nonnull %0) #28
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !112
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !500
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !501
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi ptr [ %36, %27 ], [ %26, %22 ]
  %29 = phi i32 [ %37, %27 ], [ %20, %22 ]
  %30 = phi ptr [ %33, %27 ], [ %23, %22 ]
  %31 = load i16, ptr %30, align 1
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds i8, ptr %30, i64 2
  %34 = getelementptr inbounds i8, ptr %4, i64 %32
  %35 = load i8, ptr %34, align 1, !tbaa !19
  %36 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %35, ptr %28, align 1, !tbaa !19
  %37 = add i32 %29, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %27, !llvm.loop !507

39:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_raw_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !500
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !499
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !497
  %9 = tail call i64 @fread(ptr noundef %4, i64 noundef 1, i64 noundef %6, ptr noundef %8) #30
  %10 = load i64, ptr %5, align 8, !tbaa !499
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 42, ptr %14, align 8, !tbaa !16
  %15 = load ptr, ptr %13, align 8, !tbaa !20
  tail call void %15(ptr noundef nonnull %0) #28
  br label %16

16:                                               ; preds = %12, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_scaled_gray_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !504
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !500
  %7 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !499
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !497
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10) #30
  %12 = load i64, ptr %7, align 8, !tbaa !499
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %16, align 8, !tbaa !16
  %17 = load ptr, ptr %15, align 8, !tbaa !20
  tail call void %17(ptr noundef nonnull %0) #28
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !112
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !500
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !501
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi i32 [ %37, %27 ], [ %20, %22 ]
  %29 = phi ptr [ %36, %27 ], [ %26, %22 ]
  %30 = phi ptr [ %31, %27 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !19
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !19
  %36 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %35, ptr %29, align 1, !tbaa !19
  %37 = add i32 %28, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %27, !llvm.loop !508

39:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_word_rgb_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !504
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !500
  %7 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !499
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !497
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10) #30
  %12 = load i64, ptr %7, align 8, !tbaa !499
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %16, align 8, !tbaa !16
  %17 = load ptr, ptr %15, align 8, !tbaa !20
  tail call void %17(ptr noundef nonnull %0) #28
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !112
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !500
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !501
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi ptr [ %48, %27 ], [ %26, %22 ]
  %29 = phi i32 [ %49, %27 ], [ %20, %22 ]
  %30 = phi ptr [ %45, %27 ], [ %23, %22 ]
  %31 = load i16, ptr %30, align 1
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds i8, ptr %30, i64 2
  %34 = getelementptr inbounds i8, ptr %4, i64 %32
  %35 = load i8, ptr %34, align 1, !tbaa !19
  %36 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %35, ptr %28, align 1, !tbaa !19
  %37 = load i16, ptr %33, align 1
  %38 = zext i16 %37 to i64
  %39 = getelementptr inbounds i8, ptr %30, i64 4
  %40 = getelementptr inbounds i8, ptr %4, i64 %38
  %41 = load i8, ptr %40, align 1, !tbaa !19
  %42 = getelementptr inbounds i8, ptr %28, i64 2
  store i8 %41, ptr %36, align 1, !tbaa !19
  %43 = load i16, ptr %39, align 1
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds i8, ptr %30, i64 6
  %46 = getelementptr inbounds i8, ptr %4, i64 %44
  %47 = load i8, ptr %46, align 1, !tbaa !19
  %48 = getelementptr inbounds i8, ptr %28, i64 3
  store i8 %47, ptr %42, align 1, !tbaa !19
  %49 = add i32 %29, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %27, !llvm.loop !509

51:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_scaled_rgb_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !504
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !500
  %7 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !499
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !497
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10) #30
  %12 = load i64, ptr %7, align 8, !tbaa !499
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %16, align 8, !tbaa !16
  %17 = load ptr, ptr %15, align 8, !tbaa !20
  tail call void %17(ptr noundef nonnull %0) #28
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !112
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !500
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !501
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi i32 [ %49, %27 ], [ %20, %22 ]
  %29 = phi ptr [ %48, %27 ], [ %26, %22 ]
  %30 = phi ptr [ %43, %27 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !19
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !19
  %36 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %35, ptr %29, align 1, !tbaa !19
  %37 = getelementptr inbounds i8, ptr %30, i64 2
  %38 = load i8, ptr %31, align 1, !tbaa !19
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i8, ptr %4, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !19
  %42 = getelementptr inbounds i8, ptr %29, i64 2
  store i8 %41, ptr %36, align 1, !tbaa !19
  %43 = getelementptr inbounds i8, ptr %30, i64 3
  %44 = load i8, ptr %37, align 1, !tbaa !19
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i8, ptr %4, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !19
  %48 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 %47, ptr %42, align 1, !tbaa !19
  %49 = add i32 %28, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %27, !llvm.loop !510

51:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_text_rgb_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !497
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !504
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !112
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !501
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %32, %14 ], [ %8, %10 ]
  %16 = phi ptr [ %31, %14 ], [ %13, %10 ]
  %17 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4) #30
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %6, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !19
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %20, ptr %16, align 1, !tbaa !19
  %22 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4) #30
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %6, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !19
  %26 = getelementptr inbounds i8, ptr %16, i64 2
  store i8 %25, ptr %21, align 1, !tbaa !19
  %27 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4) #30
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %6, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !19
  %31 = getelementptr inbounds i8, ptr %16, i64 3
  store i8 %30, ptr %26, align 1, !tbaa !19
  %32 = add i32 %15, -1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %14, !llvm.loop !511

34:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_text_gray_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !497
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !504
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !112
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !501
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %22, %14 ], [ %8, %10 ]
  %16 = phi ptr [ %21, %14 ], [ %13, %10 ]
  %17 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4) #30
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %6, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !19
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %20, ptr %16, align 1, !tbaa !19
  %22 = add i32 %15, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %14, !llvm.loop !512

24:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @pbm_getc(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = tail call i32 @getc(ptr noundef %0) #30
  %3 = icmp eq i32 %2, 35
  br i1 %3, label %4, label %6

4:                                                ; preds = %4, %1
  %5 = tail call i32 @getc(ptr noundef %0) #30
  switch i32 %5, label %4 [
    i32 -1, label %6
    i32 10, label %6
  ]

6:                                                ; preds = %4, %4, %1
  %7 = phi i32 [ %2, %1 ], [ %5, %4 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @jinit_read_gif(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 440) #28
  %6 = getelementptr inbounds %struct.gif_source_struct, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !513
  store ptr @start_input_gif, ptr %5, align 8, !tbaa !515
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %5, i64 0, i32 2
  store ptr @finish_input_gif, ptr %7, align 8, !tbaa !516
  ret ptr %5
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_input_gif(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #29
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !205
  %9 = tail call ptr %8(ptr noundef %0, i32 noundef 1, i32 noundef 256, i32 noundef 3) #28
  %10 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !517
  %11 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !518
  %13 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 6, ptr noundef %12) #30
  %14 = icmp eq i64 %13, 6
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 5
  store i32 1016, ptr %17, align 8, !tbaa !16
  %18 = load ptr, ptr %16, align 8, !tbaa !20
  tail call void %18(ptr noundef nonnull %0) #28
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i8, ptr %4, align 1, !tbaa !19
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
  %31 = load ptr, ptr %0, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 1016, ptr %32, align 8, !tbaa !16
  %33 = load ptr, ptr %31, align 8, !tbaa !20
  tail call void %33(ptr noundef nonnull %0) #28
  br label %34

34:                                               ; preds = %30, %19
  %35 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !19
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
  %52 = load ptr, ptr %0, align 8, !tbaa !15
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 6
  store i32 %37, ptr %53, align 4, !tbaa !61
  %54 = sext i8 %40 to i32
  %55 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 6, i32 0, i64 1
  store i32 %54, ptr %55, align 4, !tbaa !61
  %56 = sext i8 %44 to i32
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 6, i32 0, i64 2
  store i32 %56, ptr %57, align 4, !tbaa !61
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 5
  store i32 1018, ptr %58, align 8, !tbaa !16
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !58
  tail call void %60(ptr noundef nonnull %0, i32 noundef 1) #28
  br label %61

61:                                               ; preds = %51, %47, %34
  %62 = load ptr, ptr %11, align 8, !tbaa !518
  %63 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 7, ptr noundef %62) #30
  %64 = icmp eq i64 %63, 7
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %0, align 8, !tbaa !15
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 5
  store i32 42, ptr %67, align 8, !tbaa !16
  %68 = load ptr, ptr %66, align 8, !tbaa !20
  tail call void %68(ptr noundef nonnull %0) #28
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i8, ptr %39, align 1, !tbaa !19
  %71 = and i8 %70, 7
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 2, %72
  %74 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 6
  %75 = load i8, ptr %74, align 1, !tbaa !19
  switch i8 %75, label %76 [
    i8 49, label %81
    i8 0, label %81
  ]

76:                                               ; preds = %69
  %77 = load ptr, ptr %0, align 8, !tbaa !15
  %78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i64 0, i32 5
  store i32 1020, ptr %78, align 8, !tbaa !16
  %79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !58
  tail call void %80(ptr noundef nonnull %0, i32 noundef 1) #28
  br label %81

81:                                               ; preds = %76, %69, %69
  %82 = icmp sgt i8 %70, -1
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %10, align 8, !tbaa !517
  tail call fastcc void @ReadColorMap(ptr noundef nonnull %1, i32 noundef %73, ptr noundef %84) #30
  br label %85

85:                                               ; preds = %83, %81
  %86 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 1
  br label %87

87:                                               ; preds = %114, %85
  %88 = load ptr, ptr %11, align 8, !tbaa !518
  %89 = tail call i32 @getc(ptr noundef %88) #30
  switch i32 %89, label %121 [
    i32 -1, label %90
    i32 59, label %115
    i32 33, label %92
    i32 44, label %128
  ]

90:                                               ; preds = %87
  %91 = load ptr, ptr %86, align 8, !tbaa !513
  br label %115

92:                                               ; preds = %87
  %93 = load ptr, ptr %11, align 8, !tbaa !518
  %94 = tail call i32 @getc(ptr noundef %93) #30
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load ptr, ptr %86, align 8, !tbaa !513
  %98 = load ptr, ptr %97, align 8, !tbaa !15
  %99 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %98, i64 0, i32 5
  store i32 42, ptr %99, align 8, !tbaa !16
  %100 = load ptr, ptr %98, align 8, !tbaa !20
  tail call void %100(ptr noundef nonnull %97) #28
  br label %101

101:                                              ; preds = %96, %92
  %102 = load ptr, ptr %86, align 8, !tbaa !513
  %103 = load ptr, ptr %102, align 8, !tbaa !15
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 5
  store i32 1019, ptr %104, align 8, !tbaa !16
  %105 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 6
  store i32 %94, ptr %105, align 4, !tbaa !19
  %106 = load ptr, ptr %86, align 8, !tbaa !513
  %107 = load ptr, ptr %106, align 8, !tbaa !15
  %108 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !58
  tail call void %109(ptr noundef nonnull %106, i32 noundef 1) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #29
  br label %110

110:                                              ; preds = %110, %101
  %111 = call fastcc i32 @GetDataBlock(ptr noundef %1, ptr noundef nonnull %3) #30
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %110, label %113, !llvm.loop !519

113:                                              ; preds = %110
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #29
  br label %114

114:                                              ; preds = %121, %113
  br label %87

115:                                              ; preds = %90, %87
  %116 = phi ptr [ %91, %90 ], [ %0, %87 ]
  %117 = phi i32 [ 42, %90 ], [ 1015, %87 ]
  %118 = load ptr, ptr %116, align 8, !tbaa !15
  %119 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 5
  store i32 %117, ptr %119, align 8, !tbaa !16
  %120 = load ptr, ptr %118, align 8, !tbaa !20
  tail call void %120(ptr noundef nonnull %116) #28
  br label %121

121:                                              ; preds = %115, %87
  %122 = load ptr, ptr %0, align 8, !tbaa !15
  %123 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %122, i64 0, i32 5
  store i32 1022, ptr %123, align 8, !tbaa !16
  %124 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %122, i64 0, i32 6
  store i32 %89, ptr %124, align 4, !tbaa !19
  %125 = load ptr, ptr %0, align 8, !tbaa !15
  %126 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !58
  tail call void %127(ptr noundef nonnull %0, i32 noundef -1) #28
  br label %114

128:                                              ; preds = %87
  %129 = load ptr, ptr %11, align 8, !tbaa !518
  %130 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 9, ptr noundef %129) #30
  %131 = icmp eq i64 %130, 9
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %0, align 8, !tbaa !15
  %134 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %133, i64 0, i32 5
  store i32 42, ptr %134, align 8, !tbaa !16
  %135 = load ptr, ptr %133, align 8, !tbaa !20
  tail call void %135(ptr noundef nonnull %0) #28
  br label %136

136:                                              ; preds = %132, %128
  %137 = load i8, ptr %43, align 1, !tbaa !19
  %138 = zext i8 %137 to i32
  %139 = shl nuw nsw i32 %138, 8
  %140 = load i8, ptr %39, align 1, !tbaa !19
  %141 = zext i8 %140 to i32
  %142 = or i32 %139, %141
  %143 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 7
  %144 = load i8, ptr %143, align 1, !tbaa !19
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 8
  %147 = load i8, ptr %74, align 1, !tbaa !19
  %148 = zext i8 %147 to i32
  %149 = or i32 %146, %148
  %150 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 8
  %151 = load i8, ptr %150, align 1, !tbaa !19
  %152 = and i8 %151, 64
  %153 = zext i8 %152 to i32
  %154 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 21
  store i32 %153, ptr %154, align 8, !tbaa !520
  %155 = icmp sgt i8 %151, -1
  br i1 %155, label %161, label %156

156:                                              ; preds = %136
  %157 = and i8 %151, 7
  %158 = zext i8 %157 to i32
  %159 = shl nuw nsw i32 2, %158
  %160 = load ptr, ptr %10, align 8, !tbaa !517
  tail call fastcc void @ReadColorMap(ptr noundef nonnull %1, i32 noundef %159, ptr noundef %160) #30
  br label %161

161:                                              ; preds = %156, %136
  %162 = phi i32 [ %159, %156 ], [ %73, %136 ]
  %163 = load ptr, ptr %11, align 8, !tbaa !518
  %164 = tail call i32 @getc(ptr noundef %163) #30
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load ptr, ptr %86, align 8, !tbaa !513
  %168 = load ptr, ptr %167, align 8, !tbaa !15
  %169 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %168, i64 0, i32 5
  store i32 42, ptr %169, align 8, !tbaa !16
  %170 = load ptr, ptr %168, align 8, !tbaa !20
  tail call void %170(ptr noundef nonnull %167) #28
  %171 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 8
  store i32 -1, ptr %171, align 4, !tbaa !521
  br label %176

172:                                              ; preds = %161
  %173 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 8
  store i32 %164, ptr %173, align 4, !tbaa !521
  %174 = add i32 %164, -12
  %175 = icmp ult i32 %174, -10
  br i1 %175, label %176, label %183

176:                                              ; preds = %172, %166
  %177 = phi ptr [ %171, %166 ], [ %173, %172 ]
  %178 = load ptr, ptr %0, align 8, !tbaa !15
  %179 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %178, i64 0, i32 5
  store i32 1013, ptr %179, align 8, !tbaa !16
  %180 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %178, i64 0, i32 6
  store i32 %164, ptr %180, align 4, !tbaa !19
  %181 = load ptr, ptr %0, align 8, !tbaa !15
  %182 = load ptr, ptr %181, align 8, !tbaa !20
  tail call void %182(ptr noundef nonnull %0) #28
  br label %183

183:                                              ; preds = %176, %172
  %184 = phi ptr [ %173, %172 ], [ %177, %176 ]
  %185 = load ptr, ptr %5, align 8, !tbaa !7
  %186 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %185, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !239
  %188 = tail call ptr %187(ptr noundef %0, i32 noundef 1, i64 noundef 8192) #28
  %189 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 17
  store ptr %188, ptr %189, align 8, !tbaa !522
  %190 = load ptr, ptr %5, align 8, !tbaa !7
  %191 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !239
  %193 = tail call ptr %192(ptr noundef %0, i32 noundef 1, i64 noundef 4096) #28
  %194 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 18
  store ptr %193, ptr %194, align 8, !tbaa !523
  %195 = load ptr, ptr %5, align 8, !tbaa !7
  %196 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %195, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !239
  %198 = tail call ptr %197(ptr noundef %0, i32 noundef 1, i64 noundef 4096) #28
  %199 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 19
  store ptr %198, ptr %199, align 8, !tbaa !524
  %200 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 4
  store <4 x i32> <i32 2, i32 0, i32 0, i32 0>, ptr %200, align 4, !tbaa !61
  %201 = load i32, ptr %184, align 4, !tbaa !521
  %202 = shl nuw i32 1, %201
  %203 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 9
  store i32 %202, ptr %203, align 8, !tbaa !525
  %204 = add nuw nsw i32 %202, 1
  %205 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 10
  store i32 %204, ptr %205, align 4, !tbaa !526
  %206 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 14
  store i32 1, ptr %206, align 4, !tbaa !527
  %207 = add nsw i32 %201, 1
  %208 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 11
  store i32 %207, ptr %208, align 8, !tbaa !528
  %209 = shl i32 2, %201
  %210 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 12
  store i32 %209, ptr %210, align 4, !tbaa !529
  %211 = add nuw nsw i32 %202, 2
  %212 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 13
  store i32 %211, ptr %212, align 8, !tbaa !530
  %213 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 20
  store ptr %198, ptr %213, align 8, !tbaa !531
  %214 = load i32, ptr %154, align 8, !tbaa !520
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %229, label %216

216:                                              ; preds = %183
  %217 = load ptr, ptr %5, align 8, !tbaa !7
  %218 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %217, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !532
  %220 = tail call ptr %219(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef %142, i32 noundef %149, i32 noundef 1) #28
  %221 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 22
  store ptr %220, ptr %221, align 8, !tbaa !533
  %222 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !21
  %224 = icmp eq ptr %223, null
  br i1 %224, label %229, label %225

225:                                              ; preds = %216
  %226 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %223, i64 0, i32 2
  %227 = load i32, ptr %226, align 4, !tbaa !534
  %228 = add nsw i32 %227, 1
  store i32 %228, ptr %226, align 4, !tbaa !534
  br label %229

229:                                              ; preds = %225, %216, %183
  %230 = phi ptr [ @load_interlaced_image, %225 ], [ @load_interlaced_image, %216 ], [ @get_pixel_rows, %183 ]
  %231 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr %230, ptr %231, align 8, !tbaa !536
  %232 = load ptr, ptr %5, align 8, !tbaa !7
  %233 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %232, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !205
  %235 = mul nuw nsw i32 %142, 3
  %236 = tail call ptr %234(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %235, i32 noundef 1) #28
  %237 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %236, ptr %237, align 8, !tbaa !537
  %238 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %238, align 8, !tbaa !538
  %239 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %239, align 4, !tbaa !75
  %240 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 3, ptr %240, align 8, !tbaa !83
  %241 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %241, align 8, !tbaa !70
  %242 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  store i32 %142, ptr %242, align 8, !tbaa !112
  %243 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  store i32 %149, ptr %243, align 4, !tbaa !34
  %244 = load ptr, ptr %0, align 8, !tbaa !15
  %245 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %244, i64 0, i32 6
  store i32 %142, ptr %245, align 4, !tbaa !61
  %246 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %244, i64 0, i32 6, i32 0, i64 1
  store i32 %149, ptr %246, align 4, !tbaa !61
  %247 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %244, i64 0, i32 6, i32 0, i64 2
  store i32 %162, ptr %247, align 4, !tbaa !61
  %248 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %244, i64 0, i32 5
  store i32 1017, ptr %248, align 8, !tbaa !16
  %249 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %244, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !58
  tail call void %250(ptr noundef nonnull %0, i32 noundef 1) #28
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @finish_input_gif(ptr nocapture %0, ptr nocapture %1) #11 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ReadColorMap(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %51

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds ptr, ptr %2, i64 1
  %9 = getelementptr inbounds ptr, ptr %2, i64 2
  %10 = zext i32 %1 to i64
  br label %11

11:                                               ; preds = %45, %5
  %12 = phi i64 [ 0, %5 ], [ %49, %45 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !518
  %14 = tail call i32 @getc(ptr noundef %13) #30
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load ptr, ptr %7, align 8, !tbaa !513
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 42, ptr %19, align 8, !tbaa !16
  %20 = load ptr, ptr %18, align 8, !tbaa !20
  tail call void %20(ptr noundef nonnull %17) #28
  br label %21

21:                                               ; preds = %16, %11
  %22 = trunc i32 %14 to i8
  %23 = load ptr, ptr %2, align 8, !tbaa !25
  %24 = getelementptr inbounds i8, ptr %23, i64 %12
  store i8 %22, ptr %24, align 1, !tbaa !19
  %25 = load ptr, ptr %6, align 8, !tbaa !518
  %26 = tail call i32 @getc(ptr noundef %25) #30
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load ptr, ptr %7, align 8, !tbaa !513
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i64 0, i32 5
  store i32 42, ptr %31, align 8, !tbaa !16
  %32 = load ptr, ptr %30, align 8, !tbaa !20
  tail call void %32(ptr noundef nonnull %29) #28
  br label %33

33:                                               ; preds = %28, %21
  %34 = trunc i32 %26 to i8
  %35 = load ptr, ptr %8, align 8, !tbaa !25
  %36 = getelementptr inbounds i8, ptr %35, i64 %12
  store i8 %34, ptr %36, align 1, !tbaa !19
  %37 = load ptr, ptr %6, align 8, !tbaa !518
  %38 = tail call i32 @getc(ptr noundef %37) #30
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load ptr, ptr %7, align 8, !tbaa !513
  %42 = load ptr, ptr %41, align 8, !tbaa !15
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 5
  store i32 42, ptr %43, align 8, !tbaa !16
  %44 = load ptr, ptr %42, align 8, !tbaa !20
  tail call void %44(ptr noundef nonnull %41) #28
  br label %45

45:                                               ; preds = %40, %33
  %46 = trunc i32 %38 to i8
  %47 = load ptr, ptr %9, align 8, !tbaa !25
  %48 = getelementptr inbounds i8, ptr %47, i64 %12
  store i8 %46, ptr %48, align 1, !tbaa !19
  %49 = add nuw nsw i64 %12, 1
  %50 = icmp eq i64 %49, %10
  br i1 %50, label %51, label %11, !llvm.loop !539

51:                                               ; preds = %45, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @GetDataBlock(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !518
  %5 = tail call i32 @getc(ptr noundef %4) #30
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %7
  %10 = zext i32 %5 to i64
  %11 = load ptr, ptr %3, align 8, !tbaa !518
  %12 = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %10, ptr noundef %11) #30
  %13 = icmp eq i64 %12, %10
  br i1 %13, label %20, label %14

14:                                               ; preds = %9, %2
  %15 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !513
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 42, ptr %18, align 8, !tbaa !16
  %19 = load ptr, ptr %17, align 8, !tbaa !20
  tail call void %19(ptr noundef nonnull %16) #28
  br label %20

20:                                               ; preds = %14, %9, %7
  ret i32 %5
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @load_interlaced_image(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !34
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
  store i64 %16, ptr %10, align 8, !tbaa !540
  %19 = zext i32 %17 to i64
  store i64 %19, ptr %11, align 8, !tbaa !541
  %20 = load ptr, ptr %4, align 8, !tbaa !542
  tail call void %20(ptr noundef nonnull %0) #28
  br label %21

21:                                               ; preds = %18, %15
  %22 = load ptr, ptr %12, align 8, !tbaa !7
  %23 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !543
  %25 = load ptr, ptr %13, align 8, !tbaa !533
  %26 = trunc i64 %16 to i32
  %27 = tail call ptr %24(ptr noundef nonnull %0, ptr noundef %25, i32 noundef %26, i32 noundef 1, i32 noundef 1) #28
  %28 = load i32, ptr %14, align 8, !tbaa !112
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %21
  %31 = load ptr, ptr %27, align 8, !tbaa !25
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi ptr [ %37, %32 ], [ %31, %30 ]
  %34 = phi i32 [ %38, %32 ], [ %28, %30 ]
  %35 = tail call fastcc i32 @LZWReadByte(ptr noundef %1) #30
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %36, ptr %33, align 1, !tbaa !19
  %38 = add i32 %34, -1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %32, !llvm.loop !544

40:                                               ; preds = %32, %21
  %41 = add nuw nsw i64 %16, 1
  %42 = load i32, ptr %5, align 4, !tbaa !34
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %15, label %45, !llvm.loop !545

45:                                               ; preds = %40, %2
  %46 = phi i32 [ 0, %2 ], [ %42, %40 ]
  %47 = icmp eq ptr %4, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %4, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !546
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !546
  br label %52

52:                                               ; preds = %48, %45
  %53 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_interlaced_row, ptr %53, align 8, !tbaa !536
  %54 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 23
  store i32 0, ptr %54, align 8, !tbaa !547
  %55 = add i32 %46, 7
  %56 = lshr i32 %55, 3
  %57 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 24
  store i32 %56, ptr %57, align 4, !tbaa !548
  %58 = add i32 %46, 3
  %59 = lshr i32 %58, 3
  %60 = add nuw nsw i32 %56, %59
  %61 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 25
  store i32 %60, ptr %61, align 8, !tbaa !549
  %62 = add i32 %46, 1
  %63 = lshr i32 %62, 2
  %64 = add nuw nsw i32 %60, %63
  %65 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 26
  store i32 %64, ptr %65, align 4, !tbaa !550
  %66 = tail call i32 @get_interlaced_row(ptr noundef nonnull %0, ptr noundef %1) #30
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_pixel_rows(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !517
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !112
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !537
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = getelementptr inbounds ptr, ptr %4, i64 1
  %13 = getelementptr inbounds ptr, ptr %4, i64 2
  br label %14

14:                                               ; preds = %14, %8
  %15 = phi ptr [ %11, %8 ], [ %30, %14 ]
  %16 = phi i32 [ %6, %8 ], [ %31, %14 ]
  %17 = tail call fastcc i32 @LZWReadByte(ptr noundef %1) #30
  %18 = load ptr, ptr %4, align 8, !tbaa !25
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !19
  %22 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %21, ptr %15, align 1, !tbaa !19
  %23 = load ptr, ptr %12, align 8, !tbaa !25
  %24 = getelementptr inbounds i8, ptr %23, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !19
  %26 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 %25, ptr %22, align 1, !tbaa !19
  %27 = load ptr, ptr %13, align 8, !tbaa !25
  %28 = getelementptr inbounds i8, ptr %27, i64 %19
  %29 = load i8, ptr %28, align 1, !tbaa !19
  %30 = getelementptr inbounds i8, ptr %15, i64 3
  store i8 %29, ptr %26, align 1, !tbaa !19
  %31 = add i32 %16, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %14, !llvm.loop !551

33:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @LZWReadByte(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [256 x i8], align 16
  %3 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 4, !tbaa !527
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  store i32 0, ptr %3, align 4, !tbaa !527
  %7 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !525
  %9 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 9
  br label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !531
  %13 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !524
  %15 = icmp ugt ptr %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds i8, ptr %12, i64 -1
  store ptr %17, ptr %11, align 8, !tbaa !531
  %18 = load i8, ptr %17, align 1, !tbaa !19
  %19 = zext i8 %18 to i32
  br label %155

20:                                               ; preds = %10
  %21 = tail call fastcc i32 @GetCode(ptr noundef nonnull %0) #30
  %22 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !525
  %24 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 9
  %25 = icmp eq i32 %21, %23
  br i1 %25, label %26, label %57

26:                                               ; preds = %20, %6
  %27 = phi ptr [ %9, %6 ], [ %24, %20 ]
  %28 = phi i32 [ %8, %6 ], [ %23, %20 ]
  %29 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 8
  %30 = load i32, ptr %29, align 4, !tbaa !521
  %31 = add nsw i32 %30, 1
  %32 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 11
  store i32 %31, ptr %32, align 8, !tbaa !528
  %33 = shl i32 %28, 1
  %34 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 12
  store i32 %33, ptr %34, align 4, !tbaa !529
  %35 = add nsw i32 %28, 2
  %36 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 13
  store i32 %35, ptr %36, align 8, !tbaa !530
  %37 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !524
  %39 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 20
  store ptr %38, ptr %39, align 8, !tbaa !531
  br label %40

40:                                               ; preds = %40, %26
  %41 = tail call fastcc i32 @GetCode(ptr noundef nonnull %0) #30
  %42 = load i32, ptr %27, align 8, !tbaa !525
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %40, label %44, !llvm.loop !552

44:                                               ; preds = %40
  %.lcssa1 = phi i32 [ %41, %40 ]
  %.lcssa = phi i32 [ %42, %40 ]
  %45 = icmp sgt i32 %.lcssa1, %.lcssa
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !513
  %49 = load ptr, ptr %48, align 8, !tbaa !15
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 5
  store i32 1021, ptr %50, align 8, !tbaa !16
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !58
  tail call void %52(ptr noundef nonnull %48, i32 noundef -1) #28
  br label %53

53:                                               ; preds = %46, %44
  %54 = phi i32 [ 0, %46 ], [ %.lcssa1, %44 ]
  %55 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 15
  store i32 %54, ptr %55, align 8, !tbaa !553
  %56 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 16
  store i32 %54, ptr %56, align 4, !tbaa !554
  br label %155

57:                                               ; preds = %20
  %58 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 10
  %59 = load i32, ptr %58, align 4, !tbaa !526
  %60 = icmp eq i32 %21, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !555
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #29
  br label %66

66:                                               ; preds = %66, %65
  %67 = call fastcc i32 @GetDataBlock(ptr noundef %0, ptr noundef nonnull %2) #30
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %66, label %69, !llvm.loop !519

69:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #29
  store i32 1, ptr %62, align 8, !tbaa !555
  br label %70

70:                                               ; preds = %69, %61
  %71 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !513
  %73 = load ptr, ptr %72, align 8, !tbaa !15
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 1023, ptr %74, align 8, !tbaa !16
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !58
  tail call void %76(ptr noundef nonnull %72, i32 noundef -1) #28
  br label %155

77:                                               ; preds = %57
  %78 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 13
  %79 = load i32, ptr %78, align 8, !tbaa !530
  %80 = icmp slt i32 %21, %79
  br i1 %80, label %100, label %81

81:                                               ; preds = %77
  %82 = icmp sgt i32 %21, %79
  br i1 %82, label %83, label %90

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !513
  %86 = load ptr, ptr %85, align 8, !tbaa !15
  %87 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %86, i64 0, i32 5
  store i32 1021, ptr %87, align 8, !tbaa !16
  %88 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %86, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !58
  tail call void %89(ptr noundef nonnull %85, i32 noundef -1) #28
  br label %90

90:                                               ; preds = %83, %81
  %91 = phi i32 [ 0, %83 ], [ %21, %81 ]
  %92 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 16
  %93 = load i32, ptr %92, align 4, !tbaa !554
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 20
  %96 = load ptr, ptr %95, align 8, !tbaa !531
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %97, ptr %95, align 8, !tbaa !531
  store i8 %94, ptr %96, align 1, !tbaa !19
  %98 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 15
  %99 = load i32, ptr %98, align 8, !tbaa !553
  br label %100

100:                                              ; preds = %90, %77
  %101 = phi i32 [ %99, %90 ], [ %21, %77 ]
  %102 = phi i32 [ %91, %90 ], [ %21, %77 ]
  %103 = load i32, ptr %24, align 8, !tbaa !525
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %123, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 18
  %107 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 20
  %108 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 17
  br label %109

109:                                              ; preds = %109, %105
  %110 = phi i32 [ %101, %105 ], [ %120, %109 ]
  %111 = load ptr, ptr %106, align 8, !tbaa !523
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, ptr %111, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !19
  %115 = load ptr, ptr %107, align 8, !tbaa !531
  %116 = getelementptr inbounds i8, ptr %115, i64 1
  store ptr %116, ptr %107, align 8, !tbaa !531
  store i8 %114, ptr %115, align 1, !tbaa !19
  %117 = load ptr, ptr %108, align 8, !tbaa !522
  %118 = getelementptr inbounds i16, ptr %117, i64 %112
  %119 = load i16, ptr %118, align 2, !tbaa !65
  %120 = zext i16 %119 to i32
  %121 = load i32, ptr %24, align 8, !tbaa !525
  %122 = icmp sgt i32 %121, %120
  br i1 %122, label %123, label %109, !llvm.loop !556

123:                                              ; preds = %109, %100
  %124 = phi i32 [ %101, %100 ], [ %120, %109 ]
  %125 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 16
  store i32 %124, ptr %125, align 4, !tbaa !554
  %126 = load i32, ptr %78, align 8, !tbaa !530
  %127 = icmp slt i32 %126, 4096
  br i1 %127, label %128, label %152

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 15
  %130 = load i32, ptr %129, align 8, !tbaa !553
  %131 = trunc i32 %130 to i16
  %132 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 17
  %133 = load ptr, ptr %132, align 8, !tbaa !522
  %134 = sext i32 %126 to i64
  %135 = getelementptr inbounds i16, ptr %133, i64 %134
  store i16 %131, ptr %135, align 2, !tbaa !65
  %136 = trunc i32 %124 to i8
  %137 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 18
  %138 = load ptr, ptr %137, align 8, !tbaa !523
  %139 = getelementptr inbounds i8, ptr %138, i64 %134
  store i8 %136, ptr %139, align 1, !tbaa !19
  %140 = load i32, ptr %78, align 8, !tbaa !530
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %78, align 8, !tbaa !530
  %142 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 12
  %143 = load i32, ptr %142, align 4, !tbaa !529
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %152, label %145

145:                                              ; preds = %128
  %146 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 11
  %147 = load i32, ptr %146, align 8, !tbaa !528
  %148 = icmp slt i32 %147, 12
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = add nsw i32 %147, 1
  store i32 %150, ptr %146, align 8, !tbaa !528
  %151 = shl i32 %143, 1
  store i32 %151, ptr %142, align 4, !tbaa !529
  br label %152

152:                                              ; preds = %149, %145, %128, %123
  %153 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 15
  store i32 %102, ptr %153, align 8, !tbaa !553
  %154 = load i32, ptr %125, align 4, !tbaa !554
  br label %155

155:                                              ; preds = %152, %70, %53, %16
  %156 = phi i32 [ %54, %53 ], [ 0, %70 ], [ %154, %152 ], [ %19, %16 ]
  ret i32 %156
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @GetCode(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 6
  %3 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 11
  %4 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %2, align 4, !tbaa !557
  %6 = load i32, ptr %3, align 8, !tbaa !528
  %7 = add nsw i32 %6, %5
  %8 = load i32, ptr %4, align 8, !tbaa !558
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
  %17 = load i32, ptr %11, align 8, !tbaa !555
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !513
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 5
  store i32 1024, ptr %23, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  tail call void %25(ptr noundef nonnull %21, i32 noundef -1) #28
  %26 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 10
  %27 = load i32, ptr %26, align 4, !tbaa !526
  br label %87

28:                                               ; preds = %16
  %29 = load i32, ptr %13, align 4, !tbaa !559
  %30 = add nsw i32 %29, -2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !19
  store i8 %33, ptr %12, align 8, !tbaa !19
  %34 = add nsw i32 %29, -1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !19
  store i8 %37, ptr %14, align 1, !tbaa !19
  %38 = tail call fastcc i32 @GetDataBlock(ptr noundef nonnull %0, ptr noundef nonnull %15) #30
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %28
  store i32 1, ptr %11, align 8, !tbaa !555
  %41 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !513
  %43 = load ptr, ptr %42, align 8, !tbaa !15
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i64 0, i32 5
  store i32 1024, ptr %44, align 8, !tbaa !16
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  tail call void %46(ptr noundef nonnull %42, i32 noundef -1) #28
  %47 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 10
  %48 = load i32, ptr %47, align 4, !tbaa !526
  br label %87

49:                                               ; preds = %28
  %50 = load i32, ptr %2, align 4, !tbaa !557
  %51 = load i32, ptr %4, align 8, !tbaa !558
  %52 = add i32 %50, 16
  %53 = sub i32 %52, %51
  store i32 %53, ptr %2, align 4, !tbaa !557
  %54 = add nsw i32 %38, 2
  store i32 %54, ptr %13, align 4, !tbaa !559
  %55 = shl nsw i32 %54, 3
  store i32 %55, ptr %4, align 8, !tbaa !558
  %56 = load i32, ptr %3, align 8, !tbaa !528
  %57 = add nsw i32 %56, %53
  %58 = icmp sgt i32 %57, %55
  br i1 %58, label %16, label %59, !llvm.loop !560

59:                                               ; preds = %49, %1
  %60 = phi i32 [ %5, %1 ], [ %53, %49 ]
  %61 = phi i32 [ %6, %1 ], [ %56, %49 ]
  %62 = phi i32 [ %7, %1 ], [ %57, %49 ]
  %63 = ashr i32 %60, 3
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !19
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %63, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !19
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %68, 16
  %75 = shl nuw nsw i32 %73, 8
  %76 = or i32 %75, %74
  %77 = sext i32 %63 to i64
  %78 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !19
  %80 = zext i8 %79 to i32
  %81 = or i32 %76, %80
  %82 = and i32 %60, 7
  %83 = lshr i32 %81, %82
  %84 = shl nsw i32 -1, %61
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  store i32 %62, ptr %2, align 4, !tbaa !557
  br label %87

87:                                               ; preds = %59, %40, %19
  %88 = phi i32 [ %27, %19 ], [ %48, %40 ], [ %86, %59 ]
  ret i32 %88
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_interlaced_row(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !517
  %5 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 23
  %6 = load i32, ptr %5, align 8, !tbaa !547
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
  %13 = load i32, ptr %12, align 4, !tbaa !548
  %14 = add i32 %13, %11
  br label %25

15:                                               ; preds = %2, %2
  %16 = lshr i32 %6, 2
  %17 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 25
  %18 = load i32, ptr %17, align 8, !tbaa !549
  %19 = add i32 %18, %16
  br label %25

20:                                               ; preds = %2
  %21 = lshr i32 %6, 1
  %22 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 26
  %23 = load i32, ptr %22, align 4, !tbaa !550
  %24 = add i32 %23, %21
  br label %25

25:                                               ; preds = %20, %15, %10, %8
  %26 = phi i32 [ %24, %20 ], [ %19, %15 ], [ %14, %10 ], [ %9, %8 ]
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !543
  %31 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 22
  %32 = load ptr, ptr %31, align 8, !tbaa !533
  %33 = tail call ptr %30(ptr noundef %0, ptr noundef %32, i32 noundef %26, i32 noundef 1, i32 noundef 0) #28
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !112
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !537
  %40 = load ptr, ptr %39, align 8, !tbaa !25
  %41 = load ptr, ptr %33, align 8, !tbaa !25
  %42 = getelementptr inbounds ptr, ptr %4, i64 1
  %43 = getelementptr inbounds ptr, ptr %4, i64 2
  br label %44

44:                                               ; preds = %44, %37
  %45 = phi ptr [ %41, %37 ], [ %48, %44 ]
  %46 = phi i32 [ %35, %37 ], [ %63, %44 ]
  %47 = phi ptr [ %40, %37 ], [ %62, %44 ]
  %48 = getelementptr inbounds i8, ptr %45, i64 1
  %49 = load i8, ptr %45, align 1, !tbaa !19
  %50 = load ptr, ptr %4, align 8, !tbaa !25
  %51 = zext i8 %49 to i64
  %52 = getelementptr inbounds i8, ptr %50, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !19
  %54 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %53, ptr %47, align 1, !tbaa !19
  %55 = load ptr, ptr %42, align 8, !tbaa !25
  %56 = getelementptr inbounds i8, ptr %55, i64 %51
  %57 = load i8, ptr %56, align 1, !tbaa !19
  %58 = getelementptr inbounds i8, ptr %47, i64 2
  store i8 %57, ptr %54, align 1, !tbaa !19
  %59 = load ptr, ptr %43, align 8, !tbaa !25
  %60 = getelementptr inbounds i8, ptr %59, i64 %51
  %61 = load i8, ptr %60, align 1, !tbaa !19
  %62 = getelementptr inbounds i8, ptr %47, i64 3
  store i8 %61, ptr %58, align 1, !tbaa !19
  %63 = add i32 %46, -1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %44, !llvm.loop !561

65:                                               ; preds = %44, %25
  %66 = load i32, ptr %5, align 8, !tbaa !547
  %67 = add i32 %66, 1
  store i32 %67, ptr %5, align 8, !tbaa !547
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @jinit_read_targa(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 112) #28
  %6 = getelementptr inbounds %struct._tga_source_struct, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !562
  store ptr @start_input_tga, ptr %5, align 8, !tbaa !564
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %5, i64 0, i32 2
  store ptr @finish_input_tga, ptr %7, align 8, !tbaa !565
  ret ptr %5
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_input_tga(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [18 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #29
  %4 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !566
  %6 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 18, ptr noundef %5) #30
  %7 = icmp eq i64 %6, 18
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 42, ptr %10, align 8, !tbaa !16
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  tail call void %11(ptr noundef nonnull %0) #28
  br label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 16
  %14 = load i8, ptr %13, align 16, !tbaa !19
  %15 = icmp eq i8 %14, 15
  %16 = select i1 %15, i8 16, i8 %14
  store i8 %16, ptr %13, align 16
  %17 = load i8, ptr %3, align 16, !tbaa !19
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !19
  %21 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 2
  %22 = load i8, ptr %21, align 2, !tbaa !19
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 5
  %25 = load i8, ptr %24, align 1, !tbaa !19
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 6
  %28 = load i8, ptr %27, align 2, !tbaa !19
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or i32 %30, %26
  %32 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 12
  %33 = load i8, ptr %32, align 4, !tbaa !19
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 13
  %36 = load i8, ptr %35, align 1, !tbaa !19
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or i32 %38, %34
  %40 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 14
  %41 = load i8, ptr %40, align 2, !tbaa !19
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 15
  %44 = load i8, ptr %43, align 1, !tbaa !19
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 8
  %47 = or i32 %46, %42
  %48 = lshr i8 %16, 3
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 7
  store i32 %49, ptr %50, align 4, !tbaa !567
  %51 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 17
  %52 = load i8, ptr %51, align 1, !tbaa !19
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
  %66 = load ptr, ptr %0, align 8, !tbaa !15
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 5
  store i32 1033, ptr %67, align 8, !tbaa !16
  %68 = load ptr, ptr %66, align 8, !tbaa !20
  tail call void %68(ptr noundef nonnull %0) #28
  br label %69

69:                                               ; preds = %65, %60
  %70 = icmp ugt i8 %22, 8
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 9
  store i32 0, ptr %72, align 4, !tbaa !568
  %73 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 8
  store i32 0, ptr %73, align 8, !tbaa !569
  %74 = add nsw i32 %23, -8
  br label %75

75:                                               ; preds = %71, %69
  %76 = phi ptr [ @read_rle_pixel, %71 ], [ @read_non_rle_pixel, %69 ]
  %77 = phi i32 [ %74, %71 ], [ %23, %69 ]
  %78 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  store ptr %76, ptr %78, align 8
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %79, align 4, !tbaa !75
  switch i32 %77, label %139 [
    i32 1, label %80
    i32 2, label %100
    i32 3, label %121
  ]

80:                                               ; preds = %75
  %81 = load i32, ptr %50, align 4, !tbaa !567
  %82 = icmp eq i32 %81, 1
  %83 = icmp eq i8 %20, 1
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_8bit_row, ptr %86, align 8, !tbaa !570
  br label %91

87:                                               ; preds = %80
  %88 = load ptr, ptr %0, align 8, !tbaa !15
  %89 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %88, i64 0, i32 5
  store i32 1033, ptr %89, align 8, !tbaa !16
  %90 = load ptr, ptr %88, align 8, !tbaa !20
  tail call void %90(ptr noundef nonnull %0) #28
  br label %91

91:                                               ; preds = %87, %85
  %92 = load ptr, ptr %0, align 8, !tbaa !15
  %93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 5
  store i32 1037, ptr %93, align 8, !tbaa !16
  %94 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 6
  store i32 %39, ptr %94, align 4, !tbaa !19
  %95 = load ptr, ptr %0, align 8, !tbaa !15
  %96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i64 0, i32 6, i32 0, i64 1
  store i32 %47, ptr %96, align 4, !tbaa !19
  %97 = load ptr, ptr %0, align 8, !tbaa !15
  %98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !58
  tail call void %99(ptr noundef nonnull %0, i32 noundef 1) #28
  br label %143

100:                                              ; preds = %75
  %101 = load i32, ptr %50, align 4, !tbaa !567
  switch i32 %101, label %108 [
    i32 2, label %102
    i32 3, label %104
    i32 4, label %106
  ]

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_16bit_row, ptr %103, align 8, !tbaa !570
  br label %112

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_24bit_row, ptr %105, align 8, !tbaa !570
  br label %112

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_24bit_row, ptr %107, align 8, !tbaa !570
  br label %112

108:                                              ; preds = %100
  %109 = load ptr, ptr %0, align 8, !tbaa !15
  %110 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i64 0, i32 5
  store i32 1033, ptr %110, align 8, !tbaa !16
  %111 = load ptr, ptr %109, align 8, !tbaa !20
  tail call void %111(ptr noundef nonnull %0) #28
  br label %112

112:                                              ; preds = %108, %106, %104, %102
  %113 = load ptr, ptr %0, align 8, !tbaa !15
  %114 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 5
  store i32 1035, ptr %114, align 8, !tbaa !16
  %115 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 6
  store i32 %39, ptr %115, align 4, !tbaa !19
  %116 = load ptr, ptr %0, align 8, !tbaa !15
  %117 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %116, i64 0, i32 6, i32 0, i64 1
  store i32 %47, ptr %117, align 4, !tbaa !19
  %118 = load ptr, ptr %0, align 8, !tbaa !15
  %119 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !58
  tail call void %120(ptr noundef nonnull %0, i32 noundef 1) #28
  br label %143

121:                                              ; preds = %75
  store i32 1, ptr %79, align 4, !tbaa !75
  %122 = load i32, ptr %50, align 4, !tbaa !567
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_8bit_gray_row, ptr %125, align 8, !tbaa !570
  br label %130

126:                                              ; preds = %121
  %127 = load ptr, ptr %0, align 8, !tbaa !15
  %128 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %127, i64 0, i32 5
  store i32 1033, ptr %128, align 8, !tbaa !16
  %129 = load ptr, ptr %127, align 8, !tbaa !20
  tail call void %129(ptr noundef nonnull %0) #28
  br label %130

130:                                              ; preds = %126, %124
  %131 = load ptr, ptr %0, align 8, !tbaa !15
  %132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %131, i64 0, i32 5
  store i32 1036, ptr %132, align 8, !tbaa !16
  %133 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %131, i64 0, i32 6
  store i32 %39, ptr %133, align 4, !tbaa !19
  %134 = load ptr, ptr %0, align 8, !tbaa !15
  %135 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %134, i64 0, i32 6, i32 0, i64 1
  store i32 %47, ptr %135, align 4, !tbaa !19
  %136 = load ptr, ptr %0, align 8, !tbaa !15
  %137 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !58
  tail call void %138(ptr noundef nonnull %0, i32 noundef 1) #28
  br label %143

139:                                              ; preds = %75
  %140 = load ptr, ptr %0, align 8, !tbaa !15
  %141 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %140, i64 0, i32 5
  store i32 1033, ptr %141, align 8, !tbaa !16
  %142 = load ptr, ptr %140, align 8, !tbaa !20
  tail call void %142(ptr noundef nonnull %0) #28
  br label %143

143:                                              ; preds = %139, %130, %112, %91
  %144 = phi i32 [ 3, %139 ], [ 1, %130 ], [ 3, %112 ], [ 3, %91 ]
  br i1 %54, label %145, label %162

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !7
  %148 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %147, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !532
  %150 = mul nuw nsw i32 %144, %39
  %151 = tail call ptr %149(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef %150, i32 noundef %47, i32 noundef 1) #28
  %152 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  store ptr %151, ptr %152, align 8, !tbaa !571
  %153 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !21
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %154, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !534
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %157, align 4, !tbaa !534
  br label %160

160:                                              ; preds = %156, %145
  %161 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %161, align 8, !tbaa !572
  br label %174

162:                                              ; preds = %143
  %163 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  store ptr null, ptr %163, align 8, !tbaa !571
  %164 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !7
  %166 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %165, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !205
  %168 = mul nuw nsw i32 %144, %39
  %169 = tail call ptr %167(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %168, i32 noundef 1) #28
  %170 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %169, ptr %170, align 8, !tbaa !573
  %171 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %171, align 8, !tbaa !572
  %172 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  %173 = load ptr, ptr %172, align 8, !tbaa !570
  br label %174

174:                                              ; preds = %162, %160
  %175 = phi ptr [ %173, %162 ], [ @preload_image, %160 ]
  %176 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr %175, ptr %176, align 8, !tbaa !574
  %177 = icmp eq i8 %17, 0
  br i1 %177, label %193, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 1
  br label %180

180:                                              ; preds = %191, %178
  %181 = phi i32 [ %18, %178 ], [ %182, %191 ]
  %182 = add nsw i32 %181, -1
  %183 = load ptr, ptr %4, align 8, !tbaa !566
  %184 = tail call i32 @getc(ptr noundef %183) #30
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load ptr, ptr %179, align 8, !tbaa !562
  %188 = load ptr, ptr %187, align 8, !tbaa !15
  %189 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %188, i64 0, i32 5
  store i32 42, ptr %189, align 8, !tbaa !16
  %190 = load ptr, ptr %188, align 8, !tbaa !20
  tail call void %190(ptr noundef nonnull %187) #28
  br label %191

191:                                              ; preds = %186, %180
  %192 = icmp eq i32 %182, 0
  br i1 %192, label %193, label %180, !llvm.loop !575

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
  %202 = load ptr, ptr %0, align 8, !tbaa !15
  %203 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %202, i64 0, i32 5
  store i32 1032, ptr %203, align 8, !tbaa !16
  %204 = load ptr, ptr %202, align 8, !tbaa !20
  tail call void %204(ptr noundef nonnull %0) #28
  br label %205

205:                                              ; preds = %201, %195
  %206 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !7
  %208 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %207, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !205
  %210 = tail call ptr %209(ptr noundef %0, i32 noundef 1, i32 noundef %31, i32 noundef 3) #28
  %211 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 2
  store ptr %210, ptr %211, align 8, !tbaa !576
  %212 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 7
  %213 = load i8, ptr %212, align 1, !tbaa !19
  %214 = icmp eq i8 %213, 24
  br i1 %214, label %221, label %215

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !562
  %218 = load ptr, ptr %217, align 8, !tbaa !15
  %219 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %218, i64 0, i32 5
  store i32 1032, ptr %219, align 8, !tbaa !16
  %220 = load ptr, ptr %218, align 8, !tbaa !20
  tail call void %220(ptr noundef nonnull %217) #28
  br label %221

221:                                              ; preds = %215, %205
  %222 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 1
  %223 = zext i32 %31 to i64
  br label %224

224:                                              ; preds = %262, %221
  %225 = phi i64 [ 0, %221 ], [ %267, %262 ]
  %226 = load ptr, ptr %4, align 8, !tbaa !566
  %227 = tail call i32 @getc(ptr noundef %226) #30
  %228 = icmp eq i32 %227, -1
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load ptr, ptr %222, align 8, !tbaa !562
  %231 = load ptr, ptr %230, align 8, !tbaa !15
  %232 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %231, i64 0, i32 5
  store i32 42, ptr %232, align 8, !tbaa !16
  %233 = load ptr, ptr %231, align 8, !tbaa !20
  tail call void %233(ptr noundef nonnull %230) #28
  br label %234

234:                                              ; preds = %229, %224
  %235 = trunc i32 %227 to i8
  %236 = load ptr, ptr %211, align 8, !tbaa !576
  %237 = getelementptr inbounds ptr, ptr %236, i64 2
  %238 = load ptr, ptr %237, align 8, !tbaa !25
  %239 = getelementptr inbounds i8, ptr %238, i64 %225
  store i8 %235, ptr %239, align 1, !tbaa !19
  %240 = load ptr, ptr %4, align 8, !tbaa !566
  %241 = tail call i32 @getc(ptr noundef %240) #30
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %243, label %248

243:                                              ; preds = %234
  %244 = load ptr, ptr %222, align 8, !tbaa !562
  %245 = load ptr, ptr %244, align 8, !tbaa !15
  %246 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %245, i64 0, i32 5
  store i32 42, ptr %246, align 8, !tbaa !16
  %247 = load ptr, ptr %245, align 8, !tbaa !20
  tail call void %247(ptr noundef nonnull %244) #28
  br label %248

248:                                              ; preds = %243, %234
  %249 = trunc i32 %241 to i8
  %250 = load ptr, ptr %211, align 8, !tbaa !576
  %251 = getelementptr inbounds ptr, ptr %250, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !25
  %253 = getelementptr inbounds i8, ptr %252, i64 %225
  store i8 %249, ptr %253, align 1, !tbaa !19
  %254 = load ptr, ptr %4, align 8, !tbaa !566
  %255 = tail call i32 @getc(ptr noundef %254) #30
  %256 = icmp eq i32 %255, -1
  br i1 %256, label %257, label %262

257:                                              ; preds = %248
  %258 = load ptr, ptr %222, align 8, !tbaa !562
  %259 = load ptr, ptr %258, align 8, !tbaa !15
  %260 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %259, i64 0, i32 5
  store i32 42, ptr %260, align 8, !tbaa !16
  %261 = load ptr, ptr %259, align 8, !tbaa !20
  tail call void %261(ptr noundef nonnull %258) #28
  br label %262

262:                                              ; preds = %257, %248
  %263 = trunc i32 %255 to i8
  %264 = load ptr, ptr %211, align 8, !tbaa !576
  %265 = load ptr, ptr %264, align 8, !tbaa !25
  %266 = getelementptr inbounds i8, ptr %265, i64 %225
  store i8 %263, ptr %266, align 1, !tbaa !19
  %267 = add nuw nsw i64 %225, 1
  %268 = icmp eq i64 %267, %223
  br i1 %268, label %277, label %224, !llvm.loop !577

269:                                              ; preds = %193
  %270 = icmp eq i8 %20, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %269
  %272 = load ptr, ptr %0, align 8, !tbaa !15
  %273 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %272, i64 0, i32 5
  store i32 1033, ptr %273, align 8, !tbaa !16
  %274 = load ptr, ptr %272, align 8, !tbaa !20
  tail call void %274(ptr noundef nonnull %0) #28
  br label %275

275:                                              ; preds = %271, %269
  %276 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 2
  store ptr null, ptr %276, align 8, !tbaa !576
  br label %277

277:                                              ; preds = %275, %262
  %278 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 %144, ptr %278, align 8, !tbaa !83
  %279 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %279, align 8, !tbaa !70
  %280 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  store i32 %39, ptr %280, align 8, !tbaa !112
  %281 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  store i32 %47, ptr %281, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @finish_input_tga(ptr nocapture %0, ptr nocapture %1) #11 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @read_rle_pixel(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !566
  %4 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !568
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = add nsw i32 %5, -1
  store i32 %8, ptr %4, align 4, !tbaa !568
  br label %45

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !569
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 8, !tbaa !569
  %13 = icmp slt i32 %11, 1
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = tail call i32 @getc(ptr noundef %3) #30
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !562
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 42, ptr %21, align 8, !tbaa !16
  %22 = load ptr, ptr %20, align 8, !tbaa !20
  tail call void %22(ptr noundef nonnull %19) #28
  br label %26

23:                                               ; preds = %14
  %24 = and i32 %15, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %17
  %27 = and i32 %15, 127
  store i32 %27, ptr %4, align 4, !tbaa !568
  br label %30

28:                                               ; preds = %23
  %29 = and i32 %15, 127
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ 0, %26 ], [ %29, %28 ]
  store i32 %31, ptr %10, align 8, !tbaa !569
  br label %32

32:                                               ; preds = %30, %9
  %33 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !567
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %36, %32
  %37 = phi i64 [ %41, %36 ], [ 0, %32 ]
  %38 = tail call i32 @getc(ptr noundef %3) #30
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 6, i64 %37
  store i8 %39, ptr %40, align 1, !tbaa !19
  %41 = add nuw nsw i64 %37, 1
  %42 = load i32, ptr %33, align 4, !tbaa !567
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %36, label %45, !llvm.loop !578

45:                                               ; preds = %36, %32, %7
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @read_non_rle_pixel(ptr nocapture noundef %0) #17 {
  %2 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !566
  %4 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !567
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %7, %1
  %8 = phi i64 [ %12, %7 ], [ 0, %1 ]
  %9 = tail call i32 @getc(ptr noundef %3) #30
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 6, i64 %8
  store i8 %10, ptr %11, align 1, !tbaa !19
  %12 = add nuw nsw i64 %8, 1
  %13 = load i32, ptr %4, align 4, !tbaa !567
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %7, label %16, !llvm.loop !579

16:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_8bit_row(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !576
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !112
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !573
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  %13 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6
  %14 = getelementptr inbounds ptr, ptr %4, i64 1
  %15 = getelementptr inbounds ptr, ptr %4, i64 2
  br label %16

16:                                               ; preds = %16, %8
  %17 = phi ptr [ %11, %8 ], [ %33, %16 ]
  %18 = phi i32 [ %6, %8 ], [ %34, %16 ]
  %19 = load ptr, ptr %12, align 8, !tbaa !580
  tail call void %19(ptr noundef nonnull %1) #28
  %20 = load i8, ptr %13, align 8, !tbaa !19
  %21 = load ptr, ptr %4, align 8, !tbaa !25
  %22 = zext i8 %20 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !19
  %25 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %24, ptr %17, align 1, !tbaa !19
  %26 = load ptr, ptr %14, align 8, !tbaa !25
  %27 = getelementptr inbounds i8, ptr %26, i64 %22
  %28 = load i8, ptr %27, align 1, !tbaa !19
  %29 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %28, ptr %25, align 1, !tbaa !19
  %30 = load ptr, ptr %15, align 8, !tbaa !25
  %31 = getelementptr inbounds i8, ptr %30, i64 %22
  %32 = load i8, ptr %31, align 1, !tbaa !19
  %33 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 %32, ptr %29, align 1, !tbaa !19
  %34 = add i32 %18, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %16, !llvm.loop !581

36:                                               ; preds = %16, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_16bit_row(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !112
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !573
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6
  %12 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6, i64 1
  br label %13

13:                                               ; preds = %13, %6
  %14 = phi i32 [ %4, %6 ], [ %40, %13 ]
  %15 = phi ptr [ %9, %6 ], [ %39, %13 ]
  %16 = load ptr, ptr %10, align 8, !tbaa !580
  tail call void %16(ptr noundef nonnull %1) #28
  %17 = load i8, ptr %11, align 8, !tbaa !19
  %18 = zext i8 %17 to i32
  %19 = load i8, ptr %12, align 1, !tbaa !19
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %21, %18
  %23 = and i32 %18, 31
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !19
  %27 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !19
  %28 = lshr i32 %22, 5
  %29 = and i32 %28, 31
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !19
  %33 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %32, ptr %33, align 1, !tbaa !19
  %34 = lshr i32 %20, 2
  %35 = and i32 %34, 31
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !19
  store i8 %38, ptr %15, align 1, !tbaa !19
  %39 = getelementptr inbounds i8, ptr %15, i64 3
  %40 = add i32 %14, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %13, !llvm.loop !582

42:                                               ; preds = %13, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_24bit_row(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !112
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !573
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6
  %12 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6, i64 2
  %13 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6, i64 1
  br label %14

14:                                               ; preds = %14, %6
  %15 = phi i32 [ %4, %6 ], [ %24, %14 ]
  %16 = phi ptr [ %9, %6 ], [ %23, %14 ]
  %17 = load ptr, ptr %10, align 8, !tbaa !580
  tail call void %17(ptr noundef nonnull %1) #28
  %18 = load i8, ptr %12, align 2, !tbaa !19
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %18, ptr %16, align 1, !tbaa !19
  %20 = load i8, ptr %13, align 1, !tbaa !19
  %21 = getelementptr inbounds i8, ptr %16, i64 2
  store i8 %20, ptr %19, align 1, !tbaa !19
  %22 = load i8, ptr %11, align 8, !tbaa !19
  %23 = getelementptr inbounds i8, ptr %16, i64 3
  store i8 %22, ptr %21, align 1, !tbaa !19
  %24 = add i32 %15, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %14, !llvm.loop !583

26:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_8bit_gray_row(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !112
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !573
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i32 [ %4, %6 ], [ %18, %12 ]
  %14 = phi ptr [ %9, %6 ], [ %17, %12 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !580
  tail call void %15(ptr noundef nonnull %1) #28
  %16 = load i8, ptr %11, align 8, !tbaa !19
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %16, ptr %14, align 1, !tbaa !19
  %18 = add i32 %13, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12, !llvm.loop !584

20:                                               ; preds = %12, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @preload_image(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !34
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
  store i64 %17, ptr %10, align 8, !tbaa !540
  %20 = zext i32 %18 to i64
  store i64 %20, ptr %11, align 8, !tbaa !541
  %21 = load ptr, ptr %4, align 8, !tbaa !542
  tail call void %21(ptr noundef nonnull %0) #28
  br label %22

22:                                               ; preds = %19, %16
  %23 = load ptr, ptr %12, align 8, !tbaa !7
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !543
  %26 = load ptr, ptr %13, align 8, !tbaa !571
  %27 = trunc i64 %17 to i32
  %28 = tail call ptr %25(ptr noundef nonnull %0, ptr noundef %26, i32 noundef %27, i32 noundef 1, i32 noundef 1) #28
  store ptr %28, ptr %14, align 8, !tbaa !573
  %29 = load ptr, ptr %15, align 8, !tbaa !570
  %30 = tail call i32 %29(ptr noundef nonnull %0, ptr noundef %1) #28
  %31 = add nuw nsw i64 %17, 1
  %32 = load i32, ptr %5, align 4, !tbaa !34
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %16, label %35, !llvm.loop !585

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
  %42 = load i32, ptr %41, align 8, !tbaa !546
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 8, !tbaa !546
  br label %44

44:                                               ; preds = %40, %37
  %45 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_memory_row, ptr %45, align 8, !tbaa !574
  %46 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 4
  store i32 0, ptr %46, align 8, !tbaa !586
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !7
  %49 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %48, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !543
  %51 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !571
  %53 = tail call ptr %50(ptr noundef nonnull %0, ptr noundef %52, i32 noundef %38, i32 noundef 1, i32 noundef 0) #28
  %54 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %53, ptr %54, align 8, !tbaa !573
  %55 = load i32, ptr %46, align 8, !tbaa !586
  %56 = add i32 %55, 1
  store i32 %56, ptr %46, align 8, !tbaa !586
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_memory_row(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !586
  %7 = xor i32 %6, -1
  %8 = add i32 %4, %7
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !543
  %13 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !571
  %15 = tail call ptr %12(ptr noundef %0, ptr noundef %14, i32 noundef %8, i32 noundef 1, i32 noundef 0) #28
  %16 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !573
  %17 = load i32, ptr %5, align 8, !tbaa !586
  %18 = add i32 %17, 1
  store i32 %18, ptr %5, align 8, !tbaa !586
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @jinit_read_bmp(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 88) #28
  %6 = getelementptr inbounds %struct._bmp_source_struct, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !587
  store ptr @start_input_bmp, ptr %5, align 8, !tbaa !589
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %5, i64 0, i32 2
  store ptr @finish_input_bmp, ptr %7, align 8, !tbaa !590
  ret ptr %5
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_input_bmp(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [14 x i8], align 2
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #29
  %5 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !591
  %7 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 14, ptr noundef %6) #30
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 42, ptr %11, align 8, !tbaa !16
  %12 = load ptr, ptr %10, align 8, !tbaa !20
  tail call void %12(ptr noundef nonnull %0) #28
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i16, ptr %3, align 2
  %15 = icmp eq i16 %14, 19778
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 1007, ptr %18, align 8, !tbaa !16
  %19 = load ptr, ptr %17, align 8, !tbaa !20
  tail call void %19(ptr noundef %0) #28
  br label %20

20:                                               ; preds = %16, %13
  %21 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 10
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 12
  %25 = load i8, ptr %24, align 2, !tbaa !19
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 16
  %28 = or i64 %27, %23
  %29 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 13
  %30 = load i8, ptr %29, align 1, !tbaa !19
  %31 = zext i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 24
  %33 = or i64 %28, %32
  %34 = load ptr, ptr %5, align 8, !tbaa !591
  %35 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4, ptr noundef %34) #30
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %41, label %37

37:                                               ; preds = %20
  %38 = load ptr, ptr %0, align 8, !tbaa !15
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i64 0, i32 5
  store i32 42, ptr %39, align 8, !tbaa !16
  %40 = load ptr, ptr %38, align 8, !tbaa !20
  tail call void %40(ptr noundef nonnull %0) #28
  br label %41

41:                                               ; preds = %37, %20
  %42 = load i16, ptr %4, align 16
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 2
  %45 = load i8, ptr %44, align 2, !tbaa !19
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 16
  %48 = or i64 %47, %43
  %49 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 3
  %50 = load i8, ptr %49, align 1, !tbaa !19
  %51 = zext i8 %50 to i64
  %52 = shl nuw nsw i64 %51, 24
  %53 = or i64 %48, %52
  %54 = add nsw i64 %53, -65
  %55 = icmp ult i64 %54, -53
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load ptr, ptr %0, align 8, !tbaa !15
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 5
  store i32 1003, ptr %58, align 8, !tbaa !16
  %59 = load ptr, ptr %57, align 8, !tbaa !20
  tail call void %59(ptr noundef %0) #28
  br label %60

60:                                               ; preds = %56, %41
  %61 = getelementptr inbounds i8, ptr %4, i64 4
  %62 = add nsw i64 %53, -4
  %63 = load ptr, ptr %5, align 8, !tbaa !591
  %64 = call i64 @fread(ptr noundef nonnull %61, i64 noundef 1, i64 noundef %62, ptr noundef %63) #30
  %65 = icmp eq i64 %64, %62
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr %0, align 8, !tbaa !15
  %68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i64 0, i32 5
  store i32 42, ptr %68, align 8, !tbaa !16
  %69 = load ptr, ptr %67, align 8, !tbaa !20
  tail call void %69(ptr noundef nonnull %0) #28
  br label %70

70:                                               ; preds = %66, %60
  %71 = trunc i64 %53 to i32
  switch i32 %71, label %263 [
    i32 12, label %72
    i32 40, label %131
    i32 64, label %131
  ]

72:                                               ; preds = %70
  %73 = load i8, ptr %61, align 4, !tbaa !19
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 5
  %76 = load i8, ptr %75, align 1, !tbaa !19
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %78, %74
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 6
  %82 = load i8, ptr %81, align 2, !tbaa !19
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 7
  %85 = load i8, ptr %84, align 1, !tbaa !19
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = or i32 %87, %83
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 8
  %91 = load i16, ptr %90, align 8
  %92 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 10
  %93 = load i8, ptr %92, align 2, !tbaa !19
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 11
  %96 = load i8, ptr %95, align 1, !tbaa !19
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = or i32 %98, %94
  %100 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 6
  store i32 %99, ptr %100, align 8, !tbaa !592
  %101 = trunc i32 %99 to i16
  switch i16 %101, label %120 [
    i16 8, label %102
    i16 24, label %111
  ]

102:                                              ; preds = %72
  %103 = load ptr, ptr %0, align 8, !tbaa !15
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 5
  store i32 1011, ptr %104, align 8, !tbaa !16
  %105 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 6
  store i32 %79, ptr %105, align 4, !tbaa !19
  %106 = load ptr, ptr %0, align 8, !tbaa !15
  %107 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %106, i64 0, i32 6, i32 0, i64 1
  store i32 %88, ptr %107, align 4, !tbaa !19
  %108 = load ptr, ptr %0, align 8, !tbaa !15
  %109 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !58
  tail call void %110(ptr noundef nonnull %0, i32 noundef 1) #28
  br label %124

111:                                              ; preds = %72
  %112 = load ptr, ptr %0, align 8, !tbaa !15
  %113 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 5
  store i32 1010, ptr %113, align 8, !tbaa !16
  %114 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 6
  store i32 %79, ptr %114, align 4, !tbaa !19
  %115 = load ptr, ptr %0, align 8, !tbaa !15
  %116 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %115, i64 0, i32 6, i32 0, i64 1
  store i32 %88, ptr %116, align 4, !tbaa !19
  %117 = load ptr, ptr %0, align 8, !tbaa !15
  %118 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !58
  tail call void %119(ptr noundef nonnull %0, i32 noundef 1) #28
  br label %124

120:                                              ; preds = %72
  %121 = load ptr, ptr %0, align 8, !tbaa !15
  %122 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i64 0, i32 5
  store i32 1002, ptr %122, align 8, !tbaa !16
  %123 = load ptr, ptr %121, align 8, !tbaa !20
  tail call void %123(ptr noundef nonnull %0) #28
  br label %124

124:                                              ; preds = %120, %111, %102
  %125 = phi i32 [ 0, %120 ], [ 0, %111 ], [ 3, %102 ]
  %126 = icmp eq i16 %91, 1
  br i1 %126, label %269, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %0, align 8, !tbaa !15
  %129 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %128, i64 0, i32 5
  store i32 1004, ptr %129, align 8, !tbaa !16
  %130 = load ptr, ptr %128, align 8, !tbaa !20
  tail call void %130(ptr noundef nonnull %0) #28
  br label %269

131:                                              ; preds = %70, %70
  %132 = load i16, ptr %61, align 4
  %133 = zext i16 %132 to i64
  %134 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 6
  %135 = load i8, ptr %134, align 2, !tbaa !19
  %136 = zext i8 %135 to i64
  %137 = shl nuw nsw i64 %136, 16
  %138 = or i64 %137, %133
  %139 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 7
  %140 = load i8, ptr %139, align 1, !tbaa !19
  %141 = zext i8 %140 to i64
  %142 = shl nuw nsw i64 %141, 24
  %143 = or i64 %138, %142
  %144 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 8
  %145 = load i16, ptr %144, align 8
  %146 = zext i16 %145 to i64
  %147 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 10
  %148 = load i8, ptr %147, align 2, !tbaa !19
  %149 = zext i8 %148 to i64
  %150 = shl nuw nsw i64 %149, 16
  %151 = or i64 %150, %146
  %152 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 11
  %153 = load i8, ptr %152, align 1, !tbaa !19
  %154 = zext i8 %153 to i64
  %155 = shl nuw nsw i64 %154, 24
  %156 = or i64 %151, %155
  %157 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 12
  %158 = load i16, ptr %157, align 4
  %159 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 14
  %160 = load i8, ptr %159, align 2, !tbaa !19
  %161 = zext i8 %160 to i32
  %162 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 15
  %163 = load i8, ptr %162, align 1, !tbaa !19
  %164 = zext i8 %163 to i32
  %165 = shl nuw nsw i32 %164, 8
  %166 = or i32 %165, %161
  %167 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 6
  store i32 %166, ptr %167, align 8, !tbaa !592
  %168 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 16
  %169 = load i32, ptr %168, align 16
  %170 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 24
  %171 = load i16, ptr %170, align 8
  %172 = zext i16 %171 to i64
  %173 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 26
  %174 = load i8, ptr %173, align 2, !tbaa !19
  %175 = zext i8 %174 to i64
  %176 = shl nuw nsw i64 %175, 16
  %177 = or i64 %176, %172
  %178 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 27
  %179 = load i8, ptr %178, align 1, !tbaa !19
  %180 = zext i8 %179 to i64
  %181 = shl nuw nsw i64 %180, 24
  %182 = or i64 %177, %181
  %183 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 28
  %184 = load i16, ptr %183, align 4
  %185 = zext i16 %184 to i64
  %186 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 30
  %187 = load i8, ptr %186, align 2, !tbaa !19
  %188 = zext i8 %187 to i64
  %189 = shl nuw nsw i64 %188, 16
  %190 = or i64 %189, %185
  %191 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 31
  %192 = load i8, ptr %191, align 1, !tbaa !19
  %193 = zext i8 %192 to i64
  %194 = shl nuw nsw i64 %193, 24
  %195 = or i64 %190, %194
  %196 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 32
  %197 = load i16, ptr %196, align 16
  %198 = zext i16 %197 to i64
  %199 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 34
  %200 = load i8, ptr %199, align 2, !tbaa !19
  %201 = zext i8 %200 to i64
  %202 = shl nuw nsw i64 %201, 16
  %203 = or i64 %202, %198
  %204 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 35
  %205 = load i8, ptr %204, align 1, !tbaa !19
  %206 = zext i8 %205 to i64
  %207 = shl nuw nsw i64 %206, 24
  %208 = or i64 %203, %207
  %209 = trunc i32 %166 to i16
  switch i16 %209, label %232 [
    i16 8, label %210
    i16 24, label %221
  ]

210:                                              ; preds = %131
  %211 = load ptr, ptr %0, align 8, !tbaa !15
  %212 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %211, i64 0, i32 5
  store i32 1009, ptr %212, align 8, !tbaa !16
  %213 = trunc i64 %143 to i32
  %214 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %211, i64 0, i32 6
  store i32 %213, ptr %214, align 4, !tbaa !19
  %215 = trunc i64 %156 to i32
  %216 = load ptr, ptr %0, align 8, !tbaa !15
  %217 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %216, i64 0, i32 6, i32 0, i64 1
  store i32 %215, ptr %217, align 4, !tbaa !19
  %218 = load ptr, ptr %0, align 8, !tbaa !15
  %219 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %218, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !58
  tail call void %220(ptr noundef nonnull %0, i32 noundef 1) #28
  br label %236

221:                                              ; preds = %131
  %222 = load ptr, ptr %0, align 8, !tbaa !15
  %223 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %222, i64 0, i32 5
  store i32 1008, ptr %223, align 8, !tbaa !16
  %224 = trunc i64 %143 to i32
  %225 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %222, i64 0, i32 6
  store i32 %224, ptr %225, align 4, !tbaa !19
  %226 = trunc i64 %156 to i32
  %227 = load ptr, ptr %0, align 8, !tbaa !15
  %228 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %227, i64 0, i32 6, i32 0, i64 1
  store i32 %226, ptr %228, align 4, !tbaa !19
  %229 = load ptr, ptr %0, align 8, !tbaa !15
  %230 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !58
  tail call void %231(ptr noundef nonnull %0, i32 noundef 1) #28
  br label %236

232:                                              ; preds = %131
  %233 = load ptr, ptr %0, align 8, !tbaa !15
  %234 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %233, i64 0, i32 5
  store i32 1002, ptr %234, align 8, !tbaa !16
  %235 = load ptr, ptr %233, align 8, !tbaa !20
  tail call void %235(ptr noundef nonnull %0) #28
  br label %236

236:                                              ; preds = %232, %221, %210
  %237 = phi i32 [ 0, %232 ], [ 0, %221 ], [ 4, %210 ]
  %238 = icmp eq i16 %158, 1
  br i1 %238, label %243, label %239

239:                                              ; preds = %236
  %240 = load ptr, ptr %0, align 8, !tbaa !15
  %241 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %240, i64 0, i32 5
  store i32 1004, ptr %241, align 8, !tbaa !16
  %242 = load ptr, ptr %240, align 8, !tbaa !20
  tail call void %242(ptr noundef nonnull %0) #28
  br label %243

243:                                              ; preds = %239, %236
  %244 = icmp eq i32 %169, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %243
  %246 = load ptr, ptr %0, align 8, !tbaa !15
  %247 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %246, i64 0, i32 5
  store i32 1006, ptr %247, align 8, !tbaa !16
  %248 = load ptr, ptr %246, align 8, !tbaa !20
  tail call void %248(ptr noundef nonnull %0) #28
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
  store i16 %256, ptr %257, align 2, !tbaa !73
  %258 = trunc i64 %195 to i32
  %259 = udiv i32 %258, 100
  %260 = trunc i32 %259 to i16
  %261 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 34
  store i16 %260, ptr %261, align 8, !tbaa !74
  %262 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 32
  store i8 2, ptr %262, align 4, !tbaa !72
  br label %269

263:                                              ; preds = %70
  %264 = load ptr, ptr %0, align 8, !tbaa !15
  %265 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %264, i64 0, i32 5
  store i32 1003, ptr %265, align 8, !tbaa !16
  %266 = load ptr, ptr %264, align 8, !tbaa !20
  tail call void %266(ptr noundef %0) #28
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
  %282 = load ptr, ptr %0, align 8, !tbaa !15
  %283 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %282, i64 0, i32 5
  store i32 1001, ptr %283, align 8, !tbaa !16
  %284 = load ptr, ptr %282, align 8, !tbaa !20
  tail call void %284(ptr noundef nonnull %0) #28
  br label %285

285:                                              ; preds = %281, %279, %277
  %286 = phi i64 [ %271, %281 ], [ %271, %279 ], [ 256, %277 ]
  %287 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !7
  %289 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %288, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !205
  %291 = trunc i64 %286 to i32
  %292 = tail call ptr %290(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %291, i32 noundef 3) #28
  %293 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 2
  store ptr %292, ptr %293, align 8, !tbaa !593
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
  %304 = load ptr, ptr %5, align 8, !tbaa !591
  %305 = tail call i32 @getc(ptr noundef %304) #30
  %306 = icmp eq i32 %305, -1
  br i1 %306, label %307, label %312

307:                                              ; preds = %302
  %308 = load ptr, ptr %301, align 8, !tbaa !587
  %309 = load ptr, ptr %308, align 8, !tbaa !15
  %310 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %309, i64 0, i32 5
  store i32 42, ptr %310, align 8, !tbaa !16
  %311 = load ptr, ptr %309, align 8, !tbaa !20
  tail call void %311(ptr noundef nonnull %308) #28
  br label %312

312:                                              ; preds = %307, %302
  %313 = trunc i32 %305 to i8
  %314 = load ptr, ptr %293, align 8, !tbaa !593
  %315 = getelementptr inbounds ptr, ptr %314, i64 2
  %316 = load ptr, ptr %315, align 8, !tbaa !25
  %317 = getelementptr inbounds i8, ptr %316, i64 %303
  store i8 %313, ptr %317, align 1, !tbaa !19
  %318 = load ptr, ptr %5, align 8, !tbaa !591
  %319 = tail call i32 @getc(ptr noundef %318) #30
  %320 = icmp eq i32 %319, -1
  br i1 %320, label %321, label %326

321:                                              ; preds = %312
  %322 = load ptr, ptr %301, align 8, !tbaa !587
  %323 = load ptr, ptr %322, align 8, !tbaa !15
  %324 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %323, i64 0, i32 5
  store i32 42, ptr %324, align 8, !tbaa !16
  %325 = load ptr, ptr %323, align 8, !tbaa !20
  tail call void %325(ptr noundef nonnull %322) #28
  br label %326

326:                                              ; preds = %321, %312
  %327 = trunc i32 %319 to i8
  %328 = load ptr, ptr %293, align 8, !tbaa !593
  %329 = getelementptr inbounds ptr, ptr %328, i64 1
  %330 = load ptr, ptr %329, align 8, !tbaa !25
  %331 = getelementptr inbounds i8, ptr %330, i64 %303
  store i8 %327, ptr %331, align 1, !tbaa !19
  %332 = load ptr, ptr %5, align 8, !tbaa !591
  %333 = tail call i32 @getc(ptr noundef %332) #30
  %334 = icmp eq i32 %333, -1
  br i1 %334, label %335, label %340

335:                                              ; preds = %326
  %336 = load ptr, ptr %301, align 8, !tbaa !587
  %337 = load ptr, ptr %336, align 8, !tbaa !15
  %338 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %337, i64 0, i32 5
  store i32 42, ptr %338, align 8, !tbaa !16
  %339 = load ptr, ptr %337, align 8, !tbaa !20
  tail call void %339(ptr noundef nonnull %336) #28
  br label %340

340:                                              ; preds = %335, %326
  %341 = trunc i32 %333 to i8
  %342 = load ptr, ptr %293, align 8, !tbaa !593
  %343 = load ptr, ptr %342, align 8, !tbaa !25
  %344 = getelementptr inbounds i8, ptr %343, i64 %303
  store i8 %341, ptr %344, align 1, !tbaa !19
  %345 = add nuw nsw i64 %303, 1
  %346 = icmp eq i64 %345, %286
  br i1 %346, label %407, label %302, !llvm.loop !594

347:                                              ; preds = %398, %296
  %348 = phi i64 [ 0, %296 ], [ %399, %398 ]
  %349 = load ptr, ptr %5, align 8, !tbaa !591
  %350 = tail call i32 @getc(ptr noundef %349) #30
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %352, label %357

352:                                              ; preds = %347
  %353 = load ptr, ptr %297, align 8, !tbaa !587
  %354 = load ptr, ptr %353, align 8, !tbaa !15
  %355 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %354, i64 0, i32 5
  store i32 42, ptr %355, align 8, !tbaa !16
  %356 = load ptr, ptr %354, align 8, !tbaa !20
  tail call void %356(ptr noundef nonnull %353) #28
  br label %357

357:                                              ; preds = %352, %347
  %358 = trunc i32 %350 to i8
  %359 = load ptr, ptr %293, align 8, !tbaa !593
  %360 = getelementptr inbounds ptr, ptr %359, i64 2
  %361 = load ptr, ptr %360, align 8, !tbaa !25
  %362 = getelementptr inbounds i8, ptr %361, i64 %348
  store i8 %358, ptr %362, align 1, !tbaa !19
  %363 = load ptr, ptr %5, align 8, !tbaa !591
  %364 = tail call i32 @getc(ptr noundef %363) #30
  %365 = icmp eq i32 %364, -1
  br i1 %365, label %366, label %371

366:                                              ; preds = %357
  %367 = load ptr, ptr %297, align 8, !tbaa !587
  %368 = load ptr, ptr %367, align 8, !tbaa !15
  %369 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %368, i64 0, i32 5
  store i32 42, ptr %369, align 8, !tbaa !16
  %370 = load ptr, ptr %368, align 8, !tbaa !20
  tail call void %370(ptr noundef nonnull %367) #28
  br label %371

371:                                              ; preds = %366, %357
  %372 = trunc i32 %364 to i8
  %373 = load ptr, ptr %293, align 8, !tbaa !593
  %374 = getelementptr inbounds ptr, ptr %373, i64 1
  %375 = load ptr, ptr %374, align 8, !tbaa !25
  %376 = getelementptr inbounds i8, ptr %375, i64 %348
  store i8 %372, ptr %376, align 1, !tbaa !19
  %377 = load ptr, ptr %5, align 8, !tbaa !591
  %378 = tail call i32 @getc(ptr noundef %377) #30
  %379 = icmp eq i32 %378, -1
  br i1 %379, label %380, label %385

380:                                              ; preds = %371
  %381 = load ptr, ptr %297, align 8, !tbaa !587
  %382 = load ptr, ptr %381, align 8, !tbaa !15
  %383 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %382, i64 0, i32 5
  store i32 42, ptr %383, align 8, !tbaa !16
  %384 = load ptr, ptr %382, align 8, !tbaa !20
  tail call void %384(ptr noundef nonnull %381) #28
  br label %385

385:                                              ; preds = %380, %371
  %386 = trunc i32 %378 to i8
  %387 = load ptr, ptr %293, align 8, !tbaa !593
  %388 = load ptr, ptr %387, align 8, !tbaa !25
  %389 = getelementptr inbounds i8, ptr %388, i64 %348
  store i8 %386, ptr %389, align 1, !tbaa !19
  %390 = load ptr, ptr %5, align 8, !tbaa !591
  %391 = tail call i32 @getc(ptr noundef %390) #30
  %392 = icmp eq i32 %391, -1
  br i1 %392, label %393, label %398

393:                                              ; preds = %385
  %394 = load ptr, ptr %297, align 8, !tbaa !587
  %395 = load ptr, ptr %394, align 8, !tbaa !15
  %396 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %395, i64 0, i32 5
  store i32 42, ptr %396, align 8, !tbaa !16
  %397 = load ptr, ptr %395, align 8, !tbaa !20
  tail call void %397(ptr noundef nonnull %394) #28
  br label %398

398:                                              ; preds = %393, %385
  %399 = add nuw nsw i64 %348, 1
  %400 = icmp eq i64 %399, %286
  br i1 %400, label %407, label %347, !llvm.loop !595

401:                                              ; preds = %285
  %402 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !587
  %404 = load ptr, ptr %403, align 8, !tbaa !15
  %405 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %404, i64 0, i32 5
  store i32 1001, ptr %405, align 8, !tbaa !16
  %406 = load ptr, ptr %404, align 8, !tbaa !20
  tail call void %406(ptr noundef nonnull %403) #28
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
  %417 = load ptr, ptr %0, align 8, !tbaa !15
  %418 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %417, i64 0, i32 5
  store i32 1003, ptr %418, align 8, !tbaa !16
  %419 = load ptr, ptr %417, align 8, !tbaa !20
  tail call void %419(ptr noundef %0) #28
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
  %427 = load ptr, ptr %5, align 8, !tbaa !591
  %428 = tail call i32 @getc(ptr noundef %427) #30
  %429 = icmp eq i32 %428, -1
  br i1 %429, label %430, label %435

430:                                              ; preds = %424
  %431 = load ptr, ptr %423, align 8, !tbaa !587
  %432 = load ptr, ptr %431, align 8, !tbaa !15
  %433 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %432, i64 0, i32 5
  store i32 42, ptr %433, align 8, !tbaa !16
  %434 = load ptr, ptr %432, align 8, !tbaa !20
  tail call void %434(ptr noundef nonnull %431) #28
  br label %435

435:                                              ; preds = %430, %424
  %436 = icmp ugt i64 %425, 1
  br i1 %436, label %424, label %437, !llvm.loop !596

437:                                              ; preds = %435, %420, %416
  %438 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 6
  %439 = load i32, ptr %438, align 8, !tbaa !592
  %440 = icmp eq i32 %439, 24
  %441 = mul nuw nsw i64 %412, 3
  %442 = select i1 %440, i64 %441, i64 %412
  %443 = trunc i64 %442 to i32
  %444 = trunc i64 %442 to i32
  %445 = sub i32 0, %444
  %446 = and i32 %445, 3
  %447 = add i32 %446, %443
  %448 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 5
  store i32 %447, ptr %448, align 4, !tbaa !597
  %449 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !7
  %451 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %450, i64 0, i32 4
  %452 = load ptr, ptr %451, align 8, !tbaa !532
  %453 = trunc i64 %413 to i32
  %454 = tail call ptr %452(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef %447, i32 noundef %453, i32 noundef 1) #28
  %455 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 3
  store ptr %454, ptr %455, align 8, !tbaa !598
  %456 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @preload_image.248, ptr %456, align 8, !tbaa !599
  %457 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %458 = load ptr, ptr %457, align 8, !tbaa !21
  %459 = icmp eq ptr %458, null
  br i1 %459, label %464, label %460

460:                                              ; preds = %437
  %461 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %458, i64 0, i32 2
  %462 = load i32, ptr %461, align 4, !tbaa !534
  %463 = add nsw i32 %462, 1
  store i32 %463, ptr %461, align 4, !tbaa !534
  br label %464

464:                                              ; preds = %460, %437
  %465 = load ptr, ptr %449, align 8, !tbaa !7
  %466 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %465, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !205
  %468 = trunc i64 %412 to i32
  %469 = mul i32 %468, 3
  %470 = tail call ptr %467(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %469, i32 noundef 1) #28
  %471 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %470, ptr %471, align 8, !tbaa !600
  %472 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %472, align 8, !tbaa !601
  %473 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %473, align 4, !tbaa !75
  %474 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 3, ptr %474, align 8, !tbaa !83
  %475 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %475, align 8, !tbaa !70
  %476 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  store i32 %468, ptr %476, align 8, !tbaa !112
  %477 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  store i32 %453, ptr %477, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @finish_input_bmp(ptr nocapture %0, ptr nocapture %1) #11 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @preload_image.248(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !591
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !34
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
  store i64 %18, ptr %12, align 8, !tbaa !540
  %21 = zext i32 %19 to i64
  store i64 %21, ptr %13, align 8, !tbaa !541
  %22 = load ptr, ptr %6, align 8, !tbaa !542
  tail call void %22(ptr noundef nonnull %0) #28
  br label %23

23:                                               ; preds = %20, %17
  %24 = load ptr, ptr %14, align 8, !tbaa !7
  %25 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !543
  %27 = load ptr, ptr %15, align 8, !tbaa !598
  %28 = trunc i64 %18 to i32
  %29 = tail call ptr %26(ptr noundef nonnull %0, ptr noundef %27, i32 noundef %28, i32 noundef 1, i32 noundef 1) #28
  %30 = load i32, ptr %16, align 4, !tbaa !597
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr %29, align 8, !tbaa !25
  br label %34

34:                                               ; preds = %43, %32
  %35 = phi ptr [ %45, %43 ], [ %33, %32 ]
  %36 = phi i32 [ %46, %43 ], [ %30, %32 ]
  %37 = tail call i32 @getc(ptr noundef %4) #30
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8, !tbaa !15
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 5
  store i32 42, ptr %41, align 8, !tbaa !16
  %42 = load ptr, ptr %40, align 8, !tbaa !20
  tail call void %42(ptr noundef nonnull %0) #28
  br label %43

43:                                               ; preds = %39, %34
  %44 = trunc i32 %37 to i8
  %45 = getelementptr inbounds i8, ptr %35, i64 1
  store i8 %44, ptr %35, align 1, !tbaa !19
  %46 = add i32 %36, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %34, !llvm.loop !602

48:                                               ; preds = %43, %23
  %49 = add nuw nsw i64 %18, 1
  %50 = load i32, ptr %7, align 4, !tbaa !34
  %51 = zext i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %17, label %53, !llvm.loop !603

53:                                               ; preds = %48, %2
  %54 = phi i32 [ 0, %2 ], [ %50, %48 ]
  %55 = icmp eq ptr %6, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %6, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !546
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !546
  br label %60

60:                                               ; preds = %56, %53
  %61 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !592
  switch i32 %62, label %67 [
    i32 8, label %63
    i32 24, label %65
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_8bit_row.249, ptr %64, align 8, !tbaa !599
  br label %74

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_24bit_row.250, ptr %66, align 8, !tbaa !599
  br label %74

67:                                               ; preds = %60
  %68 = load ptr, ptr %0, align 8, !tbaa !15
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 5
  store i32 1002, ptr %69, align 8, !tbaa !16
  %70 = load ptr, ptr %68, align 8, !tbaa !20
  tail call void %70(ptr noundef nonnull %0) #28
  %71 = load i32, ptr %7, align 4, !tbaa !34
  %72 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !599
  br label %74

74:                                               ; preds = %67, %65, %63
  %75 = phi ptr [ %73, %67 ], [ @get_24bit_row.250, %65 ], [ @get_8bit_row.249, %63 ]
  %76 = phi i32 [ %71, %67 ], [ %54, %65 ], [ %54, %63 ]
  %77 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 4
  store i32 %76, ptr %77, align 8, !tbaa !604
  %78 = tail call i32 %75(ptr noundef nonnull %0, ptr noundef nonnull %1) #28
  ret i32 %78
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_8bit_row.249(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !593
  %5 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !604
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 8, !tbaa !604
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !543
  %12 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !598
  %14 = tail call ptr %11(ptr noundef %0, ptr noundef %13, i32 noundef %7, i32 noundef 1, i32 noundef 0) #28
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !112
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !600
  %21 = load ptr, ptr %20, align 8, !tbaa !25
  %22 = load ptr, ptr %14, align 8, !tbaa !25
  %23 = getelementptr inbounds ptr, ptr %4, i64 1
  %24 = getelementptr inbounds ptr, ptr %4, i64 2
  br label %25

25:                                               ; preds = %25, %18
  %26 = phi i32 [ %16, %18 ], [ %44, %25 ]
  %27 = phi ptr [ %21, %18 ], [ %43, %25 ]
  %28 = phi ptr [ %22, %18 ], [ %29, %25 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load i8, ptr %28, align 1, !tbaa !19
  %31 = load ptr, ptr %4, align 8, !tbaa !25
  %32 = zext i8 %30 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !19
  %35 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %34, ptr %27, align 1, !tbaa !19
  %36 = load ptr, ptr %23, align 8, !tbaa !25
  %37 = getelementptr inbounds i8, ptr %36, i64 %32
  %38 = load i8, ptr %37, align 1, !tbaa !19
  %39 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %38, ptr %35, align 1, !tbaa !19
  %40 = load ptr, ptr %24, align 8, !tbaa !25
  %41 = getelementptr inbounds i8, ptr %40, i64 %32
  %42 = load i8, ptr %41, align 1, !tbaa !19
  %43 = getelementptr inbounds i8, ptr %27, i64 3
  store i8 %42, ptr %39, align 1, !tbaa !19
  %44 = add i32 %26, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %25, !llvm.loop !605

46:                                               ; preds = %25, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_24bit_row.250(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !604
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !604
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !7
  %8 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !543
  %10 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !598
  %12 = tail call ptr %9(ptr noundef %0, ptr noundef %11, i32 noundef %5, i32 noundef 1, i32 noundef 0) #28
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !112
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !600
  %19 = load ptr, ptr %18, align 8, !tbaa !25
  %20 = load ptr, ptr %12, align 8, !tbaa !25
  br label %21

21:                                               ; preds = %21, %16
  %22 = phi i32 [ %34, %21 ], [ %14, %16 ]
  %23 = phi ptr [ %33, %21 ], [ %19, %16 ]
  %24 = phi ptr [ %31, %21 ], [ %20, %16 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %24, align 1, !tbaa !19
  %27 = getelementptr inbounds i8, ptr %23, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !19
  %28 = getelementptr inbounds i8, ptr %24, i64 2
  %29 = load i8, ptr %25, align 1, !tbaa !19
  %30 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 %29, ptr %30, align 1, !tbaa !19
  %31 = getelementptr inbounds i8, ptr %24, i64 3
  %32 = load i8, ptr %28, align 1, !tbaa !19
  store i8 %32, ptr %23, align 1, !tbaa !19
  %33 = getelementptr inbounds i8, ptr %23, i64 3
  %34 = add i32 %22, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %21, !llvm.loop !606

36:                                               ; preds = %21, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_quant_tables(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #29
  %8 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.253) #30
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load ptr, ptr @stderr, align 8, !tbaa !25
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.1.254, ptr noundef %1) #32
  br label %51

13:                                               ; preds = %40, %4
  %14 = phi i32 [ %41, %40 ], [ 0, %4 ]
  %15 = call fastcc i32 @read_text_integer(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %5) #30, !range !186
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %14, 4
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load ptr, ptr @stderr, align 8, !tbaa !25
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.2.255, ptr noundef %1) #32
  %22 = call i32 @fclose(ptr noundef nonnull %8) #30
  br label %51

23:                                               ; preds = %17
  %24 = load i64, ptr %6, align 8, !tbaa !273
  %25 = trunc i64 %24 to i32
  store i32 %25, ptr %7, align 16, !tbaa !61
  br label %26

26:                                               ; preds = %34, %23
  %27 = phi i64 [ 1, %23 ], [ %38, %34 ]
  %28 = call fastcc i32 @read_text_integer(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %5) #30, !range !186
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load ptr, ptr @stderr, align 8, !tbaa !25
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.3.256, ptr noundef %1) #32
  %33 = call i32 @fclose(ptr noundef nonnull %8) #30
  br label %51

34:                                               ; preds = %26
  %35 = load i64, ptr %6, align 8, !tbaa !273
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %27
  store i32 %36, ptr %37, align 4, !tbaa !61
  %38 = add nuw nsw i64 %27, 1
  %39 = icmp eq i64 %38, 64
  br i1 %39, label %40, label %26, !llvm.loop !607

40:                                               ; preds = %34
  call void @jpeg_add_quant_table(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3) #28
  %41 = add nuw nsw i32 %14, 1
  br label %13, !llvm.loop !608

42:                                               ; preds = %13
  %43 = load i32, ptr %5, align 4, !tbaa !61
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @stderr, align 8, !tbaa !25
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.4.257, ptr noundef %1) #32
  %48 = call i32 @fclose(ptr noundef nonnull %8) #30
  br label %51

49:                                               ; preds = %42
  %50 = call i32 @fclose(ptr noundef nonnull %8) #30
  br label %51

51:                                               ; preds = %49, %45, %30, %19, %10
  %52 = phi i32 [ 0, %10 ], [ 0, %19 ], [ 0, %30 ], [ 0, %45 ], [ 1, %49 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #29
  ret i32 %52
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @read_text_integer(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #17 {
  br label %4

4:                                                ; preds = %7, %3
  %5 = tail call fastcc i32 @text_getc(ptr noundef %0) #30
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %39, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @__ctype_b_loc() #35
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds i16, ptr %9, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !65
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %4, !llvm.loop !609

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
  %24 = tail call fastcc i32 @text_getc(ptr noundef %0) #30
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %.lcssa5, align 8, !tbaa !25
  %28 = sext i32 %24 to i64
  %29 = getelementptr inbounds i16, ptr %27, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !65
  %31 = and i16 %30, 2048
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = mul nsw i64 %23, 10
  %35 = add nsw i32 %24, -48
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  br label %22, !llvm.loop !610

38:                                               ; preds = %26, %22
  %.lcssa1 = phi i64 [ %23, %26 ], [ %23, %22 ]
  %.lcssa = phi i32 [ %24, %26 ], [ %24, %22 ]
  store i64 %.lcssa1, ptr %1, align 8, !tbaa !273
  br label %39

39:                                               ; preds = %38, %16, %4
  %40 = phi i32 [ %.lcssa, %38 ], [ %.lcssa3, %16 ], [ -1, %4 ]
  %41 = phi i32 [ 1, %38 ], [ 0, %16 ], [ 0, %4 ]
  store i32 %40, ptr %2, align 4, !tbaa !61
  ret i32 %41
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @text_getc(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = tail call i32 @getc(ptr noundef %0) #30
  %3 = icmp eq i32 %2, 35
  br i1 %3, label %4, label %6

4:                                                ; preds = %4, %1
  %5 = tail call i32 @getc(ptr noundef %0) #30
  switch i32 %5, label %4 [
    i32 -1, label %6
    i32 10, label %6
  ]

6:                                                ; preds = %4, %4, %1
  %7 = phi i32 [ %2, %1 ], [ %5, %4 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #24

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_scan_script(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [100 x %struct.jpeg_scan_info], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 3600, ptr nonnull %5) #29
  %6 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.253) #30
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !tbaa !25
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5.260, ptr noundef %1) #32
  br label %117

11:                                               ; preds = %94, %2
  %12 = phi i32 [ %96, %94 ], [ 0, %2 ]
  %13 = phi ptr [ %95, %94 ], [ %5, %2 ]
  %14 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3) #30, !range !186
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %97, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %12, 100
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load ptr, ptr @stderr, align 8, !tbaa !25
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.6.261, ptr noundef %1) #32
  %21 = tail call i32 @fclose(ptr noundef nonnull %6) #30
  br label %117

22:                                               ; preds = %16
  %23 = load i64, ptr %4, align 8, !tbaa !273
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.jpeg_scan_info, ptr %13, i64 0, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !61
  %26 = load i32, ptr %3, align 4
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %47

28:                                               ; preds = %38, %22
  %29 = phi i64 [ %42, %38 ], [ 1, %22 ]
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load ptr, ptr @stderr, align 8, !tbaa !25
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.7.262, ptr noundef %1) #32
  %34 = tail call i32 @fclose(ptr noundef nonnull %6) #30
  br label %117

35:                                               ; preds = %28
  %36 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3) #30, !range !186
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %90, label %38

38:                                               ; preds = %35
  %39 = load i64, ptr %4, align 8, !tbaa !273
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.jpeg_scan_info, ptr %13, i64 0, i32 1, i64 %29
  store i32 %40, ptr %41, align 4, !tbaa !61
  %42 = add nuw nsw i64 %29, 1
  %43 = load i32, ptr %3, align 4
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %28, label %45, !llvm.loop !611

45:                                               ; preds = %38
  %.lcssa1 = phi i64 [ %42, %38 ]
  %.lcssa = phi i32 [ %43, %38 ]
  %46 = trunc i64 %.lcssa1 to i32
  br label %47

47:                                               ; preds = %45, %22
  %48 = phi i32 [ 1, %22 ], [ %46, %45 ]
  %49 = phi i32 [ %26, %22 ], [ %.lcssa, %45 ]
  store i32 %48, ptr %13, align 4, !tbaa !86
  %50 = icmp eq i32 %49, 58
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3) #30, !range !186
  %53 = icmp eq i32 %52, 0
  %54 = load i32, ptr %3, align 4
  %55 = icmp ne i32 %54, 32
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %90, label %57

57:                                               ; preds = %51
  %58 = load i64, ptr %4, align 8, !tbaa !273
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.jpeg_scan_info, ptr %13, i64 0, i32 2
  store i32 %59, ptr %60, align 4, !tbaa !91
  %61 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3) #30, !range !186
  %62 = icmp eq i32 %61, 0
  %63 = load i32, ptr %3, align 4
  %64 = icmp ne i32 %63, 32
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %90, label %66

66:                                               ; preds = %57
  %67 = load i64, ptr %4, align 8, !tbaa !273
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.jpeg_scan_info, ptr %13, i64 0, i32 3
  store i32 %68, ptr %69, align 4, !tbaa !90
  %70 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3) #30, !range !186
  %71 = icmp eq i32 %70, 0
  %72 = load i32, ptr %3, align 4
  %73 = icmp ne i32 %72, 32
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %90, label %75

75:                                               ; preds = %66
  %76 = load i64, ptr %4, align 8, !tbaa !273
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds %struct.jpeg_scan_info, ptr %13, i64 0, i32 4
  store i32 %77, ptr %78, align 4, !tbaa !92
  %79 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3) #30, !range !186
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %75
  %82 = load i64, ptr %4, align 8, !tbaa !273
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.jpeg_scan_info, ptr %13, i64 0, i32 5
  store i32 %83, ptr %84, align 4, !tbaa !93
  %85 = load i32, ptr %3, align 4
  br label %88

86:                                               ; preds = %47
  %87 = getelementptr inbounds %struct.jpeg_scan_info, ptr %13, i64 0, i32 2
  store <4 x i32> <i32 0, i32 63, i32 0, i32 0>, ptr %87, align 4, !tbaa !61
  br label %88

88:                                               ; preds = %86, %81
  %89 = phi i32 [ %49, %86 ], [ %85, %81 ]
  switch i32 %89, label %90 [
    i32 -1, label %94
    i32 59, label %94
  ]

90:                                               ; preds = %88, %75, %66, %57, %51, %35
  %91 = load ptr, ptr @stderr, align 8, !tbaa !25
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.8.263, ptr noundef %1) #32
  %93 = tail call i32 @fclose(ptr noundef nonnull %6) #30
  br label %117

94:                                               ; preds = %88, %88
  %95 = getelementptr inbounds %struct.jpeg_scan_info, ptr %13, i64 1
  %96 = add nuw nsw i32 %12, 1
  br label %11, !llvm.loop !612

97:                                               ; preds = %11
  %.lcssa2 = phi i32 [ %12, %11 ]
  %98 = load i32, ptr %3, align 4, !tbaa !61
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr @stderr, align 8, !tbaa !25
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.4.257, ptr noundef %1) #32
  %103 = tail call i32 @fclose(ptr noundef nonnull %6) #30
  br label %117

104:                                              ; preds = %97
  %105 = icmp eq i32 %.lcssa2, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !7
  %109 = load ptr, ptr %108, align 8, !tbaa !68
  %110 = zext i32 %.lcssa2 to i64
  %111 = mul nuw nsw i64 %110, 36
  %112 = tail call ptr %109(ptr noundef %0, i32 noundef 1, i64 noundef %111) #28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %112, ptr nonnull align 16 %5, i64 %111, i1 false)
  %113 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  store ptr %112, ptr %113, align 8, !tbaa !85
  %114 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  store i32 %.lcssa2, ptr %114, align 8, !tbaa !71
  br label %115

115:                                              ; preds = %106, %104
  %116 = tail call i32 @fclose(ptr noundef nonnull %6) #30
  br label %117

117:                                              ; preds = %115, %100, %90, %31, %18, %8
  %118 = phi i32 [ 0, %8 ], [ 0, %18 ], [ 0, %31 ], [ 0, %90 ], [ 0, %100 ], [ 1, %115 ]
  call void @llvm.lifetime.end.p0(i64 3600, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #29
  ret i32 %118
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @read_scan_integer(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) unnamed_addr #17 {
  %4 = tail call fastcc i32 @read_text_integer(ptr noundef %0, ptr noundef %1, ptr noundef %2) #30, !range !186
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 4, !tbaa !61
  %8 = icmp eq i32 %7, -1
  %9 = tail call ptr @__ctype_b_loc() #35
  br i1 %8, label %21, label %10

10:                                               ; preds = %18, %6
  %11 = phi i32 [ %19, %18 ], [ %7, %6 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !25
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !65
  %16 = and i16 %15, 8192
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = tail call fastcc i32 @text_getc(ptr noundef %0) #30
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %10, !llvm.loop !613

21:                                               ; preds = %18, %10, %6
  %22 = phi i32 [ -1, %6 ], [ -1, %18 ], [ %11, %10 ]
  %23 = phi i1 [ false, %6 ], [ %17, %18 ], [ %17, %10 ]
  %24 = load ptr, ptr %9, align 8, !tbaa !25
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds i16, ptr %24, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !65
  %28 = and i16 %27, 2048
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = tail call i32 @ungetc(i32 noundef %22, ptr noundef %0) #30
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
  store i32 %39, ptr %2, align 4, !tbaa !61
  br label %40

40:                                               ; preds = %38, %30, %3
  %41 = phi i32 [ 1, %38 ], [ 0, %3 ], [ 0, %30 ]
  ret i32 %41
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @set_quant_slots(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #29
  store i32 0, ptr %3, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #29
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  br label %6

6:                                                ; preds = %37, %2
  %7 = phi i64 [ 0, %2 ], [ %39, %37 ]
  %8 = phi ptr [ %1, %2 ], [ %38, %37 ]
  %9 = load i8, ptr %8, align 1, !tbaa !19
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %6
  store i8 44, ptr %4, align 1, !tbaa !19
  %12 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.9.266, ptr noundef nonnull %3, ptr noundef nonnull %4) #28
  %13 = icmp sgt i32 %12, 0
  %14 = load i8, ptr %4, align 1
  %15 = icmp eq i8 %14, 44
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load i32, ptr %3, align 4
  %19 = icmp ugt i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !25
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.10.267, i32 noundef 3) #32
  br label %41

23:                                               ; preds = %17
  %24 = load ptr, ptr %5, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %24, i64 %7, i32 4
  store i32 %18, ptr %25, align 8, !tbaa !185
  br label %26

26:                                               ; preds = %30, %23
  %27 = phi ptr [ %8, %23 ], [ %31, %30 ]
  %28 = load i8, ptr %27, align 1, !tbaa !19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  %32 = icmp eq i8 %28, 44
  br i1 %32, label %37, label %26, !llvm.loop !614

33:                                               ; preds = %6
  %34 = load i32, ptr %3, align 4, !tbaa !61
  %35 = load ptr, ptr %5, align 8, !tbaa !67
  %36 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %35, i64 %7, i32 4
  store i32 %34, ptr %36, align 8, !tbaa !185
  br label %37

37:                                               ; preds = %33, %30, %26
  %38 = phi ptr [ %8, %33 ], [ %27, %26 ], [ %31, %30 ]
  %39 = add nuw nsw i64 %7, 1
  %40 = icmp eq i64 %39, 10
  br i1 %40, label %41, label %6, !llvm.loop !615

41:                                               ; preds = %37, %20, %11
  %42 = phi i32 [ 0, %20 ], [ 1, %37 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #29
  ret i32 %42
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @set_sample_factors(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #29
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  br label %8

8:                                                ; preds = %51, %2
  %9 = phi i64 [ 0, %2 ], [ %53, %51 ]
  %10 = phi ptr [ %1, %2 ], [ %52, %51 ]
  %11 = load i8, ptr %10, align 1, !tbaa !19
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %8
  store i8 44, ptr %6, align 1, !tbaa !19
  %14 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %10, ptr noundef nonnull @.str.11.270, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #28
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %55, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr %5, align 1
  %18 = and i8 %17, -33
  %19 = icmp ne i8 %18, 88
  %20 = load i8, ptr %6, align 1
  %21 = icmp ne i8 %20, 44
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %55, label %23

23:                                               ; preds = %16
  %24 = load i32, ptr %3, align 4
  %25 = add i32 %24, -5
  %26 = icmp ult i32 %25, -4
  %27 = load i32, ptr %4, align 4
  %28 = icmp slt i32 %27, 1
  %29 = select i1 %26, i1 true, i1 %28
  %30 = icmp sgt i32 %27, 4
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load ptr, ptr @stderr, align 8, !tbaa !25
  %34 = call i64 @fwrite(ptr nonnull @.str.12.271, i64 35, i64 1, ptr %33) #34
  br label %55

35:                                               ; preds = %23
  %36 = load ptr, ptr %7, align 8, !tbaa !67
  %37 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %36, i64 %9, i32 2
  store i32 %24, ptr %37, align 8, !tbaa !115
  %38 = load i32, ptr %4, align 4, !tbaa !61
  %39 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %36, i64 %9, i32 3
  store i32 %38, ptr %39, align 4, !tbaa !116
  br label %40

40:                                               ; preds = %44, %35
  %41 = phi ptr [ %10, %35 ], [ %45, %44 ]
  %42 = load i8, ptr %41, align 1, !tbaa !19
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %41, i64 1
  %46 = icmp eq i8 %42, 44
  br i1 %46, label %51, label %40, !llvm.loop !616

47:                                               ; preds = %8
  %48 = load ptr, ptr %7, align 8, !tbaa !67
  %49 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %48, i64 %9, i32 2
  store i32 1, ptr %49, align 8, !tbaa !115
  %50 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %48, i64 %9, i32 3
  store i32 1, ptr %50, align 4, !tbaa !116
  br label %51

51:                                               ; preds = %47, %44, %40
  %52 = phi ptr [ %10, %47 ], [ %41, %40 ], [ %45, %44 ]
  %53 = add nuw nsw i64 %9, 1
  %54 = icmp eq i64 %53, 10
  br i1 %54, label %55, label %8, !llvm.loop !617

55:                                               ; preds = %51, %32, %16, %13
  %56 = phi i32 [ 0, %32 ], [ 1, %51 ], [ 0, %16 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #29
  ret i32 %56
}

; Function Attrs: nofree nounwind optsize memory(read) uwtable
define internal i32 @keymatch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #25 {
  %4 = load i8, ptr %0, align 1, !tbaa !19
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
  %14 = load i8, ptr %10, align 1, !tbaa !19
  %15 = sext i8 %14 to i32
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %6
  %18 = tail call ptr @__ctype_b_loc() #35
  %19 = load ptr, ptr %18, align 8, !tbaa !25
  %20 = sext i8 %7 to i64
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !65
  %23 = and i16 %22, 256
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = tail call i32 @tolower(i32 noundef %12) #36
  br label %27

27:                                               ; preds = %25, %17
  %28 = phi i32 [ %12, %17 ], [ %26, %25 ]
  %29 = icmp eq i32 %28, %15
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = add nuw nsw i32 %9, 1
  %32 = load i8, ptr %11, align 1, !tbaa !19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %6, !llvm.loop !618

34:                                               ; preds = %30, %3
  %35 = phi i32 [ 0, %3 ], [ %31, %30 ]
  %36 = icmp sge i32 %35, %2
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %34, %27, %6
  %39 = phi i32 [ %37, %34 ], [ 0, %6 ], [ 0, %27 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal ptr @read_stdin() #27 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !25
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal ptr @write_stdout() #27 {
  %1 = load ptr, ptr @stdout, align 8, !tbaa !25
  ret ptr %1
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind optsize memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind optsize }
attributes #29 = { nounwind }
attributes #30 = { optsize }
attributes #31 = { noreturn nounwind optsize }
attributes #32 = { cold optsize }
attributes #33 = { nounwind optsize allocsize(0) }
attributes #34 = { cold }
attributes #35 = { nounwind optsize willreturn memory(none) }
attributes #36 = { nounwind optsize willreturn memory(read) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !9, i64 8}
!8 = !{!"jpeg_compress_struct", !9, i64 0, !9, i64 8, !9, i64 16, !12, i64 24, !12, i64 28, !9, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !10, i64 52, !13, i64 56, !12, i64 64, !12, i64 68, !10, i64 72, !9, i64 80, !10, i64 88, !10, i64 120, !10, i64 152, !10, i64 184, !10, i64 200, !10, i64 216, !12, i64 232, !9, i64 240, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !10, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !10, i64 284, !14, i64 286, !14, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !12, i64 316, !10, i64 320, !12, i64 352, !12, i64 356, !12, i64 360, !10, i64 364, !12, i64 404, !12, i64 408, !12, i64 412, !12, i64 416, !9, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !9, i64 480, !9, i64 488}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!"double", !10, i64 0}
!14 = !{!"short", !10, i64 0}
!15 = !{!8, !9, i64 0}
!16 = !{!17, !12, i64 40}
!17 = !{!"jpeg_error_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !12, i64 40, !10, i64 44, !12, i64 124, !18, i64 128, !9, i64 136, !12, i64 144, !9, i64 152, !12, i64 160, !12, i64 164}
!18 = !{!"long", !10, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{!17, !9, i64 0}
!21 = !{!8, !9, i64 16}
!22 = !{!8, !9, i64 32}
!23 = !{!8, !13, i64 56}
!24 = !{!8, !12, i64 28}
!25 = !{!9, !9, i64 0}
!26 = !{!27, !12, i64 128}
!27 = !{!"", !10, i64 0, !12, i64 128}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!31, !12, i64 276}
!31 = !{!"", !10, i64 0, !10, i64 17, !12, i64 276}
!32 = distinct !{!32, !29}
!33 = !{!8, !12, i64 296}
!34 = !{!8, !12, i64 44}
!35 = !{!8, !9, i64 424}
!36 = !{!37, !12, i64 28}
!37 = !{!"jpeg_comp_master", !9, i64 0, !9, i64 8, !9, i64 16, !12, i64 24, !12, i64 28}
!38 = !{!37, !9, i64 0}
!39 = !{!8, !12, i64 312}
!40 = !{!41, !18, i64 8}
!41 = !{!"jpeg_progress_mgr", !9, i64 0, !18, i64 8, !18, i64 16, !12, i64 24, !12, i64 28}
!42 = !{!41, !18, i64 16}
!43 = !{!41, !9, i64 0}
!44 = !{!8, !9, i64 448}
!45 = !{!46, !9, i64 8}
!46 = !{!"jpeg_c_coef_controller", !9, i64 0, !9, i64 8}
!47 = distinct !{!47, !29}
!48 = !{!37, !9, i64 16}
!49 = distinct !{!49, !29}
!50 = !{!8, !9, i64 456}
!51 = !{!52, !9, i64 32}
!52 = !{!"jpeg_marker_writer", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!53 = !{!54, !9, i64 32}
!54 = !{!"jpeg_destination_mgr", !9, i64 0, !18, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!55 = !{!17, !9, i64 32}
!56 = !{!54, !9, i64 16}
!57 = !{!8, !12, i64 248}
!58 = !{!17, !9, i64 8}
!59 = !{!37, !12, i64 24}
!60 = !{!37, !9, i64 8}
!61 = !{!12, !12, i64 0}
!62 = !{!8, !9, i64 432}
!63 = !{!64, !9, i64 8}
!64 = !{!"jpeg_c_main_controller", !9, i64 0, !9, i64 8}
!65 = !{!14, !14, i64 0}
!66 = distinct !{!66, !29}
!67 = !{!8, !9, i64 80}
!68 = !{!69, !9, i64 0}
!69 = !{!"jpeg_memory_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !18, i64 88}
!70 = !{!8, !12, i64 64}
!71 = !{!8, !12, i64 232}
!72 = !{!8, !10, i64 284}
!73 = !{!8, !14, i64 286}
!74 = !{!8, !14, i64 288}
!75 = !{!8, !10, i64 52}
!76 = !{!8, !10, i64 72}
!77 = !{!8, !12, i64 280}
!78 = !{!8, !12, i64 292}
!79 = !{!8, !12, i64 68}
!80 = !{!81, !12, i64 0}
!81 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !9, i64 80, !9, i64 88}
!82 = !{!81, !12, i64 24}
!83 = !{!8, !12, i64 48}
!84 = distinct !{!84, !29}
!85 = !{!8, !9, i64 240}
!86 = !{!87, !12, i64 0}
!87 = !{!"", !12, i64 0, !10, i64 4, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32}
!88 = distinct !{!88, !29}
!89 = distinct !{!89, !29}
!90 = !{!87, !12, i64 24}
!91 = !{!87, !12, i64 20}
!92 = !{!87, !12, i64 28}
!93 = !{!87, !12, i64 32}
!94 = !{!95, !9, i64 16}
!95 = !{!"", !54, i64 0, !9, i64 40, !9, i64 48}
!96 = !{!95, !9, i64 24}
!97 = !{!95, !9, i64 32}
!98 = !{!95, !9, i64 40}
!99 = !{!95, !9, i64 48}
!100 = !{!95, !9, i64 0}
!101 = !{!95, !18, i64 8}
!102 = !{!8, !12, i64 252}
!103 = !{!8, !12, i64 300}
!104 = !{!8, !12, i64 256}
!105 = !{!69, !9, i64 48}
!106 = !{!52, !9, i64 8}
!107 = !{!108, !9, i64 0}
!108 = !{!"", !37, i64 0, !10, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!109 = !{!108, !9, i64 8}
!110 = !{!108, !9, i64 16}
!111 = !{!108, !12, i64 28}
!112 = !{!8, !12, i64 40}
!113 = !{!8, !12, i64 304}
!114 = !{!8, !12, i64 308}
!115 = !{!81, !12, i64 8}
!116 = !{!81, !12, i64 12}
!117 = distinct !{!117, !29}
!118 = !{!81, !12, i64 4}
!119 = !{!81, !12, i64 36}
!120 = !{!81, !12, i64 28}
!121 = !{!81, !12, i64 32}
!122 = !{!81, !12, i64 40}
!123 = !{!81, !12, i64 44}
!124 = !{!81, !12, i64 48}
!125 = distinct !{!125, !29}
!126 = distinct !{!126, !29}
!127 = distinct !{!127, !29}
!128 = distinct !{!128, !29}
!129 = distinct !{!129, !29}
!130 = distinct !{!130, !29}
!131 = distinct !{!131, !29}
!132 = distinct !{!132, !29}
!133 = !{!108, !10, i64 32}
!134 = !{!108, !12, i64 44}
!135 = !{!108, !12, i64 36}
!136 = !{!8, !9, i64 464}
!137 = !{!138, !9, i64 0}
!138 = !{!"jpeg_color_converter", !9, i64 0, !9, i64 8}
!139 = !{!8, !9, i64 472}
!140 = !{!141, !9, i64 0}
!141 = !{!"jpeg_downsampler", !9, i64 0, !9, i64 8, !12, i64 16}
!142 = !{!8, !9, i64 440}
!143 = !{!144, !9, i64 0}
!144 = !{!"jpeg_c_prep_controller", !9, i64 0, !9, i64 8}
!145 = !{!8, !9, i64 480}
!146 = !{!147, !9, i64 0}
!147 = !{!"jpeg_forward_dct", !9, i64 0, !9, i64 8}
!148 = !{!8, !9, i64 488}
!149 = !{!150, !9, i64 0}
!150 = !{!"jpeg_entropy_encoder", !9, i64 0, !9, i64 8, !9, i64 16}
!151 = !{!46, !9, i64 0}
!152 = !{!108, !12, i64 40}
!153 = !{!64, !9, i64 0}
!154 = !{!108, !12, i64 24}
!155 = !{!8, !12, i64 404}
!156 = !{!8, !12, i64 412}
!157 = !{!52, !9, i64 16}
!158 = !{!52, !9, i64 24}
!159 = !{!41, !12, i64 24}
!160 = !{!41, !12, i64 28}
!161 = !{!150, !9, i64 16}
!162 = !{!8, !12, i64 316}
!163 = distinct !{!163, !29}
!164 = distinct !{!164, !29, !165, !166}
!165 = !{!"llvm.loop.isvectorized", i32 1}
!166 = !{!"llvm.loop.unroll.runtime.disable"}
!167 = !{!8, !12, i64 408}
!168 = !{!8, !12, i64 416}
!169 = !{!8, !12, i64 352}
!170 = !{!8, !12, i64 356}
!171 = !{!81, !12, i64 68}
!172 = !{!81, !12, i64 72}
!173 = !{!8, !12, i64 360}
!174 = !{!81, !12, i64 52}
!175 = !{!81, !12, i64 56}
!176 = !{!81, !12, i64 60}
!177 = !{!81, !12, i64 64}
!178 = distinct !{!178, !29}
!179 = distinct !{!179, !29}
!180 = !{!8, !12, i64 276}
!181 = !{!8, !12, i64 272}
!182 = !{!52, !9, i64 0}
!183 = !{!52, !9, i64 40}
!184 = distinct !{!184, !29}
!185 = !{!81, !12, i64 16}
!186 = !{i32 0, i32 2}
!187 = distinct !{!187, !29}
!188 = !{!81, !12, i64 20}
!189 = distinct !{!189, !29}
!190 = distinct !{!190, !29}
!191 = distinct !{!191, !29}
!192 = distinct !{!192, !29}
!193 = distinct !{!193, !29}
!194 = !{!54, !9, i64 0}
!195 = !{!54, !18, i64 8}
!196 = !{!54, !9, i64 24}
!197 = distinct !{!197, !29, !165, !166}
!198 = distinct !{!198, !29}
!199 = distinct !{!199, !29, !165, !166}
!200 = distinct !{!200, !29}
!201 = distinct !{!201, !29}
!202 = distinct !{!202, !29}
!203 = !{!204, !9, i64 0}
!204 = !{!"", !64, i64 0, !12, i64 16, !12, i64 20, !12, i64 24, !10, i64 28, !10, i64 32}
!205 = !{!69, !9, i64 16}
!206 = distinct !{!206, !29}
!207 = !{!204, !12, i64 16}
!208 = !{!204, !12, i64 20}
!209 = !{!204, !12, i64 24}
!210 = !{!204, !10, i64 28}
!211 = !{!204, !9, i64 8}
!212 = !{!144, !9, i64 8}
!213 = distinct !{!213, !29}
!214 = !{!215, !9, i64 0}
!215 = !{!"", !144, i64 0, !10, i64 16, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108}
!216 = !{!141, !12, i64 16}
!217 = !{!215, !9, i64 8}
!218 = distinct !{!218, !29}
!219 = distinct !{!219, !29}
!220 = distinct !{!220, !29}
!221 = !{!215, !12, i64 96}
!222 = !{!215, !12, i64 100}
!223 = !{!215, !12, i64 104}
!224 = !{!215, !12, i64 108}
!225 = !{!138, !9, i64 8}
!226 = distinct !{!226, !29}
!227 = distinct !{!227, !29}
!228 = distinct !{!228, !29}
!229 = distinct !{!229, !29}
!230 = !{!141, !9, i64 8}
!231 = distinct !{!231, !29}
!232 = distinct !{!232, !29}
!233 = distinct !{!233, !29}
!234 = distinct !{!234, !29}
!235 = !{!236, !9, i64 0}
!236 = !{!"", !46, i64 0, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !10, i64 32, !10, i64 112}
!237 = !{!69, !9, i64 40}
!238 = distinct !{!238, !29}
!239 = !{!69, !9, i64 8}
!240 = distinct !{!240, !29, !165, !166}
!241 = !{!236, !12, i64 16}
!242 = !{!236, !9, i64 8}
!243 = !{!236, !12, i64 28}
!244 = !{!236, !12, i64 20}
!245 = !{!236, !12, i64 24}
!246 = !{!147, !9, i64 8}
!247 = distinct !{!247, !29}
!248 = distinct !{!248, !29}
!249 = distinct !{!249, !29}
!250 = distinct !{!250, !29}
!251 = !{!150, !9, i64 8}
!252 = distinct !{!252, !29}
!253 = distinct !{!253, !29}
!254 = !{!69, !9, i64 64}
!255 = distinct !{!255, !29, !165, !166}
!256 = distinct !{!256, !29}
!257 = distinct !{!257, !29, !165, !166}
!258 = distinct !{!258, !29}
!259 = distinct !{!259, !29}
!260 = distinct !{!260, !29}
!261 = distinct !{!261, !29}
!262 = distinct !{!262, !29}
!263 = distinct !{!263, !29}
!264 = distinct !{!264, !29}
!265 = distinct !{!265, !29}
!266 = distinct !{!266, !29}
!267 = !{!268, !9, i64 0}
!268 = !{!"", !138, i64 0, !9, i64 16}
!269 = !{!268, !9, i64 8}
!270 = distinct !{!270, !29}
!271 = distinct !{!271, !29}
!272 = !{!268, !9, i64 16}
!273 = !{!18, !18, i64 0}
!274 = distinct !{!274, !29}
!275 = distinct !{!275, !29}
!276 = distinct !{!276, !29}
!277 = distinct !{!277, !29}
!278 = distinct !{!278, !29}
!279 = distinct !{!279, !29}
!280 = distinct !{!280, !29}
!281 = distinct !{!281, !29}
!282 = distinct !{!282, !29}
!283 = distinct !{!283, !29}
!284 = !{!285, !9, i64 0}
!285 = !{!"", !141, i64 0, !10, i64 24}
!286 = !{!285, !9, i64 8}
!287 = !{!285, !12, i64 16}
!288 = !{!8, !12, i64 260}
!289 = !{!8, !12, i64 264}
!290 = distinct !{!290, !29}
!291 = distinct !{!291, !29}
!292 = distinct !{!292, !29}
!293 = distinct !{!293, !29}
!294 = distinct !{!294, !29}
!295 = distinct !{!295, !29}
!296 = distinct !{!296, !29}
!297 = distinct !{!297, !29}
!298 = distinct !{!298, !29}
!299 = distinct !{!299, !29}
!300 = distinct !{!300, !29}
!301 = distinct !{!301, !29}
!302 = distinct !{!302, !29}
!303 = distinct !{!303, !29}
!304 = distinct !{!304, !29}
!305 = distinct !{!305, !29}
!306 = distinct !{!306, !29}
!307 = distinct !{!307, !29}
!308 = distinct !{!308, !29}
!309 = distinct !{!309, !29}
!310 = distinct !{!310, !29}
!311 = distinct !{!311, !29}
!312 = distinct !{!312, !29}
!313 = distinct !{!313, !29}
!314 = distinct !{!314, !29}
!315 = distinct !{!315, !29}
!316 = distinct !{!316, !29}
!317 = distinct !{!317, !29}
!318 = distinct !{!318, !29}
!319 = distinct !{!319, !29}
!320 = !{!321, !9, i64 0}
!321 = !{!"", !150, i64 0, !322, i64 24, !12, i64 56, !12, i64 60, !10, i64 64, !10, i64 96, !10, i64 128, !10, i64 160}
!322 = !{!"", !18, i64 0, !12, i64 8, !10, i64 12}
!323 = distinct !{!323, !29, !165, !166}
!324 = distinct !{!324, !29}
!325 = !{!321, !18, i64 24}
!326 = !{!321, !12, i64 32}
!327 = !{!321, !12, i64 56}
!328 = !{!321, !12, i64 60}
!329 = distinct !{!329, !29}
!330 = distinct !{!330, !29}
!331 = distinct !{!331, !29}
!332 = distinct !{!332, !29}
!333 = distinct !{!333, !29}
!334 = !{!335, !9, i64 0}
!335 = !{!"", !9, i64 0, !18, i64 8, !322, i64 16, !9, i64 48}
!336 = !{!335, !18, i64 8}
!337 = !{i64 0, i64 8, !273, i64 8, i64 4, !61, i64 12, i64 16, !19}
!338 = !{!335, !9, i64 48}
!339 = distinct !{!339, !29}
!340 = distinct !{!340, !29}
!341 = !{!335, !12, i64 24}
!342 = !{!335, !18, i64 16}
!343 = distinct !{!343, !29}
!344 = distinct !{!344, !29}
!345 = distinct !{!345, !29}
!346 = distinct !{!346, !29}
!347 = distinct !{!347, !29}
!348 = distinct !{!348, !29}
!349 = !{!350, !9, i64 0}
!350 = !{!"", !150, i64 0, !12, i64 24, !9, i64 32, !18, i64 40, !18, i64 48, !12, i64 56, !9, i64 64, !10, i64 72, !12, i64 88, !12, i64 92, !12, i64 96, !9, i64 104, !12, i64 112, !12, i64 116, !10, i64 120, !10, i64 152}
!351 = !{!350, !9, i64 104}
!352 = !{!350, !9, i64 64}
!353 = !{!350, !12, i64 24}
!354 = !{!350, !9, i64 8}
!355 = !{!350, !12, i64 88}
!356 = distinct !{!356, !29}
!357 = !{!350, !12, i64 92}
!358 = !{!350, !12, i64 96}
!359 = !{!350, !18, i64 48}
!360 = !{!350, !12, i64 56}
!361 = !{!350, !12, i64 112}
!362 = !{!350, !12, i64 116}
!363 = !{!350, !9, i64 32}
!364 = !{!350, !18, i64 40}
!365 = distinct !{!365, !29}
!366 = distinct !{!366, !29}
!367 = distinct !{!367, !29}
!368 = distinct !{!368, !29}
!369 = distinct !{!369, !29}
!370 = distinct !{!370, !29}
!371 = distinct !{!371, !29}
!372 = distinct !{!372, !29}
!373 = distinct !{!373, !29}
!374 = distinct !{!374, !29}
!375 = distinct !{!375, !29}
!376 = distinct !{!376, !29}
!377 = distinct !{!377, !29}
!378 = !{!379, !9, i64 0}
!379 = !{!"", !147, i64 0, !9, i64 16, !10, i64 24, !9, i64 56, !10, i64 64}
!380 = !{!8, !10, i64 268}
!381 = !{!379, !9, i64 8}
!382 = !{!379, !9, i64 16}
!383 = !{!379, !9, i64 56}
!384 = distinct !{!384, !29, !165, !166}
!385 = distinct !{!385, !29}
!386 = !{!13, !13, i64 0}
!387 = !{!388, !388, i64 0}
!388 = !{!"float", !10, i64 0}
!389 = distinct !{!389, !29, !165, !166}
!390 = distinct !{!390, !29}
!391 = distinct !{!391, !29}
!392 = distinct !{!392, !29}
!393 = distinct !{!393, !29}
!394 = distinct !{!394, !29}
!395 = distinct !{!395, !29}
!396 = distinct !{!396, !29, !165, !166}
!397 = distinct !{!397, !29}
!398 = distinct !{!398, !29}
!399 = distinct !{!399, !29, !165, !166}
!400 = distinct !{!400, !29, !165, !166}
!401 = distinct !{!401, !29, !165, !166}
!402 = distinct !{!402, !29}
!403 = distinct !{!403, !29, !165, !166}
!404 = !{!405, !9, i64 8}
!405 = !{!"jpeg_common_struct", !9, i64 0, !9, i64 8, !9, i64 16, !12, i64 24, !12, i64 28}
!406 = !{!69, !9, i64 72}
!407 = !{!405, !12, i64 24}
!408 = !{!405, !12, i64 28}
!409 = !{!69, !9, i64 80}
!410 = distinct !{!410, !29}
!411 = !{!17, !9, i64 16}
!412 = !{!17, !9, i64 24}
!413 = !{!17, !12, i64 124}
!414 = !{!17, !18, i64 128}
!415 = !{!17, !9, i64 136}
!416 = !{!17, !12, i64 144}
!417 = !{!405, !9, i64 0}
!418 = !{!17, !9, i64 152}
!419 = !{!17, !12, i64 160}
!420 = !{!17, !12, i64 164}
!421 = !{!422, !9, i64 0}
!422 = !{!"", !69, i64 0, !10, i64 96, !10, i64 112, !9, i64 128, !9, i64 136, !18, i64 144, !12, i64 152}
!423 = !{!422, !9, i64 8}
!424 = !{!422, !9, i64 16}
!425 = !{!422, !9, i64 24}
!426 = !{!422, !9, i64 32}
!427 = !{!422, !9, i64 40}
!428 = !{!422, !9, i64 48}
!429 = !{!422, !9, i64 56}
!430 = !{!422, !9, i64 64}
!431 = !{!422, !9, i64 72}
!432 = !{!422, !9, i64 80}
!433 = !{!422, !18, i64 88}
!434 = !{!422, !18, i64 144}
!435 = distinct !{!435, !29}
!436 = !{!422, !12, i64 152}
!437 = distinct !{!437, !29}
!438 = distinct !{!438, !29}
!439 = distinct !{!439, !29}
!440 = distinct !{!440, !29}
!441 = !{!442, !9, i64 0}
!442 = !{!"jvirt_sarray_control", !9, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !9, i64 48, !443, i64 56}
!443 = !{!"backing_store_struct", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !10, i64 32}
!444 = !{!442, !12, i64 8}
!445 = !{!442, !12, i64 12}
!446 = !{!442, !12, i64 16}
!447 = !{!442, !12, i64 36}
!448 = !{!442, !12, i64 44}
!449 = !{!422, !9, i64 128}
!450 = !{!442, !9, i64 48}
!451 = !{!452, !9, i64 0}
!452 = !{!"jvirt_barray_control", !9, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !9, i64 48, !443, i64 56}
!453 = !{!452, !12, i64 8}
!454 = !{!452, !12, i64 12}
!455 = !{!452, !12, i64 16}
!456 = !{!452, !12, i64 36}
!457 = !{!452, !12, i64 44}
!458 = !{!422, !9, i64 136}
!459 = !{!452, !9, i64 48}
!460 = distinct !{!460, !29}
!461 = distinct !{!461, !29}
!462 = !{!442, !12, i64 20}
!463 = !{!442, !12, i64 24}
!464 = !{!442, !12, i64 28}
!465 = !{!442, !12, i64 32}
!466 = !{!442, !12, i64 40}
!467 = distinct !{!467, !29}
!468 = !{!452, !12, i64 20}
!469 = !{!452, !12, i64 24}
!470 = !{!452, !12, i64 28}
!471 = !{!452, !12, i64 32}
!472 = !{!452, !12, i64 40}
!473 = distinct !{!473, !29}
!474 = distinct !{!474, !29}
!475 = distinct !{!475, !29}
!476 = !{!442, !9, i64 72}
!477 = distinct !{!477, !29}
!478 = !{!452, !9, i64 72}
!479 = distinct !{!479, !29}
!480 = distinct !{!480, !29}
!481 = distinct !{!481, !29}
!482 = distinct !{!482, !29}
!483 = distinct !{!483, !29}
!484 = distinct !{!484, !29}
!485 = !{!486, !9, i64 24}
!486 = !{!"cjpeg_source_struct", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !12, i64 40}
!487 = !{!486, !9, i64 0}
!488 = !{!486, !9, i64 8}
!489 = !{!486, !9, i64 32}
!490 = distinct !{!490, !29}
!491 = !{!486, !9, i64 16}
!492 = !{!69, !18, i64 88}
!493 = distinct !{!493, !29}
!494 = !{!495, !9, i64 0}
!495 = !{!"", !486, i64 0, !9, i64 48, !9, i64 56, !18, i64 64, !9, i64 72}
!496 = !{!495, !9, i64 16}
!497 = !{!495, !9, i64 24}
!498 = !{!495, !9, i64 8}
!499 = !{!495, !18, i64 64}
!500 = !{!495, !9, i64 48}
!501 = !{!495, !9, i64 32}
!502 = !{!495, !12, i64 40}
!503 = !{!495, !9, i64 56}
!504 = !{!495, !9, i64 72}
!505 = distinct !{!505, !29}
!506 = distinct !{!506, !29}
!507 = distinct !{!507, !29}
!508 = distinct !{!508, !29}
!509 = distinct !{!509, !29}
!510 = distinct !{!510, !29}
!511 = distinct !{!511, !29}
!512 = distinct !{!512, !29}
!513 = !{!514, !9, i64 48}
!514 = !{!"", !486, i64 0, !9, i64 48, !9, i64 56, !10, i64 64, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !12, i64 348, !12, i64 352, !12, i64 356, !12, i64 360, !12, i64 364, !12, i64 368, !12, i64 372, !9, i64 376, !9, i64 384, !9, i64 392, !9, i64 400, !12, i64 408, !9, i64 416, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436}
!515 = !{!514, !9, i64 0}
!516 = !{!514, !9, i64 16}
!517 = !{!514, !9, i64 56}
!518 = !{!514, !9, i64 24}
!519 = distinct !{!519, !29}
!520 = !{!514, !12, i64 408}
!521 = !{!514, !12, i64 340}
!522 = !{!514, !9, i64 376}
!523 = !{!514, !9, i64 384}
!524 = !{!514, !9, i64 392}
!525 = !{!514, !12, i64 344}
!526 = !{!514, !12, i64 348}
!527 = !{!514, !12, i64 364}
!528 = !{!514, !12, i64 352}
!529 = !{!514, !12, i64 356}
!530 = !{!514, !12, i64 360}
!531 = !{!514, !9, i64 400}
!532 = !{!69, !9, i64 32}
!533 = !{!514, !9, i64 416}
!534 = !{!535, !12, i64 36}
!535 = !{!"cdjpeg_progress_mgr", !41, i64 0, !12, i64 32, !12, i64 36, !12, i64 40}
!536 = !{!514, !9, i64 8}
!537 = !{!514, !9, i64 32}
!538 = !{!514, !12, i64 40}
!539 = distinct !{!539, !29}
!540 = !{!535, !18, i64 8}
!541 = !{!535, !18, i64 16}
!542 = !{!535, !9, i64 0}
!543 = !{!69, !9, i64 56}
!544 = distinct !{!544, !29}
!545 = distinct !{!545, !29}
!546 = !{!535, !12, i64 32}
!547 = !{!514, !12, i64 424}
!548 = !{!514, !12, i64 428}
!549 = !{!514, !12, i64 432}
!550 = !{!514, !12, i64 436}
!551 = distinct !{!551, !29}
!552 = distinct !{!552, !29}
!553 = !{!514, !12, i64 368}
!554 = !{!514, !12, i64 372}
!555 = !{!514, !12, i64 336}
!556 = distinct !{!556, !29}
!557 = !{!514, !12, i64 332}
!558 = !{!514, !12, i64 328}
!559 = !{!514, !12, i64 324}
!560 = distinct !{!560, !29}
!561 = distinct !{!561, !29}
!562 = !{!563, !9, i64 48}
!563 = !{!"_tga_source_struct", !486, i64 0, !9, i64 48, !9, i64 56, !9, i64 64, !12, i64 72, !9, i64 80, !10, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !9, i64 104}
!564 = !{!563, !9, i64 0}
!565 = !{!563, !9, i64 16}
!566 = !{!563, !9, i64 24}
!567 = !{!563, !12, i64 92}
!568 = !{!563, !12, i64 100}
!569 = !{!563, !12, i64 96}
!570 = !{!563, !9, i64 104}
!571 = !{!563, !9, i64 64}
!572 = !{!563, !12, i64 40}
!573 = !{!563, !9, i64 32}
!574 = !{!563, !9, i64 8}
!575 = distinct !{!575, !29}
!576 = !{!563, !9, i64 56}
!577 = distinct !{!577, !29}
!578 = distinct !{!578, !29}
!579 = distinct !{!579, !29}
!580 = !{!563, !9, i64 80}
!581 = distinct !{!581, !29}
!582 = distinct !{!582, !29}
!583 = distinct !{!583, !29}
!584 = distinct !{!584, !29}
!585 = distinct !{!585, !29}
!586 = !{!563, !12, i64 72}
!587 = !{!588, !9, i64 48}
!588 = !{!"_bmp_source_struct", !486, i64 0, !9, i64 48, !9, i64 56, !9, i64 64, !12, i64 72, !12, i64 76, !12, i64 80}
!589 = !{!588, !9, i64 0}
!590 = !{!588, !9, i64 16}
!591 = !{!588, !9, i64 24}
!592 = !{!588, !12, i64 80}
!593 = !{!588, !9, i64 56}
!594 = distinct !{!594, !29}
!595 = distinct !{!595, !29}
!596 = distinct !{!596, !29}
!597 = !{!588, !12, i64 76}
!598 = !{!588, !9, i64 64}
!599 = !{!588, !9, i64 8}
!600 = !{!588, !9, i64 32}
!601 = !{!588, !12, i64 40}
!602 = distinct !{!602, !29}
!603 = distinct !{!603, !29}
!604 = !{!588, !12, i64 72}
!605 = distinct !{!605, !29}
!606 = distinct !{!606, !29}
!607 = distinct !{!607, !29}
!608 = distinct !{!608, !29}
!609 = distinct !{!609, !29}
!610 = distinct !{!610, !29}
!611 = distinct !{!611, !29}
!612 = distinct !{!612, !29}
!613 = distinct !{!613, !29}
!614 = distinct !{!614, !29}
!615 = distinct !{!615, !29}
!616 = distinct !{!616, !29}
!617 = distinct !{!617, !29}
!618 = distinct !{!618, !29}
