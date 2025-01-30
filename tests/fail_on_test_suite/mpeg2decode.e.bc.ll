; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/mpeg2decode.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer_data = type { i32, [2048 x i8], ptr, [16 x i8], i32, ptr, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }
%struct.DCTtab = type { i8, i8, i8 }
%struct.VLCtab = type { i8, i8 }

@.str = private unnamed_addr constant [43 x i8] c"Unexpected next_start_code %08x (ignored)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"reserved extension start code ID %d\0A\00", align 1
@frame_rate_Table = internal unnamed_addr constant [16 x double] [double 0.000000e+00, double 0x4036FA1E2D85C116, double 2.400000e+01, double 2.500000e+01, double 0x403DF853E2556B28, double 3.000000e+01, double 5.000000e+01, double 0x404DF853E2556B28, double 6.000000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], align 16
@.str.6 = private unnamed_addr constant [38 x i8] c"temporal scalability not implemented\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"temporal scalability not supported\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"copyright_extension (byte %d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  copyright_flag =%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"  copyright_identifier=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"  original_or_copy = %d (original=1, copy=0)\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"  copyright_number_1=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"  copyright_number_2=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"  copyright_number_3=%d\0A\00", align 1
@True_Framenum_max = internal unnamed_addr global i32 -1, align 4
@Temporal_Reference_Base = internal unnamed_addr global i32 0, align 4
@Temporal_Reference_GOP_Reset = internal unnamed_addr global i1 false, align 4
@Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap = internal unnamed_addr global i1 false, align 4
@Update_Temporal_Reference_Tacking_Data.temporal_reference_old = internal unnamed_addr global i32 0, align 4
@iclip = internal global [1024 x i16] zeroinitializer, align 16
@iclp = internal unnamed_addr global ptr null, align 8
@Version = internal global [28 x i8] c"mpeg2decode V1.2a, 96/07/19\00", align 16
@Author = internal global [41 x i8] c"(C) 1996, MPEG Software Simulation Group\00", align 16
@default_intra_quantizer_matrix = internal global [64 x i8] c"\08\10\13\16\1A\1B\1D\22\10\10\16\18\1B\1D\22%\13\16\1A\1B\1D\22\22&\16\16\1A\1B\1D\22%(\16\1A\1B\1D #(0\1A\1B\1D #(0:\1A\1B\1D\22&.8E\1B\1D#&.8ES", align 16
@Main_Bitstream_Filename = internal global ptr null, align 8
@.str.12 = private unnamed_addr constant [36 x i8] c"Base layer input file %s not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Decoder currently does not parse transport streams\0A\00", align 1
@.str.2.13 = private unnamed_addr constant [33 x i8] c"Unable to recognize stream type\0A\00", align 1
@Enhancement_Layer_Bitstream_Filename = internal global ptr null, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"enhancment layer bitstream file %s not found\0A\00", align 1
@hiQdither = internal global i32 0, align 4
@Trace_Flag = internal global i32 0, align 4
@Verbose_Flag = internal global i32 0, align 4
@Spatial_Flag = internal global i32 0, align 4
@Display_Progressive_Flag = internal global i32 0, align 4
@Verify_Flag = internal global i32 0, align 4
@Stats_Flag = internal global i32 0, align 4
@User_Data_Flag = internal global i32 0, align 4
@Main_Bitstream_Flag = internal global i32 0, align 4
@profile = internal global i32 0, align 4
@level = internal global i32 0, align 4
@bit_rate = internal global double 0.000000e+00, align 8
@frame_rate = internal global double 0.000000e+00, align 8
@aspect_ratio_information = internal global i32 0, align 4
@frame_rate_code = internal global i32 0, align 4
@bit_rate_value = internal global i32 0, align 4
@vbv_buffer_size = internal global i32 0, align 4
@constrained_parameters_flag = internal global i32 0, align 4
@profile_and_level_indication = internal global i32 0, align 4
@low_delay = internal global i32 0, align 4
@frame_rate_extension_n = internal global i32 0, align 4
@frame_rate_extension_d = internal global i32 0, align 4
@video_format = internal global i32 0, align 4
@color_description = internal global i32 0, align 4
@color_primaries = internal global i32 0, align 4
@transfer_characteristics = internal global i32 0, align 4
@display_horizontal_size = internal global i32 0, align 4
@display_vertical_size = internal global i32 0, align 4
@vbv_delay = internal global i32 0, align 4
@repeat_first_field = internal global i32 0, align 4
@chroma_420_type = internal global i32 0, align 4
@composite_display_flag = internal global i32 0, align 4
@v_axis = internal global i32 0, align 4
@field_sequence = internal global i32 0, align 4
@sub_carrier = internal global i32 0, align 4
@burst_amplitude = internal global i32 0, align 4
@sub_carrier_phase = internal global i32 0, align 4
@frame_center_horizontal_offset = internal global [3 x i32] zeroinitializer, align 4
@frame_center_vertical_offset = internal global [3 x i32] zeroinitializer, align 4
@layer_id = internal global i32 0, align 4
@lower_layer_temporal_reference = internal global i32 0, align 4
@copyright_flag = internal global i32 0, align 4
@copyright_identifier = internal global i32 0, align 4
@original_or_copy = internal global i32 0, align 4
@copyright_number_1 = internal global i32 0, align 4
@copyright_number_2 = internal global i32 0, align 4
@copyright_number_3 = internal global i32 0, align 4
@drop_flag = internal global i32 0, align 4
@hour = internal global i32 0, align 4
@minute = internal global i32 0, align 4
@sec = internal global i32 0, align 4
@frame = internal global i32 0, align 4
@closed_gop = internal global i32 0, align 4
@broken_link = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Clip[] malloc failed\0A\00", align 1
@.str.6.5 = private unnamed_addr constant [9 x i8] c"\0A%s, %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [1195 x i8] c"Usage:  mpeg2decode {options}\0AOptions: -b  file  main bitstream (base or spatial enhancement layer)\0A         -cn file  conformance report (n: level)\0A         -e  file  enhancement layer bitstream (SNR or Data Partitioning)\0A         -f        store/display interlaced video in frame format\0A         -g        concatenated file format for substitution method (-x)\0A         -in file  information & statistics report  (n: level)\0A         -l  file  file name pattern for lower layer sequence\0A                   (for spatial scalability)\0A         -on file  output format (0:YUV 1:SIF 2:TGA 3:PPM 4:X11 5:X11HiQ)\0A         -q        disable warnings to stderr\0A         -r        use double precision reference IDCT\0A         -t        enable low level tracing to stdout\0A         -u  file  print user_data to stdio or file\0A         -vn       verbose output (n: level)\0A         -x  file  filename pattern of picture substitution sequence\0A\0AFile patterns:  for sequential filenames, \22printf\22 style, e.g. rec%%d\0A                 or rec%%d%%c for fieldwise storage\0ALevels:        0:none 1:sequence 2:picture 3:slice 4:macroblock 5:block\0A\0AExample:       mpeg2decode -b bitstream.mpg -f -r -o0 rec%%d\0A         \0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18.6 = private unnamed_addr constant [47 x i8] c"undefined option -%c ignored. Exiting program\0A\00", align 1
@.str.20.39 = private unnamed_addr constant [21 x i8] c"streams out of sync\0A\00", align 1
@Initialize_Sequence.Table_6_20 = internal unnamed_addr constant [3 x i32] [i32 6, i32 8, i32 12], align 4
@.str.21.14 = private unnamed_addr constant [30 x i8] c"unsupported scalability mode\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"backward_reference_frame[] malloc failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"forward_reference_frame[] malloc failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"auxframe[] malloc failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"substitute_frame[] malloc failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"llframe0 malloc failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"llframe1 malloc failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"lltmp malloc failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c" \00", align 1
@str = private unnamed_addr constant [55 x i8] c"There must be a main bitstream specified (-b filename)\00", align 1
@str.30 = private unnamed_addr constant [39 x i8] c"ERROR: -x must be followed by filename\00", align 1
@str.31 = private unnamed_addr constant [40 x i8] c"This program not compiled for -v option\00", align 1
@str.32 = private unnamed_addr constant [49 x i8] c"WARNING: This program not compiled for -t option\00", align 1
@str.33 = private unnamed_addr constant [39 x i8] c"ERROR: -o must be followed by filename\00", align 1
@str.34 = private unnamed_addr constant [39 x i8] c"ERROR: -l must be followed by filename\00", align 1
@str.35 = private unnamed_addr constant [49 x i8] c"WARNING: This program not compiled for -i option\00", align 1
@str.36 = private unnamed_addr constant [39 x i8] c"ERROR: -e must be followed by filename\00", align 1
@str.37 = private unnamed_addr constant [49 x i8] c"This program not compiled for Verify_Flag option\00", align 1
@str.38 = private unnamed_addr constant [55 x i8] c"ERROR: -b must be followed the main bitstream filename\00", align 1
@progressive_sequence = internal global i32 0, align 4
@Output_Picture_Filename = internal global ptr null, align 8
@Output_Type = internal global i32 0, align 4
@.str.176 = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@.str.1.177 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.2.178 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@.str.3.182 = private unnamed_addr constant [11 x i8] c"saving %s\0A\00", align 1
@outfile = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Couldn't create %s\0A\00", align 1
@obfr = internal global [4096 x i8] zeroinitializer, align 16
@optr = internal unnamed_addr global ptr null, align 8
@store_sif.u422 = internal unnamed_addr global ptr null, align 8
@store_sif.v422 = internal unnamed_addr global ptr null, align 8
@.str.5.179 = private unnamed_addr constant [35 x i8] c"4:4:4 not supported for SIF format\00", align 1
@.str.6.180 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.7.181 = private unnamed_addr constant [5 x i8] c".SIF\00", align 1
@store_ppm_tga.tga24 = internal unnamed_addr constant [14 x i8] c"\00\00\02\00\00\00\00\00\00\00\00\00\18 ", align 1
@store_ppm_tga.u422 = internal unnamed_addr global ptr null, align 8
@store_ppm_tga.v422 = internal unnamed_addr global ptr null, align 8
@store_ppm_tga.u444 = internal unnamed_addr global ptr null, align 8
@store_ppm_tga.v444 = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".ppm\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"P6\0A%d %d\0A255\0A\00", align 1
@Inverse_Table_6_9 = internal global [8 x [4 x i32]] [[4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104448, i32 132798, i32 24759, i32 53109], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 117579, i32 136230, i32 16907, i32 35559]], align 16
@matrix_coefficients = internal global i32 0, align 4
@Ersatz_Flag = internal global i32 0, align 4
@mb_width = internal global i32 0, align 4
@mb_height = internal global i32 0, align 4
@Two_Streams = internal global i32 0, align 4
@Non_Linear_quantizer_scale = internal global [32 x i8] c"\00\01\02\03\04\05\06\07\08\0A\0C\0E\10\12\14\16\18\1C $(,048@HPX`hp", align 16
@concealment_motion_vectors = internal global i32 0, align 4
@f_code = internal global [2 x [2 x i32]] zeroinitializer, align 16
@forward_f_code = internal global i32 0, align 4
@full_pel_forward_vector = internal global i32 0, align 4
@backward_f_code = internal global i32 0, align 4
@full_pel_backward_vector = internal global i32 0, align 4
@block_count = internal global i32 0, align 4
@.str.6.196 = private unnamed_addr constant [32 x i8] c"D picture end_of_macroblock bit\00", align 1
@macroblock_modes.stwc_table = internal unnamed_addr constant [3 x [4 x i8]] [[4 x i8] c"\06\03\07\04", [4 x i8] c"\02\01\05\04", [4 x i8] c"\02\05\07\04"], align 1
@macroblock_modes.stwclass_table = internal unnamed_addr constant [9 x i8] c"\00\01\02\01\01\02\03\03\04", align 1
@spatial_temporal_weight_code_table_index = internal global i32 0, align 4
@frame_pred_frame_dct = internal global i32 0, align 4
@Reference_IDCT_Flag = internal global i32 0, align 4
@auxframe = internal global [3 x ptr] zeroinitializer, align 16
@frame_reorder.Oldref_progressive_frame = internal unnamed_addr global i32 0, align 4
@frame_reorder.Newref_progressive_frame = internal unnamed_addr global i32 0, align 4
@str.195 = private unnamed_addr constant [29 x i8] c"odd number of field pictures\00", align 1
@str.9 = private unnamed_addr constant [34 x i8] c"last frame incomplete, not stored\00", align 1
@str.11 = private unnamed_addr constant [38 x i8] c"start_of_slice(): MBAinc unsuccessful\00", align 1
@str.12 = private unnamed_addr constant [29 x i8] c"DP: Premature end of picture\00", align 1
@str.13 = private unnamed_addr constant [43 x i8] c"start_of_slice(): Premature end of picture\00", align 1
@str.14 = private unnamed_addr constant [27 x i8] c"Cant't synchronize streams\00", align 1
@str.15 = private unnamed_addr constant [30 x i8] c"SNR: Premature end of picture\00", align 1
@str.16 = private unnamed_addr constant [32 x i8] c"Too many macroblocks in picture\00", align 1
@c = internal unnamed_addr global [8 x [8 x double]] zeroinitializer, align 16
@str.2 = private unnamed_addr constant [20 x i8] c"invalid motion_type\00", align 1
@Substitute_Frame_Buffer.previous_temporal_reference = internal unnamed_addr global i32 0, align 4
@Substitute_Frame_Buffer.previous_anchor_temporal_reference = internal unnamed_addr global i32 0, align 4
@Substitute_Frame_Buffer.previous_picture_coding_type = internal unnamed_addr global i32 0, align 4
@Substitute_Frame_Buffer.bgate = internal unnamed_addr global i1 false, align 4
@Second_Field = internal global i32 0, align 4
@Substitute_Picture_Filename = internal global ptr null, align 8
@forward_reference_frame = internal global [3 x ptr] zeroinitializer, align 16
@temporal_reference = internal global i32 0, align 4
@backward_reference_frame = internal global [3 x ptr] zeroinitializer, align 16
@.str.207 = private unnamed_addr constant [40 x i8] c"ERROR: framenum (%d) is less than zero\0A\00", align 1
@Big_Picture_Flag = internal global i32 0, align 4
@substitute_frame = internal global [3 x ptr] zeroinitializer, align 16
@Coded_Picture_Width = internal global i32 0, align 4
@Coded_Picture_Height = internal global i32 0, align 4
@Chroma_Width = internal global i32 0, align 4
@Chroma_Height = internal global i32 0, align 4
@.str.2.208 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@Error_Text = internal global [256 x i8] zeroinitializer, align 16
@.str.3.213 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@.str.4.209 = private unnamed_addr constant [42 x i8] c"ERROR: chroma_format (%d) not recognized\0A\00", align 1
@.str.5.210 = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@.str.6.211 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.7.212 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@.str.9.215 = private unnamed_addr constant [49 x i8] c"was able to read only %d bytes of %d of file %s\0A\00", align 1
@str.214 = private unnamed_addr constant [31 x i8] c"was unable to substitute frame\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1.219 = private unnamed_addr constant [43 x i8] c"DCT coeff index (i) out of bounds (intra)\0A\00", align 1
@scan = internal global [2 x [64 x i8]] [[64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", [64 x i8] c"\00\08\10\18\01\09\02\0A\11\19 (0891)!\1A\12\03\0B\04\0C\13\1B\22*2:#+3;\14\1C\05\0D\06\0E\15\1D$,4<%-5=\16\1E\07\0F\17\1F&.6>'/7?"], align 16
@.str.3.223 = private unnamed_addr constant [43 x i8] c"DCT coeff index (i) out of bounds (inter)\0A\00", align 1
@base = internal global %struct.layer_data zeroinitializer, align 8
@enhan = internal global %struct.layer_data zeroinitializer, align 8
@chroma_format = internal global i32 0, align 4
@intra_dc_precision = internal global i32 0, align 4
@intra_vlc_format = internal global i32 0, align 4
@.str.6.228 = private unnamed_addr constant [44 x i8] c"DCT coeff index (i) out of bounds (intra2)\0A\00", align 1
@.str.8.232 = private unnamed_addr constant [44 x i8] c"DCT coeff index (i) out of bounds (inter2)\0A\00", align 1
@str.218 = private unnamed_addr constant [51 x i8] c"invalid Huffman code in Decode_MPEG1_Intra_Block()\00", align 1
@str.9.222 = private unnamed_addr constant [55 x i8] c"invalid Huffman code in Decode_MPEG1_Non_Intra_Block()\00", align 1
@str.11.226 = private unnamed_addr constant [51 x i8] c"invalid Huffman code in Decode_MPEG2_Intra_Block()\00", align 1
@str.12.231 = private unnamed_addr constant [55 x i8] c"invalid Huffman code in Decode_MPEG2_Non_Intra_Block()\00", align 1
@str.13.227 = private unnamed_addr constant [45 x i8] c"invalid escape in Decode_MPEG2_Intra_Block()\00", align 1
@DCTtabfirst = internal global [12 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 2, i8 4 }, %struct.DCTtab { i8 2, i8 1, i8 4 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }], align 16
@DCTtabnext = internal global [12 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 2, i8 4 }, %struct.DCTtab { i8 2, i8 1, i8 4 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }], align 16
@DCTtab0 = internal global [60 x %struct.DCTtab] [%struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 0, i8 4, i8 7 }, %struct.DCTtab { i8 0, i8 4, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 13, i8 1, i8 8 }, %struct.DCTtab { i8 0, i8 6, i8 8 }, %struct.DCTtab { i8 12, i8 1, i8 8 }, %struct.DCTtab { i8 11, i8 1, i8 8 }, %struct.DCTtab { i8 3, i8 2, i8 8 }, %struct.DCTtab { i8 1, i8 3, i8 8 }, %struct.DCTtab { i8 0, i8 5, i8 8 }, %struct.DCTtab { i8 10, i8 1, i8 8 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }], align 16
@DCTtab0a = internal global [252 x %struct.DCTtab] [%struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 7 }, %struct.DCTtab { i8 7, i8 1, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 6, i8 1, i8 7 }, %struct.DCTtab { i8 6, i8 1, i8 7 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 1, i8 5, i8 8 }, %struct.DCTtab { i8 11, i8 1, i8 8 }, %struct.DCTtab { i8 0, i8 11, i8 8 }, %struct.DCTtab { i8 0, i8 10, i8 8 }, %struct.DCTtab { i8 13, i8 1, i8 8 }, %struct.DCTtab { i8 12, i8 1, i8 8 }, %struct.DCTtab { i8 3, i8 2, i8 8 }, %struct.DCTtab { i8 1, i8 4, i8 8 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 1, i8 3, i8 7 }, %struct.DCTtab { i8 1, i8 3, i8 7 }, %struct.DCTtab { i8 10, i8 1, i8 7 }, %struct.DCTtab { i8 10, i8 1, i8 7 }, %struct.DCTtab { i8 0, i8 8, i8 7 }, %struct.DCTtab { i8 0, i8 8, i8 7 }, %struct.DCTtab { i8 0, i8 9, i8 7 }, %struct.DCTtab { i8 0, i8 9, i8 7 }, %struct.DCTtab { i8 0, i8 12, i8 8 }, %struct.DCTtab { i8 0, i8 13, i8 8 }, %struct.DCTtab { i8 2, i8 3, i8 8 }, %struct.DCTtab { i8 4, i8 2, i8 8 }, %struct.DCTtab { i8 0, i8 14, i8 8 }, %struct.DCTtab { i8 0, i8 15, i8 8 }], align 16
@DCTtab1 = internal global [8 x %struct.DCTtab] [%struct.DCTtab { i8 16, i8 1, i8 10 }, %struct.DCTtab { i8 5, i8 2, i8 10 }, %struct.DCTtab { i8 0, i8 7, i8 10 }, %struct.DCTtab { i8 2, i8 3, i8 10 }, %struct.DCTtab { i8 1, i8 4, i8 10 }, %struct.DCTtab { i8 15, i8 1, i8 10 }, %struct.DCTtab { i8 14, i8 1, i8 10 }, %struct.DCTtab { i8 4, i8 2, i8 10 }], align 16
@DCTtab1a = internal global [8 x %struct.DCTtab] [%struct.DCTtab { i8 5, i8 2, i8 9 }, %struct.DCTtab { i8 5, i8 2, i8 9 }, %struct.DCTtab { i8 14, i8 1, i8 9 }, %struct.DCTtab { i8 14, i8 1, i8 9 }, %struct.DCTtab { i8 2, i8 4, i8 10 }, %struct.DCTtab { i8 16, i8 1, i8 10 }, %struct.DCTtab { i8 15, i8 1, i8 9 }, %struct.DCTtab { i8 15, i8 1, i8 9 }], align 16
@DCTtab2 = internal global [16 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 11, i8 12 }, %struct.DCTtab { i8 8, i8 2, i8 12 }, %struct.DCTtab { i8 4, i8 3, i8 12 }, %struct.DCTtab { i8 0, i8 10, i8 12 }, %struct.DCTtab { i8 2, i8 4, i8 12 }, %struct.DCTtab { i8 7, i8 2, i8 12 }, %struct.DCTtab { i8 21, i8 1, i8 12 }, %struct.DCTtab { i8 20, i8 1, i8 12 }, %struct.DCTtab { i8 0, i8 9, i8 12 }, %struct.DCTtab { i8 19, i8 1, i8 12 }, %struct.DCTtab { i8 18, i8 1, i8 12 }, %struct.DCTtab { i8 1, i8 5, i8 12 }, %struct.DCTtab { i8 3, i8 3, i8 12 }, %struct.DCTtab { i8 0, i8 8, i8 12 }, %struct.DCTtab { i8 6, i8 2, i8 12 }, %struct.DCTtab { i8 17, i8 1, i8 12 }], align 16
@DCTtab3 = internal global [16 x %struct.DCTtab] [%struct.DCTtab { i8 10, i8 2, i8 13 }, %struct.DCTtab { i8 9, i8 2, i8 13 }, %struct.DCTtab { i8 5, i8 3, i8 13 }, %struct.DCTtab { i8 3, i8 4, i8 13 }, %struct.DCTtab { i8 2, i8 5, i8 13 }, %struct.DCTtab { i8 1, i8 7, i8 13 }, %struct.DCTtab { i8 1, i8 6, i8 13 }, %struct.DCTtab { i8 0, i8 15, i8 13 }, %struct.DCTtab { i8 0, i8 14, i8 13 }, %struct.DCTtab { i8 0, i8 13, i8 13 }, %struct.DCTtab { i8 0, i8 12, i8 13 }, %struct.DCTtab { i8 26, i8 1, i8 13 }, %struct.DCTtab { i8 25, i8 1, i8 13 }, %struct.DCTtab { i8 24, i8 1, i8 13 }, %struct.DCTtab { i8 23, i8 1, i8 13 }, %struct.DCTtab { i8 22, i8 1, i8 13 }], align 16
@DCTtab4 = internal global [16 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 31, i8 14 }, %struct.DCTtab { i8 0, i8 30, i8 14 }, %struct.DCTtab { i8 0, i8 29, i8 14 }, %struct.DCTtab { i8 0, i8 28, i8 14 }, %struct.DCTtab { i8 0, i8 27, i8 14 }, %struct.DCTtab { i8 0, i8 26, i8 14 }, %struct.DCTtab { i8 0, i8 25, i8 14 }, %struct.DCTtab { i8 0, i8 24, i8 14 }, %struct.DCTtab { i8 0, i8 23, i8 14 }, %struct.DCTtab { i8 0, i8 22, i8 14 }, %struct.DCTtab { i8 0, i8 21, i8 14 }, %struct.DCTtab { i8 0, i8 20, i8 14 }, %struct.DCTtab { i8 0, i8 19, i8 14 }, %struct.DCTtab { i8 0, i8 18, i8 14 }, %struct.DCTtab { i8 0, i8 17, i8 14 }, %struct.DCTtab { i8 0, i8 16, i8 14 }], align 16
@DCTtab5 = internal global [16 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 40, i8 15 }, %struct.DCTtab { i8 0, i8 39, i8 15 }, %struct.DCTtab { i8 0, i8 38, i8 15 }, %struct.DCTtab { i8 0, i8 37, i8 15 }, %struct.DCTtab { i8 0, i8 36, i8 15 }, %struct.DCTtab { i8 0, i8 35, i8 15 }, %struct.DCTtab { i8 0, i8 34, i8 15 }, %struct.DCTtab { i8 0, i8 33, i8 15 }, %struct.DCTtab { i8 0, i8 32, i8 15 }, %struct.DCTtab { i8 1, i8 14, i8 15 }, %struct.DCTtab { i8 1, i8 13, i8 15 }, %struct.DCTtab { i8 1, i8 12, i8 15 }, %struct.DCTtab { i8 1, i8 11, i8 15 }, %struct.DCTtab { i8 1, i8 10, i8 15 }, %struct.DCTtab { i8 1, i8 9, i8 15 }, %struct.DCTtab { i8 1, i8 8, i8 15 }], align 16
@DCTtab6 = internal global [16 x %struct.DCTtab] [%struct.DCTtab { i8 1, i8 18, i8 16 }, %struct.DCTtab { i8 1, i8 17, i8 16 }, %struct.DCTtab { i8 1, i8 16, i8 16 }, %struct.DCTtab { i8 1, i8 15, i8 16 }, %struct.DCTtab { i8 6, i8 3, i8 16 }, %struct.DCTtab { i8 16, i8 2, i8 16 }, %struct.DCTtab { i8 15, i8 2, i8 16 }, %struct.DCTtab { i8 14, i8 2, i8 16 }, %struct.DCTtab { i8 13, i8 2, i8 16 }, %struct.DCTtab { i8 12, i8 2, i8 16 }, %struct.DCTtab { i8 11, i8 2, i8 16 }, %struct.DCTtab { i8 31, i8 1, i8 16 }, %struct.DCTtab { i8 30, i8 1, i8 16 }, %struct.DCTtab { i8 29, i8 1, i8 16 }, %struct.DCTtab { i8 28, i8 1, i8 16 }, %struct.DCTtab { i8 27, i8 1, i8 16 }], align 16
@picture_coding_type = internal global i32 0, align 4
@MVtab0 = internal unnamed_addr constant [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 1, i8 1 }, %struct.VLCtab { i8 1, i8 1 }, %struct.VLCtab { i8 1, i8 1 }, %struct.VLCtab { i8 1, i8 1 }], align 16
@MVtab1 = internal unnamed_addr constant [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 5, i8 6 }, %struct.VLCtab { i8 4, i8 5 }, %struct.VLCtab { i8 4, i8 5 }], align 16
@Quiet_Flag = internal global i32 0, align 4
@.str.1.237 = private unnamed_addr constant [45 x i8] c"Invalid motion_vector code (MBA %d, pic %d)\0A\00", align 1
@global_MBA = internal global i32 0, align 4
@global_pic = internal global i32 0, align 4
@Fault_Flag = internal global i32 0, align 4
@MVtab2 = internal unnamed_addr constant [12 x %struct.VLCtab] [%struct.VLCtab { i8 16, i8 9 }, %struct.VLCtab { i8 15, i8 9 }, %struct.VLCtab { i8 14, i8 9 }, %struct.VLCtab { i8 13, i8 9 }, %struct.VLCtab { i8 12, i8 9 }, %struct.VLCtab { i8 11, i8 9 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }], align 16
@CBPtab0 = internal unnamed_addr constant [32 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 62, i8 5 }, %struct.VLCtab { i8 2, i8 5 }, %struct.VLCtab { i8 61, i8 5 }, %struct.VLCtab { i8 1, i8 5 }, %struct.VLCtab { i8 56, i8 5 }, %struct.VLCtab { i8 52, i8 5 }, %struct.VLCtab { i8 44, i8 5 }, %struct.VLCtab { i8 28, i8 5 }, %struct.VLCtab { i8 40, i8 5 }, %struct.VLCtab { i8 20, i8 5 }, %struct.VLCtab { i8 48, i8 5 }, %struct.VLCtab { i8 12, i8 5 }, %struct.VLCtab { i8 32, i8 4 }, %struct.VLCtab { i8 32, i8 4 }, %struct.VLCtab { i8 16, i8 4 }, %struct.VLCtab { i8 16, i8 4 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 60, i8 3 }, %struct.VLCtab { i8 60, i8 3 }, %struct.VLCtab { i8 60, i8 3 }, %struct.VLCtab { i8 60, i8 3 }], align 16
@CBPtab1 = internal unnamed_addr constant [64 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 58, i8 8 }, %struct.VLCtab { i8 54, i8 8 }, %struct.VLCtab { i8 46, i8 8 }, %struct.VLCtab { i8 30, i8 8 }, %struct.VLCtab { i8 57, i8 8 }, %struct.VLCtab { i8 53, i8 8 }, %struct.VLCtab { i8 45, i8 8 }, %struct.VLCtab { i8 29, i8 8 }, %struct.VLCtab { i8 38, i8 8 }, %struct.VLCtab { i8 26, i8 8 }, %struct.VLCtab { i8 37, i8 8 }, %struct.VLCtab { i8 25, i8 8 }, %struct.VLCtab { i8 43, i8 8 }, %struct.VLCtab { i8 23, i8 8 }, %struct.VLCtab { i8 51, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 42, i8 8 }, %struct.VLCtab { i8 22, i8 8 }, %struct.VLCtab { i8 50, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 41, i8 8 }, %struct.VLCtab { i8 21, i8 8 }, %struct.VLCtab { i8 49, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 35, i8 8 }, %struct.VLCtab { i8 19, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 7, i8 8 }, %struct.VLCtab { i8 34, i8 7 }, %struct.VLCtab { i8 34, i8 7 }, %struct.VLCtab { i8 18, i8 7 }, %struct.VLCtab { i8 18, i8 7 }, %struct.VLCtab { i8 10, i8 7 }, %struct.VLCtab { i8 10, i8 7 }, %struct.VLCtab { i8 6, i8 7 }, %struct.VLCtab { i8 6, i8 7 }, %struct.VLCtab { i8 33, i8 7 }, %struct.VLCtab { i8 33, i8 7 }, %struct.VLCtab { i8 17, i8 7 }, %struct.VLCtab { i8 17, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 5, i8 7 }, %struct.VLCtab { i8 5, i8 7 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 24, i8 6 }, %struct.VLCtab { i8 24, i8 6 }, %struct.VLCtab { i8 24, i8 6 }, %struct.VLCtab { i8 24, i8 6 }], align 16
@CBPtab2 = internal unnamed_addr constant [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 0, i8 9 }, %struct.VLCtab { i8 39, i8 9 }, %struct.VLCtab { i8 27, i8 9 }, %struct.VLCtab { i8 59, i8 9 }, %struct.VLCtab { i8 55, i8 9 }, %struct.VLCtab { i8 47, i8 9 }, %struct.VLCtab { i8 31, i8 9 }], align 16
@MBAtab1 = internal unnamed_addr constant [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 7, i8 5 }, %struct.VLCtab { i8 6, i8 5 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 2, i8 3 }, %struct.VLCtab { i8 2, i8 3 }, %struct.VLCtab { i8 2, i8 3 }, %struct.VLCtab { i8 2, i8 3 }], align 16
@MBAtab2 = internal unnamed_addr constant [104 x %struct.VLCtab] [%struct.VLCtab { i8 33, i8 11 }, %struct.VLCtab { i8 32, i8 11 }, %struct.VLCtab { i8 31, i8 11 }, %struct.VLCtab { i8 30, i8 11 }, %struct.VLCtab { i8 29, i8 11 }, %struct.VLCtab { i8 28, i8 11 }, %struct.VLCtab { i8 27, i8 11 }, %struct.VLCtab { i8 26, i8 11 }, %struct.VLCtab { i8 25, i8 11 }, %struct.VLCtab { i8 24, i8 11 }, %struct.VLCtab { i8 23, i8 11 }, %struct.VLCtab { i8 22, i8 11 }, %struct.VLCtab { i8 21, i8 10 }, %struct.VLCtab { i8 21, i8 10 }, %struct.VLCtab { i8 20, i8 10 }, %struct.VLCtab { i8 20, i8 10 }, %struct.VLCtab { i8 19, i8 10 }, %struct.VLCtab { i8 19, i8 10 }, %struct.VLCtab { i8 18, i8 10 }, %struct.VLCtab { i8 18, i8 10 }, %struct.VLCtab { i8 17, i8 10 }, %struct.VLCtab { i8 17, i8 10 }, %struct.VLCtab { i8 16, i8 10 }, %struct.VLCtab { i8 16, i8 10 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }], align 16
@DClumtab0 = internal unnamed_addr constant [32 x %struct.VLCtab] [%struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 6, i8 5 }, %struct.VLCtab { i8 -1, i8 0 }], align 16
@DClumtab1 = internal unnamed_addr constant [16 x %struct.VLCtab] [%struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 10, i8 9 }, %struct.VLCtab { i8 11, i8 9 }], align 16
@DCchromtab0 = internal unnamed_addr constant [32 x %struct.VLCtab] [%struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 5, i8 5 }, %struct.VLCtab { i8 -1, i8 0 }], align 16
@DCchromtab1 = internal unnamed_addr constant [32 x %struct.VLCtab] [%struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 9, i8 9 }, %struct.VLCtab { i8 9, i8 9 }, %struct.VLCtab { i8 10, i8 10 }, %struct.VLCtab { i8 11, i8 10 }], align 16
@PMBtab0 = internal unnamed_addr constant [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 8, i8 3 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 10, i8 1 }, %struct.VLCtab { i8 10, i8 1 }, %struct.VLCtab { i8 10, i8 1 }, %struct.VLCtab { i8 10, i8 1 }], align 16
@PMBtab1 = internal unnamed_addr constant [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 17, i8 6 }, %struct.VLCtab { i8 18, i8 5 }, %struct.VLCtab { i8 18, i8 5 }, %struct.VLCtab { i8 26, i8 5 }, %struct.VLCtab { i8 26, i8 5 }, %struct.VLCtab { i8 1, i8 5 }, %struct.VLCtab { i8 1, i8 5 }], align 16
@BMBtab0 = internal unnamed_addr constant [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 10, i8 4 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }], align 16
@BMBtab1 = internal unnamed_addr constant [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 17, i8 6 }, %struct.VLCtab { i8 22, i8 6 }, %struct.VLCtab { i8 26, i8 6 }, %struct.VLCtab { i8 30, i8 5 }, %struct.VLCtab { i8 30, i8 5 }, %struct.VLCtab { i8 1, i8 5 }, %struct.VLCtab { i8 1, i8 5 }], align 16
@spIMBtab = internal unnamed_addr constant [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 64, i8 4 }, %struct.VLCtab { i8 17, i8 4 }, %struct.VLCtab { i8 1, i8 4 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }], align 16
@spPMBtab0 = internal unnamed_addr constant [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 40, i8 4 }, %struct.VLCtab { i8 26, i8 3 }, %struct.VLCtab { i8 26, i8 3 }, %struct.VLCtab { i8 42, i8 3 }, %struct.VLCtab { i8 42, i8 3 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 58, i8 2 }, %struct.VLCtab { i8 58, i8 2 }, %struct.VLCtab { i8 58, i8 2 }, %struct.VLCtab { i8 58, i8 2 }], align 16
@spPMBtab1 = internal unnamed_addr constant [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 82, i8 7 }, %struct.VLCtab { i8 64, i8 7 }, %struct.VLCtab { i8 2, i8 7 }, %struct.VLCtab { i8 66, i8 7 }, %struct.VLCtab { i8 17, i8 7 }, %struct.VLCtab { i8 1, i8 7 }, %struct.VLCtab { i8 18, i8 6 }, %struct.VLCtab { i8 18, i8 6 }, %struct.VLCtab { i8 50, i8 6 }, %struct.VLCtab { i8 50, i8 6 }, %struct.VLCtab { i8 32, i8 6 }, %struct.VLCtab { i8 32, i8 6 }, %struct.VLCtab { i8 34, i8 6 }, %struct.VLCtab { i8 34, i8 6 }], align 16
@spBMBtab0 = internal unnamed_addr constant [14 x %struct.VLCtab] [%struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 10, i8 4 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }], align 16
@spBMBtab1 = internal unnamed_addr constant [12 x %struct.VLCtab] [%struct.VLCtab { i8 26, i8 7 }, %struct.VLCtab { i8 22, i8 7 }, %struct.VLCtab { i8 1, i8 7 }, %struct.VLCtab { i8 30, i8 7 }, %struct.VLCtab { i8 40, i8 6 }, %struct.VLCtab { i8 40, i8 6 }, %struct.VLCtab { i8 42, i8 6 }, %struct.VLCtab { i8 42, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 38, i8 6 }, %struct.VLCtab { i8 38, i8 6 }], align 16
@spBMBtab2 = internal unnamed_addr constant [8 x %struct.VLCtab] [%struct.VLCtab { i8 17, i8 8 }, %struct.VLCtab { i8 17, i8 8 }, %struct.VLCtab { i8 58, i8 8 }, %struct.VLCtab { i8 58, i8 8 }, %struct.VLCtab { i8 54, i8 9 }, %struct.VLCtab { i8 82, i8 9 }, %struct.VLCtab { i8 64, i8 9 }, %struct.VLCtab { i8 66, i8 9 }], align 16
@SNRMBtab = internal unnamed_addr constant [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 18, i8 2 }, %struct.VLCtab { i8 18, i8 2 }, %struct.VLCtab { i8 2, i8 1 }, %struct.VLCtab { i8 2, i8 1 }, %struct.VLCtab { i8 2, i8 1 }, %struct.VLCtab { i8 2, i8 1 }], align 16
@str.236 = private unnamed_addr constant [56 x i8] c"Get_macroblock_type(): unrecognized picture coding type\00", align 1
@str.12.235 = private unnamed_addr constant [29 x i8] c"Invalid macroblock_type code\00", align 1
@str.13.240 = private unnamed_addr constant [33 x i8] c"Invalid coded_block_pattern code\00", align 1
@str.14.243 = private unnamed_addr constant [42 x i8] c"Invalid macroblock_address_increment code\00", align 1
@top_field_first = internal global i32 0, align 4
@Frame_Store_Flag = internal global i32 0, align 4
@lower_layer_prediction_horizontal_size = internal global i32 0, align 4
@lower_layer_prediction_vertical_size = internal global i32 0, align 4
@progressive_frame = internal global i32 0, align 4
@lower_layer_progressive_frame = internal global i32 0, align 4
@llframe0 = internal global [3 x ptr] zeroinitializer, align 16
@llframe1 = internal global [3 x ptr] zeroinitializer, align 16
@lltmp = internal global ptr null, align 8
@current_frame = internal global [3 x ptr] zeroinitializer, align 16
@lower_layer_horizontal_offset = internal global i32 0, align 4
@lower_layer_vertical_offset = internal global i32 0, align 4
@horizontal_size = internal global i32 0, align 4
@vertical_size = internal global i32 0, align 4
@vertical_subsampling_factor_m = internal global i32 0, align 4
@vertical_subsampling_factor_n = internal global i32 0, align 4
@horizontal_subsampling_factor_m = internal global i32 0, align 4
@horizontal_subsampling_factor_n = internal global i32 0, align 4
@picture_structure = internal global i32 0, align 4
@Lower_Layer_Picture_Filename = internal global ptr null, align 8
@True_Framenum = internal global i32 0, align 4
@.str.278 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@__const.Read_Lower_Layer_Component_Fieldwise.ext = private unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c".Y\00", [3 x i8] c".U\00", [3 x i8] c".V\00"], align 1
@lower_layer_deinterlaced_field_select = internal global i32 0, align 4
@Clip = internal global ptr null, align 8
@ld = internal global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.282 = private unnamed_addr constant [24 x i8] c"Error in packet header\0A\00", align 1
@.str.2.283 = private unnamed_addr constant [43 x i8] c"Unexpected startcode %08x in system layer\0A\00", align 1
@System_Stream_Flag = internal global i32 0, align 4
@str.281 = private unnamed_addr constant [18 x i8] c"MPEG-2 PES packet\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal i32 @Get_Hdr() #0 {
  br label %1

1:                                                ; preds = %140, %0
  tail call void @next_start_code() #31
  %2 = tail call i32 @Get_Bits32() #32
  switch i32 %2, label %137 [
    i32 435, label %3
    i32 440, label %67
    i32 256, label %82
    i32 439, label %144
  ]

3:                                                ; preds = %1
  %4 = tail call i32 @Get_Bits(i32 noundef 12) #32
  store i32 %4, ptr @horizontal_size, align 4, !tbaa !7
  %5 = tail call i32 @Get_Bits(i32 noundef 12) #32
  store i32 %5, ptr @vertical_size, align 4, !tbaa !7
  %6 = tail call i32 @Get_Bits(i32 noundef 4) #32
  store i32 %6, ptr @aspect_ratio_information, align 4, !tbaa !7
  %7 = tail call i32 @Get_Bits(i32 noundef 4) #32
  store i32 %7, ptr @frame_rate_code, align 4, !tbaa !7
  %8 = tail call i32 @Get_Bits(i32 noundef 18) #32
  store i32 %8, ptr @bit_rate_value, align 4, !tbaa !7
  %9 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %10 = tail call i32 @Get_Bits(i32 noundef 10) #32
  store i32 %10, ptr @vbv_buffer_size, align 4, !tbaa !7
  %11 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %11, ptr @constrained_parameters_flag, align 4, !tbaa !7
  %12 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %13 = load ptr, ptr @ld, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.layer_data, ptr %13, i64 0, i32 12
  store i32 %12, ptr %14, align 8, !tbaa !13
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %16, %3
  %17 = phi i64 [ %24, %16 ], [ 0, %3 ]
  %18 = tail call i32 @Get_Bits(i32 noundef 8) #32
  %19 = load ptr, ptr @ld, align 8, !tbaa !11
  %20 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %17
  %21 = load i8, ptr %20, align 1, !tbaa !15
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds %struct.layer_data, ptr %19, i64 0, i32 8, i64 %22
  store i32 %18, ptr %23, align 4, !tbaa !7
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, 64
  br i1 %25, label %34, label %16, !llvm.loop !16

26:                                               ; preds = %26, %3
  %27 = phi i64 [ %32, %26 ], [ 0, %3 ]
  %28 = getelementptr inbounds [64 x i8], ptr @default_intra_quantizer_matrix, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !15
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.layer_data, ptr %13, i64 0, i32 8, i64 %27
  store i32 %30, ptr %31, align 4, !tbaa !7
  %32 = add nuw nsw i64 %27, 1
  %33 = icmp eq i64 %32, 64
  br i1 %33, label %34, label %26, !llvm.loop !18

34:                                               ; preds = %26, %16
  %35 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %36 = load ptr, ptr @ld, align 8, !tbaa !11
  %37 = getelementptr inbounds %struct.layer_data, ptr %36, i64 0, i32 13
  store i32 %35, ptr %37, align 4, !tbaa !19
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %39, %34
  %40 = phi i64 [ %42, %39 ], [ 0, %34 ]
  %41 = getelementptr inbounds %struct.layer_data, ptr %36, i64 0, i32 9, i64 %40
  store <4 x i32> <i32 16, i32 16, i32 16, i32 16>, ptr %41, align 4, !tbaa !7
  %42 = add nuw i64 %40, 4
  %43 = icmp eq i64 %42, 64
  br i1 %43, label %54, label %39, !llvm.loop !20

44:                                               ; preds = %44, %34
  %45 = phi i64 [ %52, %44 ], [ 0, %34 ]
  %46 = tail call i32 @Get_Bits(i32 noundef 8) #32
  %47 = load ptr, ptr @ld, align 8, !tbaa !11
  %48 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %45
  %49 = load i8, ptr %48, align 1, !tbaa !15
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds %struct.layer_data, ptr %47, i64 0, i32 9, i64 %50
  store i32 %46, ptr %51, align 4, !tbaa !7
  %52 = add nuw nsw i64 %45, 1
  %53 = icmp eq i64 %52, 64
  br i1 %53, label %54, label %44, !llvm.loop !23

54:                                               ; preds = %44, %39
  %55 = phi ptr [ %36, %39 ], [ %47, %44 ]
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i64 [ 0, %54 ], [ %64, %56 ]
  %58 = getelementptr inbounds %struct.layer_data, ptr %55, i64 0, i32 8, i64 %57
  %59 = load <4 x i32>, ptr %58, align 4, !tbaa !7
  %60 = getelementptr inbounds %struct.layer_data, ptr %55, i64 0, i32 10, i64 %57
  store <4 x i32> %59, ptr %60, align 4, !tbaa !7
  %61 = getelementptr inbounds %struct.layer_data, ptr %55, i64 0, i32 9, i64 %57
  %62 = load <4 x i32>, ptr %61, align 4, !tbaa !7
  %63 = getelementptr inbounds %struct.layer_data, ptr %55, i64 0, i32 11, i64 %57
  store <4 x i32> %62, ptr %63, align 4, !tbaa !7
  %64 = add nuw i64 %57, 4
  %65 = icmp eq i64 %64, 64
  br i1 %65, label %66, label %56, !llvm.loop !24

66:                                               ; preds = %56
  tail call fastcc void @extension_and_user_data() #31
  br label %140

67:                                               ; preds = %1
  %68 = load ptr, ptr @ld, align 8, !tbaa !11
  %69 = icmp eq ptr %68, @base
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, ptr @True_Framenum_max, align 4, !tbaa !7
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr @Temporal_Reference_Base, align 4, !tbaa !7
  store i1 true, ptr @Temporal_Reference_GOP_Reset, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %74, ptr @drop_flag, align 4, !tbaa !7
  %75 = tail call i32 @Get_Bits(i32 noundef 5) #32
  store i32 %75, ptr @hour, align 4, !tbaa !7
  %76 = tail call i32 @Get_Bits(i32 noundef 6) #32
  store i32 %76, ptr @minute, align 4, !tbaa !7
  %77 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %78 = tail call i32 @Get_Bits(i32 noundef 6) #32
  store i32 %78, ptr @sec, align 4, !tbaa !7
  %79 = tail call i32 @Get_Bits(i32 noundef 6) #32
  store i32 %79, ptr @frame, align 4, !tbaa !7
  %80 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %80, ptr @closed_gop, align 4, !tbaa !7
  %81 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %81, ptr @broken_link, align 4, !tbaa !7
  tail call fastcc void @extension_and_user_data() #31
  br label %140

82:                                               ; preds = %1
  %83 = load ptr, ptr @ld, align 8, !tbaa !11
  %84 = getelementptr inbounds %struct.layer_data, ptr %83, i64 0, i32 20
  store i32 0, ptr %84, align 8, !tbaa !25
  %85 = tail call i32 @Get_Bits(i32 noundef 10) #32
  store i32 %85, ptr @temporal_reference, align 4, !tbaa !7
  %86 = tail call i32 @Get_Bits(i32 noundef 3) #32
  store i32 %86, ptr @picture_coding_type, align 4, !tbaa !7
  %87 = tail call i32 @Get_Bits(i32 noundef 16) #32
  store i32 %87, ptr @vbv_delay, align 4, !tbaa !7
  %88 = load i32, ptr @picture_coding_type, align 4
  %89 = and i32 %88, -2
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %92, ptr @full_pel_forward_vector, align 4, !tbaa !7
  %93 = tail call i32 @Get_Bits(i32 noundef 3) #32
  store i32 %93, ptr @forward_f_code, align 4, !tbaa !7
  %94 = load i32, ptr @picture_coding_type, align 4, !tbaa !7
  br label %95

95:                                               ; preds = %91, %82
  %96 = phi i32 [ %88, %82 ], [ %94, %91 ]
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %99, ptr @full_pel_backward_vector, align 4, !tbaa !7
  %100 = tail call i32 @Get_Bits(i32 noundef 3) #32
  store i32 %100, ptr @backward_f_code, align 4, !tbaa !7
  br label %101

101:                                              ; preds = %98, %95
  tail call fastcc void @extra_bit_information() #31
  tail call fastcc void @extension_and_user_data() #31
  %102 = load ptr, ptr @ld, align 8, !tbaa !11
  %103 = icmp eq ptr %102, @base
  br i1 %103, label %104, label %144

104:                                              ; preds = %101
  %105 = load i32, ptr @picture_coding_type, align 4, !tbaa !7
  %106 = icmp eq i32 %105, 3
  %107 = load i32, ptr @temporal_reference, align 4, !tbaa !7
  br i1 %106, label %108, label %111

108:                                              ; preds = %104
  %109 = load i1, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  %110 = load i32, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  br label %126

111:                                              ; preds = %104
  %112 = load i32, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %113 = icmp eq i32 %107, %112
  %114 = load i1, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br i1 %113, label %126, label %115

115:                                              ; preds = %111
  br i1 %114, label %116, label %119

116:                                              ; preds = %115
  %117 = load i32, ptr @Temporal_Reference_Base, align 4, !tbaa !7
  %118 = add nsw i32 %117, 1024
  store i32 %118, ptr @Temporal_Reference_Base, align 4, !tbaa !7
  store i1 false, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br label %119

119:                                              ; preds = %116, %115
  %120 = icmp sge i32 %107, %112
  %121 = load i1, ptr @Temporal_Reference_GOP_Reset, align 4
  %122 = select i1 %120, i1 true, i1 %121
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  store i1 true, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br label %124

124:                                              ; preds = %123, %119
  %125 = xor i1 %122, true
  store i32 %107, ptr @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4, !tbaa !7
  store i1 false, ptr @Temporal_Reference_GOP_Reset, align 4
  br label %126

126:                                              ; preds = %124, %111, %108
  %127 = phi i32 [ %110, %108 ], [ %107, %124 ], [ %107, %111 ]
  %128 = phi i1 [ %109, %108 ], [ %125, %124 ], [ %114, %111 ]
  %129 = load i32, ptr @Temporal_Reference_Base, align 4, !tbaa !7
  %130 = add nsw i32 %129, %107
  %131 = icmp sle i32 %107, %127
  %132 = select i1 %128, i1 %131, i1 false
  %133 = add nsw i32 %130, 1024
  %134 = select i1 %132, i32 %133, i32 %130
  store i32 %134, ptr @True_Framenum, align 4, !tbaa !7
  %135 = load i32, ptr @True_Framenum_max, align 4
  %136 = tail call i32 @llvm.smax.i32(i32 %134, i32 %135)
  store i32 %136, ptr @True_Framenum_max, align 4, !tbaa !7
  br label %144

137:                                              ; preds = %1
  %138 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %141, %137, %73, %66
  br label %1

141:                                              ; preds = %137
  %142 = load ptr, ptr @stderr, align 8, !tbaa !11
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef nonnull @.str, i32 noundef %2) #33
  br label %140

144:                                              ; preds = %126, %101, %1
  %145 = phi i32 [ 1, %101 ], [ 1, %126 ], [ 0, %1 ]
  ret i32 %145
}

; Function Attrs: nounwind optsize uwtable
define internal void @next_start_code() #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !26
  %4 = and i32 %3, 7
  br label %5

5:                                                ; preds = %5, %0
  %6 = phi i32 [ %4, %0 ], [ 8, %5 ]
  tail call void @Flush_Buffer(i32 noundef %6) #32
  %7 = tail call i32 @Show_Bits(i32 noundef 24) #32
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %5, !llvm.loop !27

9:                                                ; preds = %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @extension_and_user_data() unnamed_addr #0 {
  br label %1

1:                                                ; preds = %276, %0
  tail call void @next_start_code() #31
  %2 = tail call i32 @Show_Bits(i32 noundef 32) #32
  switch i32 %2, label %277 [
    i32 437, label %3
    i32 434, label %275
  ]

3:                                                ; preds = %1
  tail call void @Flush_Buffer32() #32
  %4 = tail call i32 @Get_Bits(i32 noundef 4) #32
  switch i32 %4, label %272 [
    i32 1, label %5
    i32 2, label %59
    i32 3, label %71
    i32 5, label %137
    i32 7, label %162
    i32 8, label %191
    i32 9, label %219
    i32 10, label %236
    i32 4, label %237
  ]

5:                                                ; preds = %3
  %6 = load ptr, ptr @ld, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.layer_data, ptr %6, i64 0, i32 16
  store i32 1, ptr %7, align 8, !tbaa !28
  %8 = getelementptr inbounds %struct.layer_data, ptr %6, i64 0, i32 17
  store i32 0, ptr %8, align 4, !tbaa !29
  store i32 0, ptr @layer_id, align 4, !tbaa !7
  %9 = tail call i32 @Get_Bits(i32 noundef 8) #32
  store i32 %9, ptr @profile_and_level_indication, align 4, !tbaa !7
  %10 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %10, ptr @progressive_sequence, align 4, !tbaa !7
  %11 = tail call i32 @Get_Bits(i32 noundef 2) #32
  store i32 %11, ptr @chroma_format, align 4, !tbaa !7
  %12 = tail call i32 @Get_Bits(i32 noundef 2) #32
  %13 = tail call i32 @Get_Bits(i32 noundef 2) #32
  %14 = tail call i32 @Get_Bits(i32 noundef 12) #32
  %15 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %16 = tail call i32 @Get_Bits(i32 noundef 8) #32
  %17 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %17, ptr @low_delay, align 4, !tbaa !7
  %18 = tail call i32 @Get_Bits(i32 noundef 2) #32
  store i32 %18, ptr @frame_rate_extension_n, align 4, !tbaa !7
  %19 = tail call i32 @Get_Bits(i32 noundef 5) #32
  store i32 %19, ptr @frame_rate_extension_d, align 4, !tbaa !7
  %20 = load i32, ptr @frame_rate_code, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [16 x double], ptr @frame_rate_Table, i64 0, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !30
  %24 = load i32, ptr @frame_rate_extension_n, align 4, !tbaa !7
  %25 = add nsw i32 %24, 1
  %26 = add nsw i32 %19, 1
  %27 = sdiv i32 %25, %26
  %28 = sitofp i32 %27 to double
  %29 = fmul double %23, %28
  store double %29, ptr @frame_rate, align 8, !tbaa !30
  %30 = load i32, ptr @profile_and_level_indication, align 4, !tbaa !7
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %5
  %34 = and i32 %30, 15
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  store i32 133, ptr @profile, align 4, !tbaa !7
  br label %40

37:                                               ; preds = %5
  %38 = ashr i32 %30, 4
  store i32 %38, ptr @profile, align 4, !tbaa !7
  %39 = and i32 %30, 15
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi i32 [ 8, %36 ], [ %39, %37 ]
  store i32 %41, ptr @level, align 4, !tbaa !7
  br label %42

42:                                               ; preds = %40, %33
  %43 = shl i32 %12, 12
  %44 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  %45 = and i32 %44, 4095
  %46 = or i32 %45, %43
  store i32 %46, ptr @horizontal_size, align 4, !tbaa !7
  %47 = shl i32 %13, 12
  %48 = load i32, ptr @vertical_size, align 4, !tbaa !7
  %49 = and i32 %48, 4095
  %50 = or i32 %49, %47
  store i32 %50, ptr @vertical_size, align 4, !tbaa !7
  %51 = shl i32 %14, 18
  %52 = load i32, ptr @bit_rate_value, align 4, !tbaa !7
  %53 = add nsw i32 %52, %51
  store i32 %53, ptr @bit_rate_value, align 4, !tbaa !7
  %54 = sitofp i32 %53 to double
  %55 = fmul double %54, 4.000000e+02
  store double %55, ptr @bit_rate, align 8, !tbaa !30
  %56 = shl i32 %16, 10
  %57 = load i32, ptr @vbv_buffer_size, align 4, !tbaa !7
  %58 = add nsw i32 %57, %56
  store i32 %58, ptr @vbv_buffer_size, align 4, !tbaa !7
  br label %276

59:                                               ; preds = %3
  %60 = tail call i32 @Get_Bits(i32 noundef 3) #32
  store i32 %60, ptr @video_format, align 4, !tbaa !7
  %61 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %61, ptr @color_description, align 4, !tbaa !7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = tail call i32 @Get_Bits(i32 noundef 8) #32
  store i32 %64, ptr @color_primaries, align 4, !tbaa !7
  %65 = tail call i32 @Get_Bits(i32 noundef 8) #32
  store i32 %65, ptr @transfer_characteristics, align 4, !tbaa !7
  %66 = tail call i32 @Get_Bits(i32 noundef 8) #32
  store i32 %66, ptr @matrix_coefficients, align 4, !tbaa !7
  br label %67

67:                                               ; preds = %63, %59
  %68 = tail call i32 @Get_Bits(i32 noundef 14) #32
  store i32 %68, ptr @display_horizontal_size, align 4, !tbaa !7
  %69 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %70 = tail call i32 @Get_Bits(i32 noundef 14) #32
  store i32 %70, ptr @display_vertical_size, align 4, !tbaa !7
  br label %276

71:                                               ; preds = %3
  %72 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %73 = load ptr, ptr @ld, align 8, !tbaa !11
  %74 = getelementptr inbounds %struct.layer_data, ptr %73, i64 0, i32 12
  store i32 %72, ptr %74, align 8, !tbaa !13
  %75 = icmp eq i32 %72, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %76, %71
  %77 = phi i64 [ %87, %76 ], [ 0, %71 ]
  %78 = tail call i32 @Get_Bits(i32 noundef 8) #32
  %79 = load ptr, ptr @ld, align 8, !tbaa !11
  %80 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %77
  %81 = load i8, ptr %80, align 1, !tbaa !15
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds %struct.layer_data, ptr %79, i64 0, i32 8, i64 %82
  store i32 %78, ptr %83, align 4, !tbaa !7
  %84 = load i8, ptr %80, align 1, !tbaa !15
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds %struct.layer_data, ptr %79, i64 0, i32 10, i64 %85
  store i32 %78, ptr %86, align 4, !tbaa !7
  %87 = add nuw nsw i64 %77, 1
  %88 = icmp eq i64 %87, 64
  br i1 %88, label %89, label %76, !llvm.loop !32

89:                                               ; preds = %76, %71
  %90 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %91 = load ptr, ptr @ld, align 8, !tbaa !11
  %92 = getelementptr inbounds %struct.layer_data, ptr %91, i64 0, i32 13
  store i32 %90, ptr %92, align 4, !tbaa !19
  %93 = icmp eq i32 %90, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %94, %89
  %95 = phi i64 [ %105, %94 ], [ 0, %89 ]
  %96 = tail call i32 @Get_Bits(i32 noundef 8) #32
  %97 = load ptr, ptr @ld, align 8, !tbaa !11
  %98 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %95
  %99 = load i8, ptr %98, align 1, !tbaa !15
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds %struct.layer_data, ptr %97, i64 0, i32 9, i64 %100
  store i32 %96, ptr %101, align 4, !tbaa !7
  %102 = load i8, ptr %98, align 1, !tbaa !15
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds %struct.layer_data, ptr %97, i64 0, i32 11, i64 %103
  store i32 %96, ptr %104, align 4, !tbaa !7
  %105 = add nuw nsw i64 %95, 1
  %106 = icmp eq i64 %105, 64
  br i1 %106, label %107, label %94, !llvm.loop !33

107:                                              ; preds = %94, %89
  %108 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %109 = load ptr, ptr @ld, align 8, !tbaa !11
  %110 = getelementptr inbounds %struct.layer_data, ptr %109, i64 0, i32 14
  store i32 %108, ptr %110, align 8, !tbaa !34
  %111 = icmp eq i32 %108, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %112, %107
  %113 = phi i64 [ %120, %112 ], [ 0, %107 ]
  %114 = tail call i32 @Get_Bits(i32 noundef 8) #32
  %115 = load ptr, ptr @ld, align 8, !tbaa !11
  %116 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %113
  %117 = load i8, ptr %116, align 1, !tbaa !15
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds %struct.layer_data, ptr %115, i64 0, i32 10, i64 %118
  store i32 %114, ptr %119, align 4, !tbaa !7
  %120 = add nuw nsw i64 %113, 1
  %121 = icmp eq i64 %120, 64
  br i1 %121, label %122, label %112, !llvm.loop !35

122:                                              ; preds = %112, %107
  %123 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %124 = load ptr, ptr @ld, align 8, !tbaa !11
  %125 = getelementptr inbounds %struct.layer_data, ptr %124, i64 0, i32 15
  store i32 %123, ptr %125, align 4, !tbaa !36
  %126 = icmp eq i32 %123, 0
  br i1 %126, label %276, label %127

127:                                              ; preds = %127, %122
  %128 = phi i64 [ %135, %127 ], [ 0, %122 ]
  %129 = tail call i32 @Get_Bits(i32 noundef 8) #32
  %130 = load ptr, ptr @ld, align 8, !tbaa !11
  %131 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %128
  %132 = load i8, ptr %131, align 1, !tbaa !15
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds %struct.layer_data, ptr %130, i64 0, i32 11, i64 %133
  store i32 %129, ptr %134, align 4, !tbaa !7
  %135 = add nuw nsw i64 %128, 1
  %136 = icmp eq i64 %135, 64
  br i1 %136, label %276, label %127, !llvm.loop !37

137:                                              ; preds = %3
  %138 = tail call i32 @Get_Bits(i32 noundef 2) #32
  %139 = add i32 %138, 1
  %140 = load ptr, ptr @ld, align 8, !tbaa !11
  %141 = getelementptr inbounds %struct.layer_data, ptr %140, i64 0, i32 17
  store i32 %139, ptr %141, align 4, !tbaa !29
  %142 = tail call i32 @Get_Bits(i32 noundef 4) #32
  store i32 %142, ptr @layer_id, align 4, !tbaa !7
  %143 = load ptr, ptr @ld, align 8, !tbaa !11
  %144 = getelementptr inbounds %struct.layer_data, ptr %143, i64 0, i32 17
  %145 = load i32, ptr %144, align 4, !tbaa !29
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %158

147:                                              ; preds = %137
  %148 = tail call i32 @Get_Bits(i32 noundef 14) #32
  store i32 %148, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !7
  %149 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %150 = tail call i32 @Get_Bits(i32 noundef 14) #32
  store i32 %150, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !7
  %151 = tail call i32 @Get_Bits(i32 noundef 5) #32
  store i32 %151, ptr @horizontal_subsampling_factor_m, align 4, !tbaa !7
  %152 = tail call i32 @Get_Bits(i32 noundef 5) #32
  store i32 %152, ptr @horizontal_subsampling_factor_n, align 4, !tbaa !7
  %153 = tail call i32 @Get_Bits(i32 noundef 5) #32
  store i32 %153, ptr @vertical_subsampling_factor_m, align 4, !tbaa !7
  %154 = tail call i32 @Get_Bits(i32 noundef 5) #32
  store i32 %154, ptr @vertical_subsampling_factor_n, align 4, !tbaa !7
  %155 = load ptr, ptr @ld, align 8, !tbaa !11
  %156 = getelementptr inbounds %struct.layer_data, ptr %155, i64 0, i32 17
  %157 = load i32, ptr %156, align 4, !tbaa !29
  br label %158

158:                                              ; preds = %147, %137
  %159 = phi i32 [ %157, %147 ], [ %145, %137 ]
  %160 = icmp eq i32 %159, 4
  br i1 %160, label %161, label %276

161:                                              ; preds = %158
  tail call void @Error(ptr noundef nonnull @.str.6) #32
  br label %276

162:                                              ; preds = %3
  %163 = load i32, ptr @progressive_sequence, align 4, !tbaa !7
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %162
  %166 = load i32, ptr @repeat_first_field, align 4, !tbaa !7
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %179, label %168

168:                                              ; preds = %165
  %169 = load i32, ptr @top_field_first, align 4, !tbaa !7
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i64 2, i64 3
  br label %179

172:                                              ; preds = %162
  %173 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %174 = icmp eq i32 %173, 3
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, ptr @repeat_first_field, align 4, !tbaa !7
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, i64 2, i64 3
  br label %179

179:                                              ; preds = %175, %172, %168, %165
  %180 = phi i64 [ %171, %168 ], [ 1, %165 ], [ 1, %172 ], [ %178, %175 ]
  br label %181

181:                                              ; preds = %181, %179
  %182 = phi i64 [ 0, %179 ], [ %189, %181 ]
  %183 = tail call i32 @Get_Bits(i32 noundef 16) #32
  %184 = getelementptr inbounds [3 x i32], ptr @frame_center_horizontal_offset, i64 0, i64 %182
  store i32 %183, ptr %184, align 4, !tbaa !7
  %185 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %186 = tail call i32 @Get_Bits(i32 noundef 16) #32
  %187 = getelementptr inbounds [3 x i32], ptr @frame_center_vertical_offset, i64 0, i64 %182
  store i32 %186, ptr %187, align 4, !tbaa !7
  %188 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %189 = add nuw nsw i64 %182, 1
  %190 = icmp eq i64 %189, %180
  br i1 %190, label %276, label %181, !llvm.loop !38

191:                                              ; preds = %3
  %192 = tail call i32 @Get_Bits(i32 noundef 4) #32
  store i32 %192, ptr @f_code, align 16, !tbaa !7
  %193 = tail call i32 @Get_Bits(i32 noundef 4) #32
  store i32 %193, ptr getelementptr inbounds ([2 x [2 x i32]], ptr @f_code, i64 0, i64 0, i64 1), align 4, !tbaa !7
  %194 = tail call i32 @Get_Bits(i32 noundef 4) #32
  store i32 %194, ptr getelementptr inbounds ([2 x [2 x i32]], ptr @f_code, i64 0, i64 1), align 8, !tbaa !7
  %195 = tail call i32 @Get_Bits(i32 noundef 4) #32
  store i32 %195, ptr getelementptr inbounds ([2 x [2 x i32]], ptr @f_code, i64 0, i64 1, i64 1), align 4, !tbaa !7
  %196 = tail call i32 @Get_Bits(i32 noundef 2) #32
  store i32 %196, ptr @intra_dc_precision, align 4, !tbaa !7
  %197 = tail call i32 @Get_Bits(i32 noundef 2) #32
  store i32 %197, ptr @picture_structure, align 4, !tbaa !7
  %198 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %198, ptr @top_field_first, align 4, !tbaa !7
  %199 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %199, ptr @frame_pred_frame_dct, align 4, !tbaa !7
  %200 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %200, ptr @concealment_motion_vectors, align 4, !tbaa !7
  %201 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %202 = load ptr, ptr @ld, align 8, !tbaa !11
  %203 = getelementptr inbounds %struct.layer_data, ptr %202, i64 0, i32 18
  store i32 %201, ptr %203, align 8, !tbaa !39
  %204 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %204, ptr @intra_vlc_format, align 4, !tbaa !7
  %205 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %206 = load ptr, ptr @ld, align 8, !tbaa !11
  %207 = getelementptr inbounds %struct.layer_data, ptr %206, i64 0, i32 19
  store i32 %205, ptr %207, align 4, !tbaa !40
  %208 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %208, ptr @repeat_first_field, align 4, !tbaa !7
  %209 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %209, ptr @chroma_420_type, align 4, !tbaa !7
  %210 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %210, ptr @progressive_frame, align 4, !tbaa !7
  %211 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %211, ptr @composite_display_flag, align 4, !tbaa !7
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %276, label %213

213:                                              ; preds = %191
  %214 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %214, ptr @v_axis, align 4, !tbaa !7
  %215 = tail call i32 @Get_Bits(i32 noundef 3) #32
  store i32 %215, ptr @field_sequence, align 4, !tbaa !7
  %216 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %216, ptr @sub_carrier, align 4, !tbaa !7
  %217 = tail call i32 @Get_Bits(i32 noundef 7) #32
  store i32 %217, ptr @burst_amplitude, align 4, !tbaa !7
  %218 = tail call i32 @Get_Bits(i32 noundef 8) #32
  store i32 %218, ptr @sub_carrier_phase, align 4, !tbaa !7
  br label %276

219:                                              ; preds = %3
  %220 = load ptr, ptr @ld, align 8, !tbaa !11
  %221 = getelementptr inbounds %struct.layer_data, ptr %220, i64 0, i32 20
  store i32 1, ptr %221, align 8, !tbaa !25
  %222 = tail call i32 @Get_Bits(i32 noundef 10) #32
  store i32 %222, ptr @lower_layer_temporal_reference, align 4, !tbaa !7
  %223 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %224 = tail call i32 @Get_Bits(i32 noundef 15) #32
  %225 = icmp sgt i32 %224, 16383
  %226 = add nsw i32 %224, -32768
  %227 = select i1 %225, i32 %226, i32 %224
  store i32 %227, ptr @lower_layer_horizontal_offset, align 4, !tbaa !7
  %228 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %229 = tail call i32 @Get_Bits(i32 noundef 15) #32
  %230 = icmp sgt i32 %229, 16383
  %231 = add nsw i32 %229, -32768
  %232 = select i1 %230, i32 %231, i32 %229
  store i32 %232, ptr @lower_layer_vertical_offset, align 4, !tbaa !7
  %233 = tail call i32 @Get_Bits(i32 noundef 2) #32
  store i32 %233, ptr @spatial_temporal_weight_code_table_index, align 4, !tbaa !7
  %234 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %234, ptr @lower_layer_progressive_frame, align 4, !tbaa !7
  %235 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %235, ptr @lower_layer_deinterlaced_field_select, align 4, !tbaa !7
  br label %276

236:                                              ; preds = %3
  tail call void @Error(ptr noundef nonnull @.str.11) #32
  br label %276

237:                                              ; preds = %3
  %238 = load ptr, ptr @ld, align 8, !tbaa !11
  %239 = getelementptr inbounds %struct.layer_data, ptr %238, i64 0, i32 7
  %240 = load i32, ptr %239, align 4, !tbaa !41
  %241 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %241, ptr @copyright_flag, align 4, !tbaa !7
  %242 = tail call i32 @Get_Bits(i32 noundef 8) #32
  store i32 %242, ptr @copyright_identifier, align 4, !tbaa !7
  %243 = tail call i32 @Get_Bits(i32 noundef 1) #32
  store i32 %243, ptr @original_or_copy, align 4, !tbaa !7
  %244 = tail call i32 @Get_Bits(i32 noundef 7) #32
  %245 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %246 = tail call i32 @Get_Bits(i32 noundef 20) #32
  store i32 %246, ptr @copyright_number_1, align 4, !tbaa !7
  %247 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %248 = tail call i32 @Get_Bits(i32 noundef 22) #32
  store i32 %248, ptr @copyright_number_2, align 4, !tbaa !7
  %249 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %250 = tail call i32 @Get_Bits(i32 noundef 22) #32
  store i32 %250, ptr @copyright_number_3, align 4, !tbaa !7
  %251 = load i32, ptr @Verbose_Flag, align 4, !tbaa !7
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %276

253:                                              ; preds = %237
  %254 = ashr i32 %240, 3
  %255 = add nsw i32 %254, -4
  %256 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %255) #31
  %257 = load i32, ptr @Verbose_Flag, align 4, !tbaa !7
  %258 = icmp sgt i32 %257, 1
  br i1 %258, label %259, label %276

259:                                              ; preds = %253
  %260 = load i32, ptr @copyright_flag, align 4, !tbaa !7
  %261 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %260) #31
  %262 = load i32, ptr @copyright_identifier, align 4, !tbaa !7
  %263 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %262) #31
  %264 = load i32, ptr @original_or_copy, align 4, !tbaa !7
  %265 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %264) #31
  %266 = load i32, ptr @copyright_number_1, align 4, !tbaa !7
  %267 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %266) #31
  %268 = load i32, ptr @copyright_number_2, align 4, !tbaa !7
  %269 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %268) #31
  %270 = load i32, ptr @copyright_number_3, align 4, !tbaa !7
  %271 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %270) #31
  br label %276

272:                                              ; preds = %3
  %273 = load ptr, ptr @stderr, align 8, !tbaa !11
  %274 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef nonnull @.str.2, i32 noundef %4) #33
  br label %276

275:                                              ; preds = %1
  tail call void @Flush_Buffer32() #32
  br label %276

276:                                              ; preds = %275, %272, %259, %253, %237, %236, %219, %213, %191, %181, %161, %158, %127, %122, %67, %42
  br label %1, !llvm.loop !42

277:                                              ; preds = %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @extra_bit_information() unnamed_addr #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = tail call i32 @Get_Bits1() #32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @Flush_Buffer(i32 noundef 8) #32
  br label %1, !llvm.loop !43

5:                                                ; preds = %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal i32 @slice_header() #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !28
  %4 = icmp ne i32 %3, 0
  %5 = load i32, ptr @vertical_size, align 4
  %6 = icmp sgt i32 %5, 2800
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = tail call i32 @Get_Bits(i32 noundef 3) #32
  %10 = load ptr, ptr @ld, align 8, !tbaa !11
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi ptr [ %10, %8 ], [ %1, %0 ]
  %13 = phi i32 [ %9, %8 ], [ 0, %0 ]
  %14 = getelementptr inbounds %struct.layer_data, ptr %12, i64 0, i32 17
  %15 = load i32, ptr %14, align 4, !tbaa !29
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = tail call i32 @Get_Bits(i32 noundef 7) #32
  %19 = load ptr, ptr @ld, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.layer_data, ptr %19, i64 0, i32 21
  store i32 %18, ptr %20, align 4, !tbaa !44
  br label %21

21:                                               ; preds = %17, %11
  %22 = tail call i32 @Get_Bits(i32 noundef 5) #32
  %23 = load ptr, ptr @ld, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.layer_data, ptr %23, i64 0, i32 16
  %25 = load i32, ptr %24, align 8, !tbaa !28
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.layer_data, ptr %23, i64 0, i32 18
  %29 = load i32, ptr %28, align 8, !tbaa !39
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = sext i32 %22 to i64
  %33 = getelementptr inbounds [32 x i8], ptr @Non_Linear_quantizer_scale, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !15
  %35 = zext i8 %34 to i32
  br label %38

36:                                               ; preds = %27
  %37 = shl i32 %22, 1
  br label %38

38:                                               ; preds = %36, %31, %21
  %39 = phi i32 [ %35, %31 ], [ %37, %36 ], [ %22, %21 ]
  %40 = getelementptr inbounds %struct.layer_data, ptr %23, i64 0, i32 22
  store i32 %39, ptr %40, align 8, !tbaa !45
  %41 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %45 = load ptr, ptr @ld, align 8, !tbaa !11
  %46 = getelementptr inbounds %struct.layer_data, ptr %45, i64 0, i32 23
  store i32 %44, ptr %46, align 4, !tbaa !46
  %47 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %48 = tail call i32 @Get_Bits(i32 noundef 6) #32
  tail call fastcc void @extra_bit_information() #31
  br label %52

49:                                               ; preds = %38
  %50 = load ptr, ptr @ld, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct.layer_data, ptr %50, i64 0, i32 23
  store i32 0, ptr %51, align 4, !tbaa !46
  br label %52

52:                                               ; preds = %49, %43
  ret i32 %13
}

; Function Attrs: nounwind optsize uwtable
define internal void @marker_bit(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @Get_Bits(i32 noundef 1) #32
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @Fast_IDCT(ptr nocapture noundef %0) #3 {
  br label %4

2:                                                ; preds = %104
  %3 = load ptr, ptr @iclp, align 8
  br label %113

4:                                                ; preds = %104, %1
  %5 = phi i64 [ 0, %1 ], [ %111, %104 ]
  %6 = shl nuw nsw i64 %5, 3
  %7 = getelementptr inbounds i16, ptr %0, i64 %6
  %8 = getelementptr inbounds i16, ptr %7, i64 4
  %9 = load i16, ptr %8, align 2, !tbaa !47
  %10 = sext i16 %9 to i32
  %11 = shl nsw i32 %10, 11
  %12 = getelementptr inbounds i16, ptr %7, i64 6
  %13 = load i16, ptr %12, align 2, !tbaa !47
  %14 = sext i16 %13 to i32
  %15 = or i32 %11, %14
  %16 = getelementptr inbounds i16, ptr %7, i64 2
  %17 = load i16, ptr %16, align 2, !tbaa !47
  %18 = sext i16 %17 to i32
  %19 = or i32 %15, %18
  %20 = getelementptr inbounds i16, ptr %7, i64 1
  %21 = load i16, ptr %20, align 2, !tbaa !47
  %22 = sext i16 %21 to i32
  %23 = or i32 %19, %22
  %24 = getelementptr inbounds i16, ptr %7, i64 7
  %25 = load i16, ptr %24, align 2, !tbaa !47
  %26 = sext i16 %25 to i32
  %27 = or i32 %23, %26
  %28 = getelementptr inbounds i16, ptr %7, i64 5
  %29 = load i16, ptr %28, align 2, !tbaa !47
  %30 = sext i16 %29 to i32
  %31 = or i32 %27, %30
  %32 = getelementptr inbounds i16, ptr %7, i64 3
  %33 = load i16, ptr %32, align 2, !tbaa !47
  %34 = sext i16 %33 to i32
  %35 = or i32 %31, %34
  %36 = icmp eq i32 %35, 0
  %37 = load i16, ptr %7, align 2, !tbaa !47
  br i1 %36, label %38, label %40

38:                                               ; preds = %4
  %39 = shl i16 %37, 3
  store i16 %39, ptr %24, align 2, !tbaa !47
  store i16 %39, ptr %12, align 2, !tbaa !47
  br label %104

40:                                               ; preds = %4
  %41 = sext i16 %37 to i32
  %42 = shl nsw i32 %41, 11
  %43 = or i32 %42, 128
  %44 = add nsw i32 %26, %22
  %45 = mul nsw i32 %44, 565
  %46 = mul nsw i32 %22, 2276
  %47 = add nsw i32 %45, %46
  %48 = mul nsw i32 %26, -3406
  %49 = add nsw i32 %45, %48
  %50 = add nsw i32 %34, %30
  %51 = mul nsw i32 %50, 2408
  %52 = mul nsw i32 %30, -799
  %53 = add nsw i32 %51, %52
  %54 = mul nsw i32 %34, -4017
  %55 = add nsw i32 %51, %54
  %56 = add nsw i32 %43, %11
  %57 = sub nsw i32 %43, %11
  %58 = add nsw i32 %18, %14
  %59 = mul nsw i32 %58, 1108
  %60 = mul nsw i32 %14, -3784
  %61 = add nsw i32 %59, %60
  %62 = mul nsw i32 %18, 1568
  %63 = add nsw i32 %59, %62
  %64 = add nsw i32 %53, %47
  %65 = sub nsw i32 %47, %53
  %66 = add nsw i32 %55, %49
  %67 = sub nsw i32 %49, %55
  %68 = add nsw i32 %56, %63
  %69 = sub nsw i32 %56, %63
  %70 = add nsw i32 %57, %61
  %71 = sub nsw i32 %57, %61
  %72 = add nsw i32 %65, %67
  %73 = mul nsw i32 %72, 181
  %74 = add nsw i32 %73, 128
  %75 = ashr i32 %74, 8
  %76 = sub nsw i32 %65, %67
  %77 = mul nsw i32 %76, 181
  %78 = add nsw i32 %77, 128
  %79 = ashr i32 %78, 8
  %80 = add nsw i32 %68, %64
  %81 = lshr i32 %80, 8
  %82 = trunc i32 %81 to i16
  %83 = add nsw i32 %75, %70
  %84 = lshr i32 %83, 8
  %85 = trunc i32 %84 to i16
  %86 = add nsw i32 %79, %71
  %87 = lshr i32 %86, 8
  %88 = trunc i32 %87 to i16
  %89 = add nsw i32 %69, %66
  %90 = lshr i32 %89, 8
  %91 = trunc i32 %90 to i16
  %92 = sub nsw i32 %69, %66
  %93 = lshr i32 %92, 8
  %94 = trunc i32 %93 to i16
  %95 = sub nsw i32 %71, %79
  %96 = lshr i32 %95, 8
  %97 = trunc i32 %96 to i16
  %98 = sub nsw i32 %70, %75
  %99 = lshr i32 %98, 8
  %100 = trunc i32 %99 to i16
  store i16 %100, ptr %12, align 2, !tbaa !47
  %101 = sub nsw i32 %68, %64
  %102 = lshr i32 %101, 8
  %103 = trunc i32 %102 to i16
  store i16 %103, ptr %24, align 2, !tbaa !47
  br label %104

104:                                              ; preds = %40, %38
  %105 = phi i16 [ %39, %38 ], [ %97, %40 ]
  %106 = phi i16 [ %39, %38 ], [ %94, %40 ]
  %107 = phi i16 [ %39, %38 ], [ %91, %40 ]
  %108 = phi i16 [ %39, %38 ], [ %88, %40 ]
  %109 = phi i16 [ %39, %38 ], [ %85, %40 ]
  %110 = phi i16 [ %39, %38 ], [ %82, %40 ]
  store i16 %105, ptr %28, align 2
  store i16 %106, ptr %8, align 2
  store i16 %107, ptr %32, align 2
  store i16 %108, ptr %16, align 2
  store i16 %109, ptr %20, align 2
  store i16 %110, ptr %7, align 2
  %111 = add nuw nsw i64 %5, 1
  %112 = icmp eq i64 %111, 8
  br i1 %112, label %2, label %4, !llvm.loop !49

113:                                              ; preds = %241, %2
  %114 = phi i64 [ 0, %2 ], [ %242, %241 ]
  %115 = getelementptr inbounds i16, ptr %0, i64 %114
  %116 = getelementptr inbounds i16, ptr %115, i64 32
  %117 = load i16, ptr %116, align 2, !tbaa !47
  %118 = sext i16 %117 to i32
  %119 = shl nsw i32 %118, 8
  %120 = getelementptr inbounds i16, ptr %115, i64 48
  %121 = load i16, ptr %120, align 2, !tbaa !47
  %122 = sext i16 %121 to i32
  %123 = or i32 %119, %122
  %124 = getelementptr inbounds i16, ptr %115, i64 16
  %125 = load i16, ptr %124, align 2, !tbaa !47
  %126 = sext i16 %125 to i32
  %127 = or i32 %123, %126
  %128 = getelementptr inbounds i16, ptr %115, i64 8
  %129 = load i16, ptr %128, align 2, !tbaa !47
  %130 = sext i16 %129 to i32
  %131 = or i32 %127, %130
  %132 = getelementptr inbounds i16, ptr %115, i64 56
  %133 = load i16, ptr %132, align 2, !tbaa !47
  %134 = sext i16 %133 to i32
  %135 = or i32 %131, %134
  %136 = getelementptr inbounds i16, ptr %115, i64 40
  %137 = load i16, ptr %136, align 2, !tbaa !47
  %138 = sext i16 %137 to i32
  %139 = or i32 %135, %138
  %140 = getelementptr inbounds i16, ptr %115, i64 24
  %141 = load i16, ptr %140, align 2, !tbaa !47
  %142 = sext i16 %141 to i32
  %143 = or i32 %139, %142
  %144 = icmp eq i32 %143, 0
  %145 = load i16, ptr %115, align 2, !tbaa !47
  %146 = sext i16 %145 to i32
  br i1 %144, label %147, label %153

147:                                              ; preds = %113
  %148 = add nsw i32 %146, 32
  %149 = ashr i32 %148, 6
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i16, ptr %3, i64 %150
  %152 = load i16, ptr %151, align 2, !tbaa !47
  store i16 %152, ptr %132, align 2, !tbaa !47
  store i16 %152, ptr %120, align 2, !tbaa !47
  store i16 %152, ptr %136, align 2, !tbaa !47
  store i16 %152, ptr %116, align 2, !tbaa !47
  store i16 %152, ptr %140, align 2, !tbaa !47
  store i16 %152, ptr %124, align 2, !tbaa !47
  store i16 %152, ptr %128, align 2, !tbaa !47
  store i16 %152, ptr %115, align 2, !tbaa !47
  br label %241

153:                                              ; preds = %113
  %154 = shl nsw i32 %146, 8
  %155 = add nsw i32 %154, 8192
  %156 = add nsw i32 %134, %130
  %157 = mul nsw i32 %156, 565
  %158 = add nsw i32 %157, 4
  %159 = mul nsw i32 %130, 2276
  %160 = add nsw i32 %158, %159
  %161 = ashr i32 %160, 3
  %162 = mul nsw i32 %134, -3406
  %163 = add nsw i32 %158, %162
  %164 = ashr i32 %163, 3
  %165 = add nsw i32 %142, %138
  %166 = mul nsw i32 %165, 2408
  %167 = or i32 %166, 4
  %168 = mul nsw i32 %138, -799
  %169 = add nsw i32 %167, %168
  %170 = ashr i32 %169, 3
  %171 = mul nsw i32 %142, -4017
  %172 = add nsw i32 %167, %171
  %173 = ashr i32 %172, 3
  %174 = add nsw i32 %155, %119
  %175 = sub nsw i32 %155, %119
  %176 = add nsw i32 %126, %122
  %177 = mul nsw i32 %176, 1108
  %178 = add nsw i32 %177, 4
  %179 = mul nsw i32 %122, -3784
  %180 = add nsw i32 %178, %179
  %181 = ashr i32 %180, 3
  %182 = mul nsw i32 %126, 1568
  %183 = add nsw i32 %178, %182
  %184 = ashr i32 %183, 3
  %185 = add nsw i32 %170, %161
  %186 = sub nsw i32 %161, %170
  %187 = add nsw i32 %173, %164
  %188 = sub nsw i32 %164, %173
  %189 = add nsw i32 %174, %184
  %190 = sub nsw i32 %174, %184
  %191 = add nsw i32 %175, %181
  %192 = sub nsw i32 %175, %181
  %193 = add nsw i32 %186, %188
  %194 = mul nsw i32 %193, 181
  %195 = add nsw i32 %194, 128
  %196 = ashr i32 %195, 8
  %197 = sub nsw i32 %186, %188
  %198 = mul nsw i32 %197, 181
  %199 = add nsw i32 %198, 128
  %200 = ashr i32 %199, 8
  %201 = add nsw i32 %189, %185
  %202 = ashr i32 %201, 14
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i16, ptr %3, i64 %203
  %205 = load i16, ptr %204, align 2, !tbaa !47
  store i16 %205, ptr %115, align 2, !tbaa !47
  %206 = add nsw i32 %191, %196
  %207 = ashr i32 %206, 14
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i16, ptr %3, i64 %208
  %210 = load i16, ptr %209, align 2, !tbaa !47
  store i16 %210, ptr %128, align 2, !tbaa !47
  %211 = add nsw i32 %192, %200
  %212 = ashr i32 %211, 14
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i16, ptr %3, i64 %213
  %215 = load i16, ptr %214, align 2, !tbaa !47
  store i16 %215, ptr %124, align 2, !tbaa !47
  %216 = add nsw i32 %190, %187
  %217 = ashr i32 %216, 14
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i16, ptr %3, i64 %218
  %220 = load i16, ptr %219, align 2, !tbaa !47
  store i16 %220, ptr %140, align 2, !tbaa !47
  %221 = sub nsw i32 %190, %187
  %222 = ashr i32 %221, 14
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i16, ptr %3, i64 %223
  %225 = load i16, ptr %224, align 2, !tbaa !47
  store i16 %225, ptr %116, align 2, !tbaa !47
  %226 = sub nsw i32 %192, %200
  %227 = ashr i32 %226, 14
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i16, ptr %3, i64 %228
  %230 = load i16, ptr %229, align 2, !tbaa !47
  store i16 %230, ptr %136, align 2, !tbaa !47
  %231 = sub nsw i32 %191, %196
  %232 = ashr i32 %231, 14
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i16, ptr %3, i64 %233
  %235 = load i16, ptr %234, align 2, !tbaa !47
  store i16 %235, ptr %120, align 2, !tbaa !47
  %236 = sub nsw i32 %189, %185
  %237 = ashr i32 %236, 14
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i16, ptr %3, i64 %238
  %240 = load i16, ptr %239, align 2, !tbaa !47
  store i16 %240, ptr %132, align 2, !tbaa !47
  br label %241

241:                                              ; preds = %153, %147
  %242 = add nuw nsw i64 %114, 1
  %243 = icmp eq i64 %242, 8
  br i1 %243, label %244, label %113, !llvm.loop !50

244:                                              ; preds = %241
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @Initialize_Fast_IDCT() #4 {
  store ptr getelementptr inbounds ([1024 x i16], ptr @iclip, i64 0, i64 512), ptr @iclp, align 8, !tbaa !11
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %8, %1 ]
  %3 = phi <8 x i32> [ <i32 -512, i32 -511, i32 -510, i32 -509, i32 -508, i32 -507, i32 -506, i32 -505>, %0 ], [ %9, %1 ]
  %4 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %3, <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>)
  %5 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %4, <8 x i32> <i32 -256, i32 -256, i32 -256, i32 -256, i32 -256, i32 -256, i32 -256, i32 -256>)
  %6 = trunc <8 x i32> %5 to <8 x i16>
  %7 = getelementptr inbounds [1024 x i16], ptr @iclip, i64 0, i64 %2
  store <8 x i16> %6, ptr %7, align 16, !tbaa !47
  %8 = add nuw i64 %2, 8
  %9 = add <8 x i32> %3, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %10 = icmp eq i64 %8, 1024
  br i1 %10, label %11, label %1, !llvm.loop !51

11:                                               ; preds = %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  store i32 0, ptr @Verbose_Flag, align 4, !tbaa !7
  store ptr @.str.29, ptr @Output_Picture_Filename, align 8, !tbaa !11
  store i32 0, ptr @hiQdither, align 4, !tbaa !7
  store i32 0, ptr @Output_Type, align 4, !tbaa !7
  store i32 0, ptr @Frame_Store_Flag, align 4, !tbaa !7
  store i32 0, ptr @Spatial_Flag, align 4, !tbaa !7
  store ptr @.str.29, ptr @Lower_Layer_Picture_Filename, align 8, !tbaa !11
  store i32 0, ptr @Reference_IDCT_Flag, align 4, !tbaa !7
  store i32 0, ptr @Trace_Flag, align 4, !tbaa !7
  store i32 0, ptr @Quiet_Flag, align 4, !tbaa !7
  store i32 0, ptr @Ersatz_Flag, align 4, !tbaa !7
  store ptr @.str.29, ptr @Substitute_Picture_Filename, align 8, !tbaa !11
  store i32 0, ptr @Two_Streams, align 4, !tbaa !7
  store ptr @.str.29, ptr @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !11
  store i32 0, ptr @Big_Picture_Flag, align 4, !tbaa !7
  store i32 0, ptr @Main_Bitstream_Flag, align 4, !tbaa !7
  store ptr @.str.29, ptr @Main_Bitstream_Filename, align 8, !tbaa !11
  store i32 0, ptr @Verify_Flag, align 4, !tbaa !7
  store i32 0, ptr @Stats_Flag, align 4, !tbaa !7
  store i32 0, ptr @User_Data_Flag, align 4, !tbaa !7
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6.5, ptr noundef nonnull @Version, ptr noundef nonnull @Author) #31
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) #31
  tail call void @exit(i32 noundef 0) #34
  unreachable

7:                                                ; preds = %2
  store i32 -1, ptr @Output_Type, align 4, !tbaa !7
  br label %8

8:                                                ; preds = %108, %7
  %9 = phi i32 [ 1, %7 ], [ %110, %108 ]
  %10 = sub nsw i32 %0, %9
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %9, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = icmp eq i8 %17, 45
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %19, %12 ], [ 0, %8 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds ptr, ptr %1, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = icmp eq i8 %25, 45
  br i1 %26, label %27, label %108

27:                                               ; preds = %20
  %28 = tail call ptr @__ctype_toupper_loc() #35
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = getelementptr inbounds i8, ptr %24, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !15
  %32 = sext i8 %31 to i64
  %33 = getelementptr inbounds i32, ptr %29, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !7
  switch i32 %34, label %104 [
    i32 66, label %35
    i32 67, label %45
    i32 69, label %47
    i32 70, label %57
    i32 71, label %58
    i32 73, label %59
    i32 76, label %61
    i32 79, label %71
    i32 81, label %87
    i32 82, label %88
    i32 84, label %89
    i32 85, label %91
    i32 86, label %92
    i32 88, label %94
  ]

35:                                               ; preds = %27
  store i32 1, ptr @Main_Bitstream_Flag, align 4, !tbaa !7
  %36 = icmp ne i32 %21, 0
  %37 = or i1 %11, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.38)
  br label %108

40:                                               ; preds = %35
  %41 = add nsw i32 %9, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %1, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  store ptr %44, ptr @Main_Bitstream_Filename, align 8, !tbaa !11
  br label %108

45:                                               ; preds = %27
  %46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.37)
  br label %108

47:                                               ; preds = %27
  store i32 1, ptr @Two_Streams, align 4, !tbaa !7
  %48 = icmp ne i32 %21, 0
  %49 = or i1 %11, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.36)
  tail call void @exit(i32 noundef -1) #34
  unreachable

52:                                               ; preds = %47
  %53 = add nsw i32 %9, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !11
  store ptr %56, ptr @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !11
  br label %108

57:                                               ; preds = %27
  store i32 1, ptr @Frame_Store_Flag, align 4, !tbaa !7
  br label %108

58:                                               ; preds = %27
  store i32 1, ptr @Big_Picture_Flag, align 4, !tbaa !7
  br label %108

59:                                               ; preds = %27
  %60 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  br label %108

61:                                               ; preds = %27
  store i32 1, ptr @Spatial_Flag, align 4, !tbaa !7
  %62 = icmp ne i32 %21, 0
  %63 = or i1 %11, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34)
  tail call void @exit(i32 noundef -1) #34
  unreachable

66:                                               ; preds = %61
  %67 = add nsw i32 %9, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %1, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !11
  store ptr %70, ptr @Lower_Layer_Picture_Filename, align 8, !tbaa !11
  br label %108

71:                                               ; preds = %27
  %72 = getelementptr inbounds i8, ptr %24, i64 2
  %73 = tail call i32 @atoi(ptr nocapture noundef nonnull %72) #36
  store i32 %73, ptr @Output_Type, align 4, !tbaa !7
  %74 = and i32 %73, -2
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store ptr @.str.13, ptr @Output_Picture_Filename, align 8, !tbaa !11
  br label %108

77:                                               ; preds = %71
  %78 = icmp ne i32 %21, 0
  %79 = or i1 %11, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33)
  tail call void @exit(i32 noundef -1) #34
  unreachable

82:                                               ; preds = %77
  %83 = add nsw i32 %9, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %1, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !11
  store ptr %86, ptr @Output_Picture_Filename, align 8, !tbaa !11
  br label %108

87:                                               ; preds = %27
  store i32 1, ptr @Quiet_Flag, align 4, !tbaa !7
  br label %108

88:                                               ; preds = %27
  store i32 1, ptr @Reference_IDCT_Flag, align 4, !tbaa !7
  br label %108

89:                                               ; preds = %27
  %90 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %108

91:                                               ; preds = %27
  store i32 1, ptr @User_Data_Flag, align 4, !tbaa !7
  br label %92

92:                                               ; preds = %91, %27
  %93 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %108

94:                                               ; preds = %27
  store i32 1, ptr @Ersatz_Flag, align 4, !tbaa !7
  %95 = icmp ne i32 %21, 0
  %96 = or i1 %11, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  tail call void @exit(i32 noundef -1) #34
  unreachable

99:                                               ; preds = %94
  %100 = add nsw i32 %9, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %1, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !11
  store ptr %103, ptr @Substitute_Picture_Filename, align 8, !tbaa !11
  br label %108

104:                                              ; preds = %27
  %.lcssa2 = phi i8 [ %31, %27 ]
  %105 = sext i8 %.lcssa2 to i32
  %106 = load ptr, ptr @stderr, align 8, !tbaa !11
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.18.6, i32 noundef %105) #33
  tail call void @exit(i32 noundef -1) #34
  unreachable

108:                                              ; preds = %99, %92, %89, %88, %87, %82, %76, %66, %59, %58, %57, %52, %45, %40, %38, %20
  %109 = phi i32 [ %100, %99 ], [ %9, %92 ], [ %9, %89 ], [ %9, %88 ], [ %9, %87 ], [ %9, %76 ], [ %83, %82 ], [ %67, %66 ], [ %9, %59 ], [ %9, %58 ], [ %9, %57 ], [ %53, %52 ], [ %9, %45 ], [ %9, %38 ], [ %41, %40 ], [ %9, %20 ]
  %110 = add nsw i32 %109, 1
  %111 = icmp slt i32 %110, %0
  br i1 %111, label %8, label %112, !llvm.loop !52

112:                                              ; preds = %108
  %113 = load i32, ptr @Main_Bitstream_Flag, align 4, !tbaa !7
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %117

117:                                              ; preds = %115, %112
  %118 = load i32, ptr @Output_Type, align 4
  %119 = and i32 %118, -2
  %120 = icmp eq i32 %119, 4
  %121 = load i32, ptr @Frame_Store_Flag, align 4
  %122 = icmp ne i32 %121, 0
  %123 = select i1 %120, i1 %122, i1 false
  %124 = zext i1 %123 to i32
  store i32 %124, ptr @Display_Progressive_Flag, align 4, !tbaa !7
  %125 = icmp eq i32 %118, -1
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  store i32 9, ptr @Output_Type, align 4, !tbaa !7
  store ptr @.str.13, ptr @Output_Picture_Filename, align 8, !tbaa !11
  br label %127

127:                                              ; preds = %126, %117
  store ptr @base, ptr @ld, align 8, !tbaa !11
  %128 = load ptr, ptr @Main_Bitstream_Filename, align 8, !tbaa !11
  %129 = tail call i32 (ptr, i32, ...) @open(ptr noundef %128, i32 noundef 0) #32
  store i32 %129, ptr @base, align 8, !tbaa !53
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load ptr, ptr @stderr, align 8, !tbaa !11
  %133 = load ptr, ptr @Main_Bitstream_Filename, align 8, !tbaa !11
  %134 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.12, ptr noundef %133) #33
  tail call void @exit(i32 noundef 1) #34
  unreachable

135:                                              ; preds = %127
  %136 = icmp eq i32 %129, 0
  br i1 %136, label %156, label %137

137:                                              ; preds = %135
  tail call void @Initialize_Buffer() #32
  %138 = tail call i32 @Show_Bits(i32 noundef 8) #32
  %139 = icmp eq i32 %138, 71
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) @Error_Text, ptr noundef nonnull align 1 dereferenceable(52) @.str.1, i64 52, i1 false)
  %141 = load ptr, ptr @stderr, align 8, !tbaa !11
  %142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef nonnull @Error_Text) #33
  tail call void @exit(i32 noundef 1) #34
  unreachable

143:                                              ; preds = %137
  tail call void @next_start_code() #32
  %144 = tail call i32 @Show_Bits(i32 noundef 32) #32
  switch i32 %144, label %146 [
    i32 435, label %149
    i32 442, label %145
    i32 480, label %145
  ]

145:                                              ; preds = %143, %143
  store i32 1, ptr @System_Stream_Flag, align 4, !tbaa !7
  br label %149

146:                                              ; preds = %143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) @Error_Text, ptr noundef nonnull align 1 dereferenceable(33) @.str.2.13, i64 33, i1 false)
  %147 = load ptr, ptr @stderr, align 8, !tbaa !11
  %148 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef nonnull @Error_Text) #33
  tail call void @exit(i32 noundef 1) #34
  unreachable

149:                                              ; preds = %145, %143
  %150 = load i32, ptr @base, align 8, !tbaa !53
  %151 = tail call i64 @lseek(i32 noundef %150, i64 noundef 0, i32 noundef 0) #32
  tail call void @Initialize_Buffer() #32
  %152 = load i32, ptr @base, align 8, !tbaa !53
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  %155 = tail call i64 @lseek(i32 noundef %152, i64 noundef 0, i32 noundef 0) #32
  br label %156

156:                                              ; preds = %154, %149, %135
  tail call void @Initialize_Buffer() #32
  %157 = load i32, ptr @Two_Streams, align 4, !tbaa !7
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %169, label %159

159:                                              ; preds = %156
  store ptr @enhan, ptr @ld, align 8, !tbaa !11
  %160 = load ptr, ptr @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !11
  %161 = tail call i32 (ptr, i32, ...) @open(ptr noundef %160, i32 noundef 0) #32
  store i32 %161, ptr @enhan, align 8, !tbaa !53
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load ptr, ptr @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !11
  %165 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %164) #32
  %166 = load ptr, ptr @stderr, align 8, !tbaa !11
  %167 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef nonnull @Error_Text) #33
  tail call void @exit(i32 noundef 1) #34
  unreachable

168:                                              ; preds = %159
  tail call void @Initialize_Buffer() #32
  store ptr @base, ptr @ld, align 8, !tbaa !11
  br label %169

169:                                              ; preds = %168, %156
  %170 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #37
  store ptr %170, ptr @Clip, align 8, !tbaa !11
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load ptr, ptr @stderr, align 8, !tbaa !11
  %174 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 21, i64 1, ptr %173) #38
  tail call void @exit(i32 noundef 1) #34
  unreachable

175:                                              ; preds = %169
  %176 = getelementptr inbounds i8, ptr %170, i64 384
  store ptr %176, ptr @Clip, align 8, !tbaa !11
  br label %177

177:                                              ; preds = %177, %175
  %178 = phi i64 [ -384, %175 ], [ %185, %177 ]
  %179 = trunc i64 %178 to i32
  %180 = tail call i32 @llvm.smin.i32(i32 %179, i32 255)
  %181 = tail call i32 @llvm.smax.i32(i32 %180, i32 0)
  %182 = trunc i32 %181 to i8
  %183 = load ptr, ptr @Clip, align 8, !tbaa !11
  %184 = getelementptr inbounds i8, ptr %183, i64 %178
  store i8 %182, ptr %184, align 1, !tbaa !15
  %185 = add nsw i64 %178, 1
  %186 = icmp eq i64 %185, 640
  br i1 %186, label %187, label %177, !llvm.loop !54

187:                                              ; preds = %177
  %188 = load i32, ptr @Reference_IDCT_Flag, align 4, !tbaa !7
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %187
  tail call void @Initialize_Reference_IDCT() #32
  br label %192

191:                                              ; preds = %187
  tail call void @Initialize_Fast_IDCT() #32
  br label %192

192:                                              ; preds = %191, %190
  br label %193

193:                                              ; preds = %371, %192
  %194 = phi i32 [ 0, %192 ], [ %.lcssa, %371 ]
  %195 = tail call fastcc i32 @Headers() #31
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %372

197:                                              ; preds = %193
  %198 = load i32, ptr @Two_Streams, align 4, !tbaa !7
  %199 = icmp ne i32 %198, 0
  %200 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @enhan, i64 0, i32 17), align 4
  %201 = icmp ne i32 %200, 3
  %202 = select i1 %199, i1 %201, i1 false
  %203 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4
  %204 = icmp ne i32 %203, 1
  %205 = select i1 %202, i1 %204, i1 false
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load ptr, ptr @stderr, align 8, !tbaa !11
  %208 = tail call i64 @fwrite(ptr nonnull @.str.21.14, i64 29, i64 1, ptr %207) #38
  tail call void @exit(i32 noundef 1) #34
  unreachable

209:                                              ; preds = %197
  %210 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 16), align 8, !tbaa !28
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  store i32 1, ptr @progressive_sequence, align 4, !tbaa !7
  store i32 1, ptr @progressive_frame, align 4, !tbaa !7
  store i32 3, ptr @picture_structure, align 4, !tbaa !7
  store i32 1, ptr @frame_pred_frame_dct, align 4, !tbaa !7
  store i32 1, ptr @chroma_format, align 4, !tbaa !7
  store i32 5, ptr @matrix_coefficients, align 4, !tbaa !7
  %213 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  %214 = add nsw i32 %213, 15
  %215 = sdiv i32 %214, 16
  store i32 %215, ptr @mb_width, align 4, !tbaa !7
  br label %227

216:                                              ; preds = %209
  %217 = load i32, ptr @progressive_sequence, align 4
  %218 = icmp eq i32 %217, 0
  %219 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  %220 = add nsw i32 %219, 15
  %221 = sdiv i32 %220, 16
  store i32 %221, ptr @mb_width, align 4, !tbaa !7
  br i1 %218, label %222, label %227

222:                                              ; preds = %216
  %223 = load i32, ptr @vertical_size, align 4, !tbaa !7
  %224 = add nsw i32 %223, 31
  %225 = sdiv i32 %224, 32
  %226 = shl nsw i32 %225, 1
  br label %232

227:                                              ; preds = %216, %212
  %228 = phi i32 [ %215, %212 ], [ %221, %216 ]
  %229 = load i32, ptr @vertical_size, align 4, !tbaa !7
  %230 = add nsw i32 %229, 15
  %231 = sdiv i32 %230, 16
  br label %232

232:                                              ; preds = %227, %222
  %233 = phi i32 [ %221, %222 ], [ %228, %227 ]
  %234 = phi i32 [ %226, %222 ], [ %231, %227 ]
  store i32 %234, ptr @mb_height, align 4, !tbaa !7
  %235 = shl nsw i32 %233, 4
  store i32 %235, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %236 = shl nsw i32 %234, 4
  store i32 %236, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %237 = load i32, ptr @chroma_format, align 4, !tbaa !7
  %238 = icmp eq i32 %237, 3
  %239 = shl nsw i32 %233, 3
  %240 = select i1 %238, i32 %235, i32 %239
  store i32 %240, ptr @Chroma_Width, align 4, !tbaa !7
  %241 = icmp eq i32 %237, 1
  %242 = zext i1 %241 to i32
  %243 = ashr i32 %236, %242
  store i32 %243, ptr @Chroma_Height, align 4, !tbaa !7
  %244 = add nsw i32 %237, -1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [3 x i32], ptr @Initialize_Sequence.Table_6_20, i64 0, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !7
  store i32 %247, ptr @block_count, align 4, !tbaa !7
  %248 = mul nsw i32 %236, %235
  %249 = mul nsw i32 %243, %240
  %250 = load i32, ptr @Ersatz_Flag, align 4
  %251 = icmp eq i32 %250, 0
  %252 = icmp eq i32 %203, 2
  %253 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4
  %254 = load i32, ptr @lower_layer_prediction_vertical_size, align 4
  %255 = mul nsw i32 %254, %253
  br label %256

256:                                              ; preds = %313, %232
  %257 = phi i64 [ 0, %232 ], [ %314, %313 ]
  %258 = icmp eq i64 %257, 0
  %259 = select i1 %258, i32 %248, i32 %249
  %260 = sext i32 %259 to i64
  %261 = tail call noalias ptr @malloc(i64 noundef %260) #37
  %262 = getelementptr inbounds [3 x ptr], ptr @backward_reference_frame, i64 0, i64 %257
  store ptr %261, ptr %262, align 8, !tbaa !11
  %263 = icmp eq ptr %261, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %256
  %265 = load ptr, ptr @stderr, align 8, !tbaa !11
  %266 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 41, i64 1, ptr %265) #38
  tail call void @exit(i32 noundef 1) #34
  unreachable

267:                                              ; preds = %256
  %268 = tail call noalias ptr @malloc(i64 noundef %260) #37
  %269 = getelementptr inbounds [3 x ptr], ptr @forward_reference_frame, i64 0, i64 %257
  store ptr %268, ptr %269, align 8, !tbaa !11
  %270 = icmp eq ptr %268, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %267
  %272 = load ptr, ptr @stderr, align 8, !tbaa !11
  %273 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 40, i64 1, ptr %272) #38
  tail call void @exit(i32 noundef 1) #34
  unreachable

274:                                              ; preds = %267
  %275 = tail call noalias ptr @malloc(i64 noundef %260) #37
  %276 = getelementptr inbounds [3 x ptr], ptr @auxframe, i64 0, i64 %257
  store ptr %275, ptr %276, align 8, !tbaa !11
  %277 = icmp eq ptr %275, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  %279 = load ptr, ptr @stderr, align 8, !tbaa !11
  %280 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 25, i64 1, ptr %279) #38
  tail call void @exit(i32 noundef 1) #34
  unreachable

281:                                              ; preds = %274
  br i1 %251, label %289, label %282

282:                                              ; preds = %281
  %283 = tail call noalias ptr @malloc(i64 noundef %260) #37
  %284 = getelementptr inbounds [3 x ptr], ptr @substitute_frame, i64 0, i64 %257
  store ptr %283, ptr %284, align 8, !tbaa !11
  %285 = icmp eq ptr %283, null
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = load ptr, ptr @stderr, align 8, !tbaa !11
  %288 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 33, i64 1, ptr %287) #38
  tail call void @exit(i32 noundef 1) #34
  unreachable

289:                                              ; preds = %282, %281
  br i1 %252, label %290, label %310

290:                                              ; preds = %289
  %291 = select i1 %258, i32 1, i32 4
  %292 = sdiv i32 %255, %291
  %293 = sext i32 %292 to i64
  %294 = tail call noalias ptr @malloc(i64 noundef %293) #37
  %295 = getelementptr inbounds [3 x ptr], ptr @llframe0, i64 0, i64 %257
  store ptr %294, ptr %295, align 8, !tbaa !11
  %296 = icmp eq ptr %294, null
  br i1 %296, label %297, label %300

297:                                              ; preds = %290
  %298 = load ptr, ptr @stderr, align 8, !tbaa !11
  %299 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 23, i64 1, ptr %298) #38
  tail call void @exit(i32 noundef 1) #34
  unreachable

300:                                              ; preds = %290
  %301 = tail call noalias ptr @malloc(i64 noundef %293) #37
  %302 = getelementptr inbounds [3 x ptr], ptr @llframe1, i64 0, i64 %257
  store ptr %301, ptr %302, align 8, !tbaa !11
  %303 = icmp eq ptr %301, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %300
  %305 = load ptr, ptr @stderr, align 8, !tbaa !11
  %306 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 23, i64 1, ptr %305) #38
  tail call void @exit(i32 noundef 1) #34
  unreachable

307:                                              ; preds = %300
  %308 = add nuw nsw i64 %257, 1
  %309 = icmp eq i64 %308, 3
  br i1 %309, label %315, label %313

310:                                              ; preds = %289
  %311 = add nuw nsw i64 %257, 1
  %312 = icmp eq i64 %311, 3
  br i1 %312, label %328, label %313

313:                                              ; preds = %310, %307
  %314 = phi i64 [ %308, %307 ], [ %311, %310 ]
  br label %256, !llvm.loop !55

315:                                              ; preds = %307
  %316 = load i32, ptr @vertical_subsampling_factor_n, align 4, !tbaa !7
  %317 = mul nsw i32 %316, %254
  %318 = load i32, ptr @vertical_subsampling_factor_m, align 4, !tbaa !7
  %319 = sdiv i32 %317, %318
  %320 = mul nsw i32 %319, %253
  %321 = sext i32 %320 to i64
  %322 = shl nsw i64 %321, 1
  %323 = tail call noalias ptr @malloc(i64 noundef %322) #37
  store ptr %323, ptr @lltmp, align 8, !tbaa !11
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %315
  %326 = load ptr, ptr @stderr, align 8, !tbaa !11
  %327 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 20, i64 1, ptr %326) #38
  tail call void @exit(i32 noundef 1) #34
  unreachable

328:                                              ; preds = %315, %310
  tail call void @Decode_Picture(i32 noundef %194, i32 noundef 0) #32
  %329 = load i32, ptr @Second_Field, align 4, !tbaa !7
  %330 = icmp eq i32 %329, 0
  %331 = zext i1 %330 to i32
  %332 = add nsw i32 %194, %331
  br label %333

333:                                              ; preds = %338, %328
  %334 = phi i32 [ %331, %328 ], [ %342, %338 ]
  %335 = phi i32 [ %332, %328 ], [ %343, %338 ]
  %336 = tail call fastcc i32 @Headers() #31
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %344, label %338

338:                                              ; preds = %333
  tail call void @Decode_Picture(i32 noundef %335, i32 noundef %334) #32
  %339 = load i32, ptr @Second_Field, align 4, !tbaa !7
  %340 = icmp eq i32 %339, 0
  %341 = zext i1 %340 to i32
  %342 = add nuw nsw i32 %334, %341
  %343 = add nsw i32 %335, %341
  br label %333, !llvm.loop !56

344:                                              ; preds = %333
  %.lcssa1 = phi i32 [ %334, %333 ]
  %.lcssa = phi i32 [ %335, %333 ]
  %345 = icmp eq i32 %.lcssa1, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %344
  tail call void @Output_Last_Frame_of_Sequence(i32 noundef %.lcssa) #32
  br label %347

347:                                              ; preds = %346, %344
  store i32 0, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 16), align 8, !tbaa !28
  br label %348

348:                                              ; preds = %363, %347
  %349 = phi i64 [ 0, %347 ], [ %364, %363 ]
  %350 = getelementptr inbounds [3 x ptr], ptr @backward_reference_frame, i64 0, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !11
  tail call void @free(ptr noundef %351) #32
  %352 = getelementptr inbounds [3 x ptr], ptr @forward_reference_frame, i64 0, i64 %349
  %353 = load ptr, ptr %352, align 8, !tbaa !11
  tail call void @free(ptr noundef %353) #32
  %354 = getelementptr inbounds [3 x ptr], ptr @auxframe, i64 0, i64 %349
  %355 = load ptr, ptr %354, align 8, !tbaa !11
  tail call void @free(ptr noundef %355) #32
  %356 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %357 = icmp eq i32 %356, 2
  br i1 %357, label %358, label %363

358:                                              ; preds = %348
  %359 = getelementptr inbounds [3 x ptr], ptr @llframe0, i64 0, i64 %349
  %360 = load ptr, ptr %359, align 8, !tbaa !11
  tail call void @free(ptr noundef %360) #32
  %361 = getelementptr inbounds [3 x ptr], ptr @llframe1, i64 0, i64 %349
  %362 = load ptr, ptr %361, align 8, !tbaa !11
  tail call void @free(ptr noundef %362) #32
  br label %363

363:                                              ; preds = %358, %348
  %364 = add nuw nsw i64 %349, 1
  %365 = icmp eq i64 %364, 3
  br i1 %365, label %366, label %348, !llvm.loop !57

366:                                              ; preds = %363
  %367 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %368 = icmp eq i32 %367, 2
  br i1 %368, label %369, label %371

369:                                              ; preds = %366
  %370 = load ptr, ptr @lltmp, align 8, !tbaa !11
  tail call void @free(ptr noundef %370) #32
  br label %371

371:                                              ; preds = %369, %366
  br label %193

372:                                              ; preds = %193
  %373 = load i32, ptr @base, align 8, !tbaa !53
  %374 = tail call i32 @close(i32 noundef %373) #32
  %375 = load i32, ptr @Two_Streams, align 4, !tbaa !7
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %380, label %377

377:                                              ; preds = %372
  %378 = load i32, ptr @enhan, align 8, !tbaa !53
  %379 = tail call i32 @close(i32 noundef %378) #32
  br label %380

380:                                              ; preds = %377, %372
  ret i32 0
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @Headers() unnamed_addr #0 {
  store ptr @base, ptr @ld, align 8, !tbaa !11
  %1 = tail call i32 @Get_Hdr() #32
  %2 = load i32, ptr @Two_Streams, align 4, !tbaa !7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %0
  store ptr @enhan, ptr @ld, align 8, !tbaa !11
  %5 = tail call i32 @Get_Hdr() #32
  %6 = icmp eq i32 %5, %1
  %7 = load i32, ptr @Quiet_Flag, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @stderr, align 8, !tbaa !11
  %12 = tail call i64 @fwrite(ptr nonnull @.str.20.39, i64 20, i64 1, ptr %11) #38
  br label %13

13:                                               ; preds = %10, %4
  store ptr @base, ptr @ld, align 8, !tbaa !11
  br label %14

14:                                               ; preds = %13, %0
  ret i32 %1
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @Error(ptr nocapture noundef readonly %0) #15 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !11
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef %0) #33
  tail call void @exit(i32 noundef 1) #34
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal void @Write_Frame(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #39
  %4 = load i32, ptr @progressive_sequence, align 4, !tbaa !7
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @progressive_frame, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = load i32, ptr @Frame_Store_Flag, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = load ptr, ptr @Output_Picture_Filename, align 8, !tbaa !11
  br i1 %11, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %12, i32 noundef %1, i32 noundef 102) #32
  %15 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %16 = load i32, ptr @vertical_size, align 4, !tbaa !7
  call fastcc void @store_one(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, i32 noundef %15, i32 noundef %16) #31
  br label %29

17:                                               ; preds = %2
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %12, i32 noundef %1, i32 noundef 97) #32
  %19 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %20 = shl i32 %19, 1
  %21 = load i32, ptr @vertical_size, align 4, !tbaa !7
  %22 = ashr i32 %21, 1
  call fastcc void @store_one(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, i32 noundef %20, i32 noundef %22) #31
  %23 = load ptr, ptr @Output_Picture_Filename, align 8, !tbaa !11
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %23, i32 noundef %1, i32 noundef 98) #32
  %25 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %26 = shl i32 %25, 1
  %27 = load i32, ptr @vertical_size, align 4, !tbaa !7
  %28 = ashr i32 %27, 1
  call fastcc void @store_one(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %25, i32 noundef %26, i32 noundef %28) #31
  br label %29

29:                                               ; preds = %17, %13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @store_one(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [256 x i8], align 16
  %7 = load i32, ptr @Output_Type, align 4, !tbaa !7
  switch i32 %7, label %181 [
    i32 0, label %8
    i32 1, label %27
    i32 2, label %179
    i32 3, label %180
  ]

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #39
  %9 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.176, ptr noundef %0) #32
  %11 = load ptr, ptr %1, align 8, !tbaa !11
  call fastcc void @store_yuv1(ptr noundef nonnull %6, ptr noundef %11, i32 noundef %2, i32 noundef %3, i32 noundef %9, i32 noundef %4) #31
  %12 = load i32, ptr @chroma_format, align 4, !tbaa !7
  %13 = icmp ne i32 %12, 3
  %14 = zext i1 %13 to i32
  %15 = ashr i32 %2, %14
  %16 = ashr i32 %3, %14
  %17 = ashr i32 %9, %14
  %18 = icmp eq i32 %12, 1
  %19 = zext i1 %18 to i32
  %20 = ashr i32 %4, %19
  %21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.1.177, ptr noundef %0) #32
  %22 = getelementptr inbounds ptr, ptr %1, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  call fastcc void @store_yuv1(ptr noundef nonnull %6, ptr noundef %23, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %20) #31
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.2.178, ptr noundef %0) #32
  %25 = getelementptr inbounds ptr, ptr %1, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  call fastcc void @store_yuv1(ptr noundef nonnull %6, ptr noundef %26, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %20) #31
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #39
  br label %181

27:                                               ; preds = %5
  %28 = load i32, ptr @chroma_format, align 4, !tbaa !7
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  tail call void @Error(ptr noundef nonnull @.str.5.179) #32
  %31 = load i32, ptr @chroma_format, align 4, !tbaa !7
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ %28, %27 ]
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = getelementptr inbounds ptr, ptr %1, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  store ptr %37, ptr @store_sif.u422, align 8, !tbaa !11
  %38 = getelementptr inbounds ptr, ptr %1, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  store ptr %39, ptr @store_sif.v422, align 8, !tbaa !11
  br label %69

40:                                               ; preds = %32
  %41 = load ptr, ptr @store_sif.u422, align 8, !tbaa !11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %45 = ashr i32 %44, 1
  %46 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = tail call noalias ptr @malloc(i64 noundef %48) #37
  store ptr %49, ptr @store_sif.u422, align 8, !tbaa !11
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  tail call void @Error(ptr noundef nonnull @.str.6.180) #32
  %52 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %53 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %54 = ashr i32 %52, 1
  %55 = mul nsw i32 %54, %53
  %56 = sext i32 %55 to i64
  br label %57

57:                                               ; preds = %51, %43
  %58 = phi i64 [ %56, %51 ], [ %48, %43 ]
  %59 = tail call noalias ptr @malloc(i64 noundef %58) #37
  store ptr %59, ptr @store_sif.v422, align 8, !tbaa !11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void @Error(ptr noundef nonnull @.str.6.180) #32
  br label %62

62:                                               ; preds = %61, %57, %40
  %63 = getelementptr inbounds ptr, ptr %1, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !11
  %65 = load ptr, ptr @store_sif.u422, align 8, !tbaa !11
  tail call fastcc void @conv420to422(ptr noundef %64, ptr noundef %65) #31
  %66 = getelementptr inbounds ptr, ptr %1, i64 2
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = load ptr, ptr @store_sif.v422, align 8, !tbaa !11
  tail call fastcc void @conv420to422(ptr noundef %67, ptr noundef %68) #31
  br label %69

69:                                               ; preds = %62, %35
  %70 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %71 = getelementptr inbounds i8, ptr %0, i64 %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %71, ptr noundef nonnull align 1 dereferenceable(5) @.str.7.181, i64 5, i1 false)
  %72 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load ptr, ptr @stdout, align 8, !tbaa !11
  %76 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #36
  %77 = icmp eq ptr %76, null
  %78 = getelementptr inbounds i8, ptr %76, i64 1
  %79 = select i1 %77, ptr %0, ptr %78
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.3.182, ptr noundef %79) #31
  br label %81

81:                                               ; preds = %74, %69
  %82 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 577, i32 noundef 438) #32
  store i32 %82, ptr @outfile, align 4, !tbaa !7
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %0) #32
  tail call void @Error(ptr noundef nonnull @Error_Text) #32
  br label %86

86:                                               ; preds = %84, %81
  store ptr @obfr, ptr @optr, align 8, !tbaa !11
  %87 = icmp sgt i32 %4, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %89 = load i32, ptr @outfile, align 4, !tbaa !7
  br label %176

90:                                               ; preds = %86
  %91 = sext i32 %2 to i64
  %92 = ashr i32 %2, 1
  %93 = sext i32 %92 to i64
  %94 = ashr i32 %3, 1
  %95 = sext i32 %3 to i64
  %96 = sext i32 %94 to i64
  %97 = zext i32 %4 to i64
  %98 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  br label %99

99:                                               ; preds = %163, %90
  %100 = phi ptr [ @obfr, %90 ], [ %164, %163 ]
  %101 = phi i32 [ %98, %90 ], [ %165, %163 ]
  %102 = phi i64 [ 0, %90 ], [ %166, %163 ]
  %103 = icmp sgt i32 %101, 0
  br i1 %103, label %104, label %163

104:                                              ; preds = %99
  %105 = load ptr, ptr @store_sif.v422, align 8, !tbaa !11
  %106 = getelementptr inbounds i8, ptr %105, i64 %93
  %107 = mul nsw i64 %102, %96
  %108 = getelementptr inbounds i8, ptr %106, i64 %107
  %109 = load ptr, ptr @store_sif.u422, align 8, !tbaa !11
  %110 = getelementptr inbounds i8, ptr %109, i64 %93
  %111 = getelementptr inbounds i8, ptr %110, i64 %107
  %112 = load ptr, ptr %1, align 8, !tbaa !11
  %113 = getelementptr inbounds i8, ptr %112, i64 %91
  %114 = mul nsw i64 %102, %95
  %115 = getelementptr inbounds i8, ptr %113, i64 %114
  br label %116

116:                                              ; preds = %158, %104
  %117 = phi ptr [ %159, %158 ], [ %100, %104 ]
  %118 = phi ptr [ %142, %158 ], [ %108, %104 ]
  %119 = phi ptr [ %122, %158 ], [ %111, %104 ]
  %120 = phi ptr [ %151, %158 ], [ %115, %104 ]
  %121 = phi i32 [ %160, %158 ], [ 0, %104 ]
  %122 = getelementptr inbounds i8, ptr %119, i64 1
  %123 = load i8, ptr %119, align 1, !tbaa !15
  %124 = getelementptr inbounds i8, ptr %117, i64 1
  store ptr %124, ptr @optr, align 8, !tbaa !11
  store i8 %123, ptr %117, align 1, !tbaa !15
  %125 = icmp eq ptr %124, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %125, label %128, label %126

126:                                              ; preds = %116
  %127 = load ptr, ptr @optr, align 8, !tbaa !11
  br label %131

128:                                              ; preds = %116
  %129 = load i32, ptr @outfile, align 4, !tbaa !7
  %130 = tail call i64 @write(i32 noundef %129, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  br label %131

131:                                              ; preds = %128, %126
  %132 = phi ptr [ %127, %126 ], [ @obfr, %128 ]
  %133 = getelementptr inbounds i8, ptr %120, i64 1
  %134 = load i8, ptr %120, align 1, !tbaa !15
  %135 = getelementptr inbounds i8, ptr %132, i64 1
  store ptr %135, ptr @optr, align 8, !tbaa !11
  store i8 %134, ptr %132, align 1, !tbaa !15
  %136 = icmp eq ptr %135, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32, ptr @outfile, align 4, !tbaa !7
  %139 = tail call i64 @write(i32 noundef %138, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  br label %140

140:                                              ; preds = %137, %131
  %141 = phi ptr [ %135, %131 ], [ @obfr, %137 ]
  %142 = getelementptr inbounds i8, ptr %118, i64 1
  %143 = load i8, ptr %118, align 1, !tbaa !15
  %144 = getelementptr inbounds i8, ptr %141, i64 1
  store ptr %144, ptr @optr, align 8, !tbaa !11
  store i8 %143, ptr %141, align 1, !tbaa !15
  %145 = icmp eq ptr %144, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, ptr @outfile, align 4, !tbaa !7
  %148 = tail call i64 @write(i32 noundef %147, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  br label %149

149:                                              ; preds = %146, %140
  %150 = phi ptr [ %144, %140 ], [ @obfr, %146 ]
  %151 = getelementptr inbounds i8, ptr %120, i64 2
  %152 = load i8, ptr %133, align 1, !tbaa !15
  %153 = getelementptr inbounds i8, ptr %150, i64 1
  store ptr %153, ptr @optr, align 8, !tbaa !11
  store i8 %152, ptr %150, align 1, !tbaa !15
  %154 = icmp eq ptr %153, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32, ptr @outfile, align 4, !tbaa !7
  %157 = tail call i64 @write(i32 noundef %156, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  store ptr @obfr, ptr @optr, align 8, !tbaa !11
  br label %158

158:                                              ; preds = %155, %149
  %159 = phi ptr [ %153, %149 ], [ @obfr, %155 ]
  %160 = add nuw nsw i32 %121, 2
  %161 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %116, label %163, !llvm.loop !58

163:                                              ; preds = %158, %99
  %164 = phi ptr [ %100, %99 ], [ %159, %158 ]
  %165 = phi i32 [ %101, %99 ], [ %161, %158 ]
  %166 = add nuw nsw i64 %102, 1
  %167 = icmp eq i64 %166, %97
  br i1 %167, label %168, label %99, !llvm.loop !59

168:                                              ; preds = %163
  %.lcssa = phi ptr [ %164, %163 ]
  %169 = icmp eq ptr %.lcssa, @obfr
  %170 = load i32, ptr @outfile, align 4, !tbaa !7
  br i1 %169, label %176, label %171

171:                                              ; preds = %168
  %172 = ptrtoint ptr %.lcssa to i64
  %173 = sub i64 %172, ptrtoint (ptr @obfr to i64)
  %174 = tail call i64 @write(i32 noundef %170, ptr noundef nonnull @obfr, i64 noundef %173) #32
  %175 = load i32, ptr @outfile, align 4, !tbaa !7
  br label %176

176:                                              ; preds = %171, %168, %88
  %177 = phi i32 [ %175, %171 ], [ %170, %168 ], [ %89, %88 ]
  %178 = tail call i32 @close(i32 noundef %177) #32
  br label %181

179:                                              ; preds = %5
  tail call fastcc void @store_ppm_tga(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1) #31
  br label %181

180:                                              ; preds = %5
  tail call fastcc void @store_ppm_tga(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0) #31
  br label %181

181:                                              ; preds = %180, %179, %176, %8, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @store_yuv1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load ptr, ptr @stdout, align 8, !tbaa !11
  %11 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #36
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = select i1 %12, ptr %0, ptr %13
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.3.182, ptr noundef %14) #31
  br label %16

16:                                               ; preds = %9, %6
  %17 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 577, i32 noundef 438) #32
  store i32 %17, ptr @outfile, align 4, !tbaa !7
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %0) #32
  tail call void @Error(ptr noundef nonnull @Error_Text) #32
  br label %21

21:                                               ; preds = %19, %16
  store ptr @obfr, ptr @optr, align 8, !tbaa !11
  %22 = icmp sgt i32 %5, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr @outfile, align 4, !tbaa !7
  br label %64

25:                                               ; preds = %21
  %26 = sext i32 %2 to i64
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  %28 = icmp sgt i32 %4, 0
  %29 = sext i32 %3 to i64
  %30 = zext i32 %5 to i64
  br label %31

31:                                               ; preds = %52, %25
  %32 = phi ptr [ @obfr, %25 ], [ %53, %52 ]
  %33 = phi i64 [ 0, %25 ], [ %54, %52 ]
  br i1 %28, label %34, label %52

34:                                               ; preds = %31
  %35 = mul nsw i64 %33, %29
  %36 = getelementptr inbounds i8, ptr %27, i64 %35
  br label %37

37:                                               ; preds = %48, %34
  %38 = phi ptr [ %49, %48 ], [ %32, %34 ]
  %39 = phi ptr [ %41, %48 ], [ %36, %34 ]
  %40 = phi i32 [ %50, %48 ], [ 0, %34 ]
  %41 = getelementptr inbounds i8, ptr %39, i64 1
  %42 = load i8, ptr %39, align 1, !tbaa !15
  %43 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %43, ptr @optr, align 8, !tbaa !11
  store i8 %42, ptr %38, align 1, !tbaa !15
  %44 = icmp eq ptr %43, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, ptr @outfile, align 4, !tbaa !7
  %47 = tail call i64 @write(i32 noundef %46, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  store ptr @obfr, ptr @optr, align 8, !tbaa !11
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi ptr [ %43, %37 ], [ @obfr, %45 ]
  %50 = add nuw nsw i32 %40, 1
  %51 = icmp eq i32 %50, %4
  br i1 %51, label %52, label %37, !llvm.loop !60

52:                                               ; preds = %48, %31
  %53 = phi ptr [ %32, %31 ], [ %49, %48 ]
  %54 = add nuw nsw i64 %33, 1
  %55 = icmp eq i64 %54, %30
  br i1 %55, label %56, label %31, !llvm.loop !61

56:                                               ; preds = %52
  %.lcssa = phi ptr [ %53, %52 ]
  %57 = icmp eq ptr %.lcssa, @obfr
  %58 = load i32, ptr @outfile, align 4, !tbaa !7
  br i1 %57, label %64, label %59

59:                                               ; preds = %56
  %60 = ptrtoint ptr %.lcssa to i64
  %61 = sub i64 %60, ptrtoint (ptr @obfr to i64)
  %62 = tail call i64 @write(i32 noundef %58, ptr noundef nonnull @obfr, i64 noundef %61) #32
  %63 = load i32, ptr @outfile, align 4, !tbaa !7
  br label %64

64:                                               ; preds = %59, %56, %23
  %65 = phi i32 [ %63, %59 ], [ %58, %56 ], [ %24, %23 ]
  %66 = tail call i32 @close(i32 noundef %65) #32
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @conv420to422(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #17 {
  %3 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %4 = ashr i32 %3, 1
  %5 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %6 = ashr i32 %5, 1
  %7 = load i32, ptr @progressive_frame, align 4, !tbaa !7
  %8 = icmp eq i32 %7, 0
  %9 = icmp sgt i32 %3, 1
  br i1 %8, label %23, label %10

10:                                               ; preds = %2
  br i1 %9, label %11, label %380

11:                                               ; preds = %10
  %12 = icmp sgt i32 %5, 1
  %13 = add nsw i32 %6, -1
  %14 = add nsw i32 %6, -2
  %15 = add nsw i32 %6, -3
  %16 = sext i32 %4 to i64
  %17 = sext i32 %13 to i64
  %18 = sext i32 %14 to i64
  %19 = sext i32 %15 to i64
  %20 = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
  %21 = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  %22 = zext i32 %20 to i64
  br label %43

23:                                               ; preds = %2
  br i1 %9, label %24, label %380

24:                                               ; preds = %23
  %25 = icmp sgt i32 %5, 1
  %26 = add nsw i32 %6, -2
  %27 = add nsw i32 %6, -4
  %28 = add nsw i32 %6, -6
  %29 = add nsw i32 %6, -1
  %30 = add nsw i32 %6, -3
  %31 = add nsw i32 %6, -5
  %32 = add nsw i32 %6, -7
  %33 = sext i32 %4 to i64
  %34 = sext i32 %26 to i64
  %35 = sext i32 %6 to i64
  %36 = sext i32 %27 to i64
  %37 = sext i32 %28 to i64
  %38 = sext i32 %29 to i64
  %39 = sext i32 %30 to i64
  %40 = sext i32 %31 to i64
  %41 = sext i32 %32 to i64
  %42 = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  br label %155

43:                                               ; preds = %150, %11
  %44 = phi ptr [ %0, %11 ], [ %151, %150 ]
  %45 = phi ptr [ %1, %11 ], [ %152, %150 ]
  %46 = phi i32 [ 0, %11 ], [ %153, %150 ]
  br i1 %12, label %47, label %150

47:                                               ; preds = %47, %43
  %48 = phi i64 [ %55, %47 ], [ 0, %43 ]
  %49 = shl nuw i64 %48, 1
  %50 = trunc i64 %48 to i32
  %51 = tail call i32 @llvm.usub.sat.i32(i32 %50, i32 3)
  %52 = tail call i32 @llvm.usub.sat.i32(i32 %50, i32 2)
  %53 = tail call i32 @llvm.usub.sat.i32(i32 %50, i32 1)
  %54 = icmp slt i64 %48, %17
  %55 = add nuw nsw i64 %48, 1
  %56 = trunc i64 %55 to i32
  %57 = select i1 %54, i32 %56, i32 %13
  %58 = icmp slt i64 %48, %18
  %59 = trunc i64 %48 to i32
  %60 = add i32 %59, 2
  %61 = select i1 %58, i32 %60, i32 %13
  %62 = icmp slt i64 %48, %19
  %63 = trunc i64 %48 to i32
  %64 = add i32 %63, 3
  %65 = select i1 %62, i32 %64, i32 %13
  %66 = load ptr, ptr @Clip, align 8, !tbaa !11
  %67 = mul nsw i32 %51, %4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %44, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !15
  %71 = zext i8 %70 to i32
  %72 = mul nuw nsw i32 %71, 3
  %73 = mul nsw i32 %52, %4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %44, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !15
  %77 = zext i8 %76 to i32
  %78 = mul nsw i32 %53, %4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %44, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !15
  %82 = zext i8 %81 to i32
  %83 = mul nuw nsw i32 %82, 67
  %84 = mul nsw i64 %48, %16
  %85 = getelementptr inbounds i8, ptr %44, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !15
  %87 = zext i8 %86 to i32
  %88 = mul nuw nsw i32 %87, 227
  %89 = mul nsw i32 %57, %4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %44, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !15
  %93 = zext i8 %92 to i32
  %94 = mul nsw i32 %61, %4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %44, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !15
  %98 = zext i8 %97 to i32
  %99 = mul nuw nsw i32 %98, 7
  %100 = add nuw nsw i32 %72, 128
  %101 = shl nuw nsw i32 %77, 4
  %102 = sub nsw i32 %100, %101
  %103 = add nsw i32 %102, %83
  %104 = add nsw i32 %103, %88
  %105 = shl nuw nsw i32 %93, 5
  %106 = sub nsw i32 %104, %105
  %107 = add nsw i32 %106, %99
  %108 = ashr i32 %107, 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %66, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !15
  %112 = mul nsw i64 %49, %16
  %113 = getelementptr inbounds i8, ptr %45, i64 %112
  store i8 %111, ptr %113, align 1, !tbaa !15
  %114 = load ptr, ptr @Clip, align 8, !tbaa !11
  %115 = mul nsw i32 %65, %4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %44, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !15
  %119 = zext i8 %118 to i32
  %120 = mul nuw nsw i32 %119, 3
  %121 = load i8, ptr %96, align 1, !tbaa !15
  %122 = zext i8 %121 to i32
  %123 = load i8, ptr %91, align 1, !tbaa !15
  %124 = zext i8 %123 to i32
  %125 = mul nuw nsw i32 %124, 67
  %126 = load i8, ptr %85, align 1, !tbaa !15
  %127 = zext i8 %126 to i32
  %128 = mul nuw nsw i32 %127, 227
  %129 = load i8, ptr %80, align 1, !tbaa !15
  %130 = zext i8 %129 to i32
  %131 = load i8, ptr %75, align 1, !tbaa !15
  %132 = zext i8 %131 to i32
  %133 = mul nuw nsw i32 %132, 7
  %134 = add nuw nsw i32 %120, 128
  %135 = shl nuw nsw i32 %122, 4
  %136 = sub nsw i32 %134, %135
  %137 = add nsw i32 %136, %125
  %138 = add nsw i32 %137, %128
  %139 = shl nuw nsw i32 %130, 5
  %140 = sub nsw i32 %138, %139
  %141 = add nsw i32 %140, %133
  %142 = ashr i32 %141, 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, ptr %114, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !15
  %146 = or i64 %49, 1
  %147 = mul nsw i64 %146, %16
  %148 = getelementptr inbounds i8, ptr %45, i64 %147
  store i8 %145, ptr %148, align 1, !tbaa !15
  %149 = icmp eq i64 %55, %22
  br i1 %149, label %150, label %47, !llvm.loop !62

150:                                              ; preds = %47, %43
  %151 = getelementptr inbounds i8, ptr %44, i64 1
  %152 = getelementptr inbounds i8, ptr %45, i64 1
  %153 = add nuw nsw i32 %46, 1
  %154 = icmp eq i32 %153, %21
  br i1 %154, label %380, label %43, !llvm.loop !63

155:                                              ; preds = %375, %24
  %156 = phi ptr [ %0, %24 ], [ %376, %375 ]
  %157 = phi ptr [ %1, %24 ], [ %377, %375 ]
  %158 = phi i32 [ 0, %24 ], [ %378, %375 ]
  br i1 %25, label %159, label %375

159:                                              ; preds = %159, %155
  %160 = phi i64 [ %170, %159 ], [ 0, %155 ]
  %161 = shl nuw i64 %160, 1
  %162 = trunc i64 %160 to i32
  %163 = tail call i32 @llvm.usub.sat.i32(i32 %162, i32 6)
  %164 = tail call i32 @llvm.usub.sat.i32(i32 %162, i32 4)
  %165 = icmp eq i64 %160, 0
  %166 = trunc i64 %160 to i32
  %167 = add i32 %166, -2
  %168 = select i1 %165, i32 0, i32 %167
  %169 = icmp slt i64 %160, %34
  %170 = add nuw nsw i64 %160, 2
  %171 = trunc i64 %170 to i32
  %172 = select i1 %169, i32 %171, i32 %26
  %173 = icmp slt i64 %160, %36
  %174 = trunc i64 %160 to i32
  %175 = add i32 %174, 4
  %176 = select i1 %173, i32 %175, i32 %26
  %177 = icmp slt i64 %160, %37
  %178 = trunc i64 %160 to i32
  %179 = add i32 %178, 6
  %180 = select i1 %177, i32 %179, i32 %26
  %181 = load ptr, ptr @Clip, align 8, !tbaa !11
  %182 = mul nsw i32 %163, %4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, ptr %156, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !15
  %186 = zext i8 %185 to i32
  %187 = mul nsw i32 %164, %4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, ptr %156, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !15
  %191 = zext i8 %190 to i32
  %192 = mul nsw i32 %191, -7
  %193 = mul nsw i32 %168, %4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, ptr %156, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !15
  %197 = zext i8 %196 to i32
  %198 = mul nuw nsw i32 %197, 30
  %199 = mul nsw i64 %160, %33
  %200 = getelementptr inbounds i8, ptr %156, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !15
  %202 = zext i8 %201 to i32
  %203 = mul nuw nsw i32 %202, 248
  %204 = mul nsw i32 %172, %4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %156, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !15
  %208 = zext i8 %207 to i32
  %209 = mul nsw i32 %208, -21
  %210 = mul nsw i32 %176, %4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, ptr %156, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !15
  %214 = zext i8 %213 to i32
  %215 = mul nuw nsw i32 %214, 5
  %216 = add nuw nsw i32 %186, 128
  %217 = add nsw i32 %216, %192
  %218 = add nsw i32 %217, %198
  %219 = add nsw i32 %218, %203
  %220 = add nsw i32 %219, %209
  %221 = add nsw i32 %220, %215
  %222 = ashr i32 %221, 8
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, ptr %181, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !15
  %226 = mul nsw i64 %161, %33
  %227 = getelementptr inbounds i8, ptr %157, i64 %226
  store i8 %225, ptr %227, align 1, !tbaa !15
  %228 = load ptr, ptr @Clip, align 8, !tbaa !11
  %229 = load i8, ptr %189, align 1, !tbaa !15
  %230 = zext i8 %229 to i32
  %231 = mul nuw nsw i32 %230, 7
  %232 = load i8, ptr %195, align 1, !tbaa !15
  %233 = zext i8 %232 to i32
  %234 = mul nsw i32 %233, -35
  %235 = load i8, ptr %200, align 1, !tbaa !15
  %236 = zext i8 %235 to i32
  %237 = mul nuw nsw i32 %236, 194
  %238 = load i8, ptr %206, align 1, !tbaa !15
  %239 = zext i8 %238 to i32
  %240 = mul nuw nsw i32 %239, 110
  %241 = load i8, ptr %212, align 1, !tbaa !15
  %242 = zext i8 %241 to i32
  %243 = mul nsw i32 %242, -24
  %244 = mul nsw i32 %180, %4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, ptr %156, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !15
  %248 = zext i8 %247 to i32
  %249 = shl nuw nsw i32 %248, 2
  %250 = add nuw nsw i32 %231, 128
  %251 = add nsw i32 %250, %234
  %252 = add nsw i32 %251, %237
  %253 = add nsw i32 %252, %240
  %254 = add nsw i32 %253, %243
  %255 = add nsw i32 %254, %249
  %256 = ashr i32 %255, 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, ptr %228, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !15
  %260 = or i64 %161, 2
  %261 = mul nsw i64 %260, %33
  %262 = getelementptr inbounds i8, ptr %157, i64 %261
  store i8 %259, ptr %262, align 1, !tbaa !15
  %263 = icmp ult i64 %160, 5
  %264 = trunc i64 %160 to i32
  %265 = add i32 %264, -5
  %266 = select i1 %263, i32 1, i32 %265
  %267 = icmp ult i64 %160, 3
  %268 = trunc i64 %160 to i32
  %269 = add i32 %268, -3
  %270 = select i1 %267, i32 1, i32 %269
  %271 = trunc i64 %160 to i32
  %272 = add i32 %271, -1
  %273 = select i1 %165, i32 1, i32 %272
  %274 = icmp slt i64 %160, %38
  %275 = trunc i64 %160 to i32
  %276 = or i32 %275, 1
  %277 = select i1 %274, i32 %276, i32 %29
  %278 = icmp slt i64 %160, %39
  %279 = trunc i64 %160 to i32
  %280 = add i32 %279, 3
  %281 = select i1 %278, i32 %280, i32 %29
  %282 = icmp slt i64 %160, %40
  %283 = trunc i64 %160 to i32
  %284 = add i32 %283, 5
  %285 = select i1 %282, i32 %284, i32 %29
  %286 = icmp slt i64 %160, %41
  %287 = trunc i64 %160 to i32
  %288 = add i32 %287, 7
  %289 = select i1 %286, i32 %288, i32 %29
  %290 = load ptr, ptr @Clip, align 8, !tbaa !11
  %291 = mul nsw i32 %285, %4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, ptr %156, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !15
  %295 = zext i8 %294 to i32
  %296 = mul nuw nsw i32 %295, 7
  %297 = mul nsw i32 %281, %4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, ptr %156, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !15
  %301 = zext i8 %300 to i32
  %302 = mul nsw i32 %301, -35
  %303 = mul nsw i32 %277, %4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, ptr %156, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !15
  %307 = zext i8 %306 to i32
  %308 = mul nuw nsw i32 %307, 194
  %309 = mul nsw i32 %273, %4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, ptr %156, i64 %310
  %312 = load i8, ptr %311, align 1, !tbaa !15
  %313 = zext i8 %312 to i32
  %314 = mul nuw nsw i32 %313, 110
  %315 = mul nsw i32 %270, %4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, ptr %156, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !15
  %319 = zext i8 %318 to i32
  %320 = mul nsw i32 %319, -24
  %321 = mul nsw i32 %266, %4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, ptr %156, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !15
  %325 = zext i8 %324 to i32
  %326 = shl nuw nsw i32 %325, 2
  %327 = add nuw nsw i32 %296, 128
  %328 = add nsw i32 %327, %302
  %329 = add nsw i32 %328, %308
  %330 = add nsw i32 %329, %314
  %331 = add nsw i32 %330, %320
  %332 = add nsw i32 %331, %326
  %333 = ashr i32 %332, 8
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, ptr %290, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !15
  %337 = or i64 %161, 1
  %338 = mul nsw i64 %337, %33
  %339 = getelementptr inbounds i8, ptr %157, i64 %338
  store i8 %336, ptr %339, align 1, !tbaa !15
  %340 = load ptr, ptr @Clip, align 8, !tbaa !11
  %341 = mul nsw i32 %289, %4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, ptr %156, i64 %342
  %344 = load i8, ptr %343, align 1, !tbaa !15
  %345 = zext i8 %344 to i32
  %346 = load i8, ptr %293, align 1, !tbaa !15
  %347 = zext i8 %346 to i32
  %348 = mul nsw i32 %347, -7
  %349 = load i8, ptr %299, align 1, !tbaa !15
  %350 = zext i8 %349 to i32
  %351 = mul nuw nsw i32 %350, 30
  %352 = load i8, ptr %305, align 1, !tbaa !15
  %353 = zext i8 %352 to i32
  %354 = mul nuw nsw i32 %353, 248
  %355 = load i8, ptr %311, align 1, !tbaa !15
  %356 = zext i8 %355 to i32
  %357 = mul nsw i32 %356, -21
  %358 = load i8, ptr %317, align 1, !tbaa !15
  %359 = zext i8 %358 to i32
  %360 = mul nuw nsw i32 %359, 5
  %361 = add nuw nsw i32 %345, 128
  %362 = add nsw i32 %361, %348
  %363 = add nsw i32 %362, %351
  %364 = add nsw i32 %363, %354
  %365 = add nsw i32 %364, %357
  %366 = add nsw i32 %365, %360
  %367 = ashr i32 %366, 8
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, ptr %340, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !15
  %371 = or i64 %161, 3
  %372 = mul nsw i64 %371, %33
  %373 = getelementptr inbounds i8, ptr %157, i64 %372
  store i8 %370, ptr %373, align 1, !tbaa !15
  %374 = icmp slt i64 %170, %35
  br i1 %374, label %159, label %375, !llvm.loop !64

375:                                              ; preds = %159, %155
  %376 = getelementptr inbounds i8, ptr %156, i64 1
  %377 = getelementptr inbounds i8, ptr %157, i64 1
  %378 = add nuw nsw i32 %158, 1
  %379 = icmp eq i32 %378, %42
  br i1 %379, label %380, label %155, !llvm.loop !65

380:                                              ; preds = %375, %150, %23, %10
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @store_ppm_tga(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #39
  %8 = load i32, ptr @chroma_format, align 4, !tbaa !7
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  store ptr %12, ptr @store_ppm_tga.u444, align 8, !tbaa !11
  %13 = getelementptr inbounds ptr, ptr %1, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  store ptr %14, ptr @store_ppm_tga.v444, align 8, !tbaa !11
  br label %78

15:                                               ; preds = %6
  %16 = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %62

18:                                               ; preds = %15
  %19 = icmp eq i32 %8, 1
  %20 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %21 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  br i1 %19, label %22, label %43

22:                                               ; preds = %18
  %23 = ashr i32 %20, 1
  %24 = mul nsw i32 %23, %21
  %25 = sext i32 %24 to i64
  %26 = tail call noalias ptr @malloc(i64 noundef %25) #37
  store ptr %26, ptr @store_ppm_tga.u422, align 8, !tbaa !11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  tail call void @Error(ptr noundef nonnull @.str.6.180) #32
  %29 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %30 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %31 = ashr i32 %29, 1
  %32 = mul nsw i32 %31, %30
  %33 = sext i32 %32 to i64
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i64 [ %33, %28 ], [ %25, %22 ]
  %36 = phi i32 [ %30, %28 ], [ %21, %22 ]
  %37 = phi i32 [ %29, %28 ], [ %20, %22 ]
  %38 = tail call noalias ptr @malloc(i64 noundef %35) #37
  store ptr %38, ptr @store_ppm_tga.v422, align 8, !tbaa !11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  tail call void @Error(ptr noundef nonnull @.str.6.180) #32
  %41 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %42 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  br label %43

43:                                               ; preds = %40, %34, %18
  %44 = phi i32 [ %36, %34 ], [ %42, %40 ], [ %21, %18 ]
  %45 = phi i32 [ %37, %34 ], [ %41, %40 ], [ %20, %18 ]
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = tail call noalias ptr @malloc(i64 noundef %47) #37
  store ptr %48, ptr @store_ppm_tga.u444, align 8, !tbaa !11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  tail call void @Error(ptr noundef nonnull @.str.6.180) #32
  %51 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %52 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %53 = mul nsw i32 %52, %51
  %54 = sext i32 %53 to i64
  br label %55

55:                                               ; preds = %50, %43
  %56 = phi i64 [ %54, %50 ], [ %47, %43 ]
  %57 = tail call noalias ptr @malloc(i64 noundef %56) #37
  store ptr %57, ptr @store_ppm_tga.v444, align 8, !tbaa !11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void @Error(ptr noundef nonnull @.str.6.180) #32
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, ptr @chroma_format, align 4, !tbaa !7
  br label %62

62:                                               ; preds = %60, %15
  %63 = phi i32 [ %61, %60 ], [ %8, %15 ]
  %64 = icmp eq i32 %63, 1
  %65 = getelementptr inbounds ptr, ptr %1, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  %67 = getelementptr inbounds ptr, ptr %1, i64 2
  br i1 %64, label %68, label %74

68:                                               ; preds = %62
  %69 = load ptr, ptr @store_ppm_tga.u422, align 8, !tbaa !11
  tail call fastcc void @conv420to422(ptr noundef %66, ptr noundef %69) #31
  %70 = load ptr, ptr %67, align 8, !tbaa !11
  %71 = load ptr, ptr @store_ppm_tga.v422, align 8, !tbaa !11
  tail call fastcc void @conv420to422(ptr noundef %70, ptr noundef %71) #31
  %72 = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !11
  tail call fastcc void @conv422to444(ptr noundef %69, ptr noundef %72) #31
  %73 = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !11
  tail call fastcc void @conv422to444(ptr noundef %71, ptr noundef %73) #31
  br label %78

74:                                               ; preds = %62
  %75 = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !11
  tail call fastcc void @conv422to444(ptr noundef %66, ptr noundef %75) #31
  %76 = load ptr, ptr %67, align 8, !tbaa !11
  %77 = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !11
  tail call fastcc void @conv422to444(ptr noundef %76, ptr noundef %77) #31
  br label %78

78:                                               ; preds = %74, %68, %10
  %79 = icmp eq i32 %5, 0
  %80 = select i1 %79, ptr @.str.9, ptr @.str.8
  %81 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %82 = getelementptr inbounds i8, ptr %0, i64 %81
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %82, ptr noundef nonnull align 1 dereferenceable(5) %80, i64 5, i1 false)
  %83 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load ptr, ptr @stdout, align 8, !tbaa !11
  %87 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #36
  %88 = icmp eq ptr %87, null
  %89 = getelementptr inbounds i8, ptr %87, i64 1
  %90 = select i1 %88, ptr %0, ptr %89
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.3.182, ptr noundef %90) #31
  br label %92

92:                                               ; preds = %85, %78
  %93 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 577, i32 noundef 438) #32
  store i32 %93, ptr @outfile, align 4, !tbaa !7
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %0) #32
  tail call void @Error(ptr noundef nonnull @Error_Text) #32
  br label %97

97:                                               ; preds = %95, %92
  store ptr @obfr, ptr @optr, align 8, !tbaa !11
  br i1 %79, label %127, label %98

98:                                               ; preds = %108, %97
  %99 = phi ptr [ %109, %108 ], [ @obfr, %97 ]
  %100 = phi i64 [ %110, %108 ], [ 0, %97 ]
  %101 = getelementptr inbounds [14 x i8], ptr @store_ppm_tga.tga24, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !15
  %103 = getelementptr inbounds i8, ptr %99, i64 1
  store ptr %103, ptr @optr, align 8, !tbaa !11
  store i8 %102, ptr %99, align 1, !tbaa !15
  %104 = icmp eq ptr %103, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, ptr @outfile, align 4, !tbaa !7
  %107 = tail call i64 @write(i32 noundef %106, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  store ptr @obfr, ptr @optr, align 8, !tbaa !11
  br label %108

108:                                              ; preds = %105, %98
  %109 = phi ptr [ %103, %98 ], [ @obfr, %105 ]
  %110 = add nuw nsw i64 %100, 1
  %111 = icmp eq i64 %110, 12
  br i1 %111, label %112, label %98, !llvm.loop !66

112:                                              ; preds = %108
  %113 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  tail call fastcc void @putword(i32 noundef %113) #31
  tail call fastcc void @putword(i32 noundef %4) #31
  %114 = load ptr, ptr @optr, align 8, !tbaa !11
  %115 = getelementptr inbounds i8, ptr %114, i64 1
  store ptr %115, ptr @optr, align 8, !tbaa !11
  store i8 24, ptr %114, align 1, !tbaa !15
  %116 = icmp eq ptr %115, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, ptr @outfile, align 4, !tbaa !7
  %119 = tail call i64 @write(i32 noundef %118, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  br label %120

120:                                              ; preds = %117, %112
  %121 = phi ptr [ %115, %112 ], [ @obfr, %117 ]
  %122 = getelementptr inbounds i8, ptr %121, i64 1
  store ptr %122, ptr @optr, align 8, !tbaa !11
  store i8 32, ptr %121, align 1, !tbaa !15
  %123 = icmp eq ptr %122, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %123, label %124, label %149

124:                                              ; preds = %120
  %125 = load i32, ptr @outfile, align 4, !tbaa !7
  %126 = tail call i64 @write(i32 noundef %125, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  store ptr @obfr, ptr @optr, align 8, !tbaa !11
  br label %149

127:                                              ; preds = %97
  %128 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  %129 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %128, i32 noundef %4) #32
  %130 = load i8, ptr %7, align 16, !tbaa !15
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %149, label %132

132:                                              ; preds = %127
  %133 = load ptr, ptr @optr, align 8, !tbaa !11
  br label %134

134:                                              ; preds = %143, %132
  %135 = phi ptr [ %133, %132 ], [ %144, %143 ]
  %136 = phi i64 [ 0, %132 ], [ %145, %143 ]
  %137 = phi i8 [ %130, %132 ], [ %147, %143 ]
  %138 = getelementptr inbounds i8, ptr %135, i64 1
  store ptr %138, ptr @optr, align 8, !tbaa !11
  store i8 %137, ptr %135, align 1, !tbaa !15
  %139 = icmp eq ptr %138, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, ptr @outfile, align 4, !tbaa !7
  %142 = tail call i64 @write(i32 noundef %141, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  store ptr @obfr, ptr @optr, align 8, !tbaa !11
  br label %143

143:                                              ; preds = %140, %134
  %144 = phi ptr [ %138, %134 ], [ @obfr, %140 ]
  %145 = add nuw i64 %136, 1
  %146 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !15
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %134, !llvm.loop !67

149:                                              ; preds = %143, %127, %124, %120
  %150 = load i32, ptr @matrix_coefficients, align 4, !tbaa !7
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [8 x [4 x i32]], ptr @Inverse_Table_6_9, i64 0, i64 %151
  %153 = load i32, ptr %152, align 16, !tbaa !7
  %154 = getelementptr inbounds [8 x [4 x i32]], ptr @Inverse_Table_6_9, i64 0, i64 %151, i64 1
  %155 = load i32, ptr %154, align 4, !tbaa !7
  %156 = getelementptr inbounds [8 x [4 x i32]], ptr @Inverse_Table_6_9, i64 0, i64 %151, i64 2
  %157 = load i32, ptr %156, align 8, !tbaa !7
  %158 = getelementptr inbounds [8 x [4 x i32]], ptr @Inverse_Table_6_9, i64 0, i64 %151, i64 3
  %159 = load i32, ptr %158, align 4, !tbaa !7
  %160 = icmp sgt i32 %4, 0
  br i1 %160, label %161, label %267

161:                                              ; preds = %149
  %162 = sext i32 %2 to i64
  %163 = sext i32 %3 to i64
  %164 = zext i32 %4 to i64
  %165 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  br label %166

166:                                              ; preds = %263, %161
  %167 = phi i32 [ %165, %161 ], [ %264, %263 ]
  %168 = phi i64 [ 0, %161 ], [ %265, %263 ]
  %169 = icmp sgt i32 %167, 0
  br i1 %169, label %170, label %263

170:                                              ; preds = %166
  %171 = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !11
  %172 = getelementptr inbounds i8, ptr %171, i64 %162
  %173 = mul nsw i64 %168, %163
  %174 = getelementptr inbounds i8, ptr %172, i64 %173
  %175 = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !11
  %176 = getelementptr inbounds i8, ptr %175, i64 %162
  %177 = getelementptr inbounds i8, ptr %176, i64 %173
  %178 = load ptr, ptr %1, align 8, !tbaa !11
  %179 = getelementptr inbounds i8, ptr %178, i64 %162
  %180 = getelementptr inbounds i8, ptr %179, i64 %173
  br label %181

181:                                              ; preds = %259, %170
  %182 = phi ptr [ %190, %259 ], [ %174, %170 ]
  %183 = phi ptr [ %186, %259 ], [ %177, %170 ]
  %184 = phi ptr [ %194, %259 ], [ %180, %170 ]
  %185 = phi i32 [ %260, %259 ], [ 0, %170 ]
  %186 = getelementptr inbounds i8, ptr %183, i64 1
  %187 = load i8, ptr %183, align 1, !tbaa !15
  %188 = zext i8 %187 to i32
  %189 = add nsw i32 %188, -128
  %190 = getelementptr inbounds i8, ptr %182, i64 1
  %191 = load i8, ptr %182, align 1, !tbaa !15
  %192 = zext i8 %191 to i32
  %193 = add nsw i32 %192, -128
  %194 = getelementptr inbounds i8, ptr %184, i64 1
  %195 = load i8, ptr %184, align 1, !tbaa !15
  %196 = zext i8 %195 to i32
  %197 = mul nuw nsw i32 %196, 76309
  %198 = add nsw i32 %197, -1220944
  %199 = load ptr, ptr @Clip, align 8, !tbaa !11
  %200 = mul nsw i32 %193, %153
  %201 = add i32 %200, 32768
  %202 = add i32 %201, %198
  %203 = ashr i32 %202, 16
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, ptr %199, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !15
  %207 = mul i32 %189, %157
  %208 = mul i32 %193, %159
  %209 = add i32 %208, %207
  %210 = add nsw i32 %197, -1188176
  %211 = sub i32 %210, %209
  %212 = ashr i32 %211, 16
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, ptr %199, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !15
  %216 = mul nsw i32 %189, %155
  %217 = add i32 %216, 32786
  %218 = add i32 %217, %198
  %219 = ashr i32 %218, 16
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, ptr %199, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !15
  %223 = load ptr, ptr @optr, align 8, !tbaa !11
  %224 = getelementptr inbounds i8, ptr %223, i64 1
  store ptr %224, ptr @optr, align 8, !tbaa !11
  %225 = icmp eq ptr %224, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %79, label %241, label %226

226:                                              ; preds = %181
  store i8 %222, ptr %223, align 1, !tbaa !15
  br i1 %225, label %227, label %230

227:                                              ; preds = %226
  %228 = load i32, ptr @outfile, align 4, !tbaa !7
  %229 = tail call i64 @write(i32 noundef %228, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  br label %230

230:                                              ; preds = %227, %226
  %231 = phi ptr [ %224, %226 ], [ @obfr, %227 ]
  %232 = getelementptr inbounds i8, ptr %231, i64 1
  store ptr %232, ptr @optr, align 8, !tbaa !11
  store i8 %215, ptr %231, align 1, !tbaa !15
  %233 = icmp eq ptr %232, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i32, ptr @outfile, align 4, !tbaa !7
  %236 = tail call i64 @write(i32 noundef %235, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  br label %237

237:                                              ; preds = %234, %230
  %238 = phi ptr [ %232, %230 ], [ @obfr, %234 ]
  %239 = getelementptr inbounds i8, ptr %238, i64 1
  store ptr %239, ptr @optr, align 8, !tbaa !11
  store i8 %206, ptr %238, align 1, !tbaa !15
  %240 = icmp eq ptr %239, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %240, label %256, label %259

241:                                              ; preds = %181
  store i8 %206, ptr %223, align 1, !tbaa !15
  br i1 %225, label %242, label %245

242:                                              ; preds = %241
  %243 = load i32, ptr @outfile, align 4, !tbaa !7
  %244 = tail call i64 @write(i32 noundef %243, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  br label %245

245:                                              ; preds = %242, %241
  %246 = phi ptr [ %224, %241 ], [ @obfr, %242 ]
  %247 = getelementptr inbounds i8, ptr %246, i64 1
  store ptr %247, ptr @optr, align 8, !tbaa !11
  store i8 %215, ptr %246, align 1, !tbaa !15
  %248 = icmp eq ptr %247, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load i32, ptr @outfile, align 4, !tbaa !7
  %251 = tail call i64 @write(i32 noundef %250, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  br label %252

252:                                              ; preds = %249, %245
  %253 = phi ptr [ %247, %245 ], [ @obfr, %249 ]
  %254 = getelementptr inbounds i8, ptr %253, i64 1
  store ptr %254, ptr @optr, align 8, !tbaa !11
  store i8 %222, ptr %253, align 1, !tbaa !15
  %255 = icmp eq ptr %254, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %255, label %256, label %259

256:                                              ; preds = %252, %237
  %257 = load i32, ptr @outfile, align 4, !tbaa !7
  %258 = tail call i64 @write(i32 noundef %257, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  store ptr @obfr, ptr @optr, align 8, !tbaa !11
  br label %259

259:                                              ; preds = %256, %252, %237
  %260 = add nuw nsw i32 %185, 1
  %261 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %181, label %263, !llvm.loop !68

263:                                              ; preds = %259, %166
  %264 = phi i32 [ %167, %166 ], [ %261, %259 ]
  %265 = add nuw nsw i64 %168, 1
  %266 = icmp eq i64 %265, %164
  br i1 %266, label %267, label %166, !llvm.loop !69

267:                                              ; preds = %263, %149
  %268 = load ptr, ptr @optr, align 8, !tbaa !11
  %269 = icmp eq ptr %268, @obfr
  br i1 %269, label %275, label %270

270:                                              ; preds = %267
  %271 = load i32, ptr @outfile, align 4, !tbaa !7
  %272 = ptrtoint ptr %268 to i64
  %273 = sub i64 %272, ptrtoint (ptr @obfr to i64)
  %274 = tail call i64 @write(i32 noundef %271, ptr noundef nonnull @obfr, i64 noundef %273) #32
  br label %275

275:                                              ; preds = %270, %267
  %276 = load i32, ptr @outfile, align 4, !tbaa !7
  %277 = tail call i32 @close(i32 noundef %276) #32
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #39
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @conv422to444(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #17 {
  %3 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %4 = ashr i32 %3, 1
  %5 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 16), align 8, !tbaa !28
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %8 = icmp sgt i32 %7, 0
  br i1 %6, label %21, label %9

9:                                                ; preds = %2
  br i1 %8, label %10, label %221

10:                                               ; preds = %9
  %11 = icmp sgt i32 %3, 1
  %12 = add nsw i32 %4, -1
  %13 = add nsw i32 %4, -2
  %14 = add nsw i32 %4, -3
  %15 = sext i32 %4 to i64
  %16 = sext i32 %12 to i64
  %17 = sext i32 %13 to i64
  %18 = sext i32 %14 to i64
  %19 = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  %20 = zext i32 %19 to i64
  br label %33

21:                                               ; preds = %2
  br i1 %8, label %22, label %221

22:                                               ; preds = %21
  %23 = icmp sgt i32 %3, 1
  %24 = add nsw i32 %4, -1
  %25 = add nsw i32 %4, -2
  %26 = add nsw i32 %4, -3
  %27 = sext i32 %4 to i64
  %28 = sext i32 %24 to i64
  %29 = sext i32 %25 to i64
  %30 = sext i32 %26 to i64
  %31 = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  %32 = zext i32 %31 to i64
  br label %110

33:                                               ; preds = %102, %10
  %34 = phi i32 [ %7, %10 ], [ %103, %102 ]
  %35 = phi i32 [ %3, %10 ], [ %104, %102 ]
  %36 = phi ptr [ %0, %10 ], [ %105, %102 ]
  %37 = phi i32 [ 0, %10 ], [ %108, %102 ]
  %38 = phi ptr [ %1, %10 ], [ %107, %102 ]
  br i1 %11, label %39, label %102

39:                                               ; preds = %39, %33
  %40 = phi i64 [ %46, %39 ], [ 0, %33 ]
  %41 = shl nuw i64 %40, 1
  %42 = trunc i64 %40 to i32
  %43 = tail call i32 @llvm.usub.sat.i32(i32 %42, i32 2)
  %44 = tail call i32 @llvm.usub.sat.i32(i32 %42, i32 1)
  %45 = icmp slt i64 %40, %16
  %46 = add nuw nsw i64 %40, 1
  %47 = trunc i64 %46 to i32
  %48 = select i1 %45, i32 %47, i32 %12
  %49 = icmp slt i64 %40, %17
  %50 = trunc i64 %40 to i32
  %51 = add i32 %50, 2
  %52 = select i1 %49, i32 %51, i32 %12
  %53 = icmp slt i64 %40, %18
  %54 = trunc i64 %40 to i32
  %55 = add i32 %54, 3
  %56 = select i1 %53, i32 %55, i32 %12
  %57 = getelementptr inbounds i8, ptr %36, i64 %40
  %58 = load i8, ptr %57, align 1, !tbaa !15
  %59 = getelementptr inbounds i8, ptr %38, i64 %41
  store i8 %58, ptr %59, align 1, !tbaa !15
  %60 = load ptr, ptr @Clip, align 8, !tbaa !11
  %61 = zext i32 %43 to i64
  %62 = getelementptr inbounds i8, ptr %36, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !15
  %64 = zext i8 %63 to i32
  %65 = sext i32 %56 to i64
  %66 = getelementptr inbounds i8, ptr %36, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !15
  %68 = zext i8 %67 to i32
  %69 = add nuw nsw i32 %68, %64
  %70 = mul nuw nsw i32 %69, 21
  %71 = zext i32 %44 to i64
  %72 = getelementptr inbounds i8, ptr %36, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !15
  %74 = zext i8 %73 to i32
  %75 = sext i32 %52 to i64
  %76 = getelementptr inbounds i8, ptr %36, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !15
  %78 = zext i8 %77 to i32
  %79 = add nuw nsw i32 %78, %74
  %80 = mul nsw i32 %79, -52
  %81 = load i8, ptr %57, align 1, !tbaa !15
  %82 = zext i8 %81 to i32
  %83 = sext i32 %48 to i64
  %84 = getelementptr inbounds i8, ptr %36, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !15
  %86 = zext i8 %85 to i32
  %87 = add nuw nsw i32 %86, %82
  %88 = mul nuw nsw i32 %87, 159
  %89 = add nuw nsw i32 %70, 128
  %90 = add nsw i32 %89, %80
  %91 = add nsw i32 %90, %88
  %92 = ashr i32 %91, 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %60, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !15
  %96 = or i64 %41, 1
  %97 = getelementptr inbounds i8, ptr %38, i64 %96
  store i8 %95, ptr %97, align 1, !tbaa !15
  %98 = icmp eq i64 %46, %20
  br i1 %98, label %99, label %39, !llvm.loop !70

99:                                               ; preds = %39
  %100 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %101 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  br label %102

102:                                              ; preds = %99, %33
  %103 = phi i32 [ %101, %99 ], [ %34, %33 ]
  %104 = phi i32 [ %100, %99 ], [ %35, %33 ]
  %105 = getelementptr inbounds i8, ptr %36, i64 %15
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, ptr %38, i64 %106
  %108 = add nuw nsw i32 %37, 1
  %109 = icmp slt i32 %108, %103
  br i1 %109, label %33, label %221, !llvm.loop !71

110:                                              ; preds = %213, %22
  %111 = phi i32 [ %7, %22 ], [ %214, %213 ]
  %112 = phi i32 [ %3, %22 ], [ %215, %213 ]
  %113 = phi ptr [ %0, %22 ], [ %216, %213 ]
  %114 = phi i32 [ 0, %22 ], [ %219, %213 ]
  %115 = phi ptr [ %1, %22 ], [ %218, %213 ]
  br i1 %23, label %116, label %213

116:                                              ; preds = %116, %110
  %117 = phi i64 [ %124, %116 ], [ 0, %110 ]
  %118 = shl nuw i64 %117, 1
  %119 = trunc i64 %117 to i32
  %120 = tail call i32 @llvm.usub.sat.i32(i32 %119, i32 3)
  %121 = tail call i32 @llvm.usub.sat.i32(i32 %119, i32 2)
  %122 = tail call i32 @llvm.usub.sat.i32(i32 %119, i32 1)
  %123 = icmp slt i64 %117, %28
  %124 = add nuw nsw i64 %117, 1
  %125 = trunc i64 %124 to i32
  %126 = select i1 %123, i32 %125, i32 %24
  %127 = icmp slt i64 %117, %29
  %128 = trunc i64 %117 to i32
  %129 = add i32 %128, 2
  %130 = select i1 %127, i32 %129, i32 %24
  %131 = icmp slt i64 %117, %30
  %132 = trunc i64 %117 to i32
  %133 = add i32 %132, 3
  %134 = select i1 %131, i32 %133, i32 %24
  %135 = load ptr, ptr @Clip, align 8, !tbaa !11
  %136 = zext i32 %120 to i64
  %137 = getelementptr inbounds i8, ptr %113, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !15
  %139 = zext i8 %138 to i32
  %140 = mul nuw nsw i32 %139, 5
  %141 = zext i32 %121 to i64
  %142 = getelementptr inbounds i8, ptr %113, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !15
  %144 = zext i8 %143 to i32
  %145 = mul nsw i32 %144, -21
  %146 = zext i32 %122 to i64
  %147 = getelementptr inbounds i8, ptr %113, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !15
  %149 = zext i8 %148 to i32
  %150 = mul nuw nsw i32 %149, 70
  %151 = getelementptr inbounds i8, ptr %113, i64 %117
  %152 = load i8, ptr %151, align 1, !tbaa !15
  %153 = zext i8 %152 to i32
  %154 = mul nuw nsw i32 %153, 228
  %155 = sext i32 %126 to i64
  %156 = getelementptr inbounds i8, ptr %113, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !15
  %158 = zext i8 %157 to i32
  %159 = mul nsw i32 %158, -37
  %160 = sext i32 %130 to i64
  %161 = getelementptr inbounds i8, ptr %113, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !15
  %163 = zext i8 %162 to i32
  %164 = mul nuw nsw i32 %163, 11
  %165 = add nuw nsw i32 %140, 128
  %166 = add nsw i32 %165, %145
  %167 = add nsw i32 %166, %150
  %168 = add nsw i32 %167, %154
  %169 = add nsw i32 %168, %159
  %170 = add nsw i32 %169, %164
  %171 = ashr i32 %170, 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, ptr %135, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !15
  %175 = getelementptr inbounds i8, ptr %115, i64 %118
  store i8 %174, ptr %175, align 1, !tbaa !15
  %176 = load ptr, ptr @Clip, align 8, !tbaa !11
  %177 = sext i32 %134 to i64
  %178 = getelementptr inbounds i8, ptr %113, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !15
  %180 = zext i8 %179 to i32
  %181 = mul nuw nsw i32 %180, 5
  %182 = load i8, ptr %161, align 1, !tbaa !15
  %183 = zext i8 %182 to i32
  %184 = mul nsw i32 %183, -21
  %185 = load i8, ptr %156, align 1, !tbaa !15
  %186 = zext i8 %185 to i32
  %187 = mul nuw nsw i32 %186, 70
  %188 = load i8, ptr %151, align 1, !tbaa !15
  %189 = zext i8 %188 to i32
  %190 = mul nuw nsw i32 %189, 228
  %191 = load i8, ptr %147, align 1, !tbaa !15
  %192 = zext i8 %191 to i32
  %193 = mul nsw i32 %192, -37
  %194 = load i8, ptr %142, align 1, !tbaa !15
  %195 = zext i8 %194 to i32
  %196 = mul nuw nsw i32 %195, 11
  %197 = add nuw nsw i32 %181, 128
  %198 = add nsw i32 %197, %184
  %199 = add nsw i32 %198, %187
  %200 = add nsw i32 %199, %190
  %201 = add nsw i32 %200, %193
  %202 = add nsw i32 %201, %196
  %203 = ashr i32 %202, 8
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, ptr %176, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !15
  %207 = or i64 %118, 1
  %208 = getelementptr inbounds i8, ptr %115, i64 %207
  store i8 %206, ptr %208, align 1, !tbaa !15
  %209 = icmp eq i64 %124, %32
  br i1 %209, label %210, label %116, !llvm.loop !72

210:                                              ; preds = %116
  %211 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %212 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  br label %213

213:                                              ; preds = %210, %110
  %214 = phi i32 [ %212, %210 ], [ %111, %110 ]
  %215 = phi i32 [ %211, %210 ], [ %112, %110 ]
  %216 = getelementptr inbounds i8, ptr %113, i64 %27
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i8, ptr %115, i64 %217
  %219 = add nuw nsw i32 %114, 1
  %220 = icmp slt i32 %219, %214
  br i1 %220, label %110, label %221, !llvm.loop !73

221:                                              ; preds = %213, %102, %21, %9
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @putword(i32 noundef %0) unnamed_addr #20 {
  %2 = trunc i32 %0 to i8
  %3 = load ptr, ptr @optr, align 8, !tbaa !11
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %4, ptr @optr, align 8, !tbaa !11
  store i8 %2, ptr %3, align 1, !tbaa !15
  %5 = icmp eq ptr %4, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, ptr @outfile, align 4, !tbaa !7
  %8 = tail call i64 @write(i32 noundef %7, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %4, %1 ], [ @obfr, %6 ]
  %11 = lshr i32 %0, 8
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %13, ptr @optr, align 8, !tbaa !11
  store i8 %12, ptr %10, align 1, !tbaa !15
  %14 = icmp eq ptr %13, getelementptr inbounds ([4096 x i8], ptr @obfr, i64 1, i64 0)
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, ptr @outfile, align 4, !tbaa !7
  %17 = tail call i64 @write(i32 noundef %16, ptr noundef nonnull @obfr, i64 noundef 4096) #32
  store ptr @obfr, ptr @optr, align 8, !tbaa !11
  br label %18

18:                                               ; preds = %15, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal void @Initialize_Buffer() #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 6
  store i32 0, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 1, i64 2048
  %4 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 5
  store ptr %3, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !76
  tail call void @Flush_Buffer(i32 noundef 0) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Flush_Buffer(i32 noundef %0) #0 {
  %2 = load ptr, ptr @ld, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.layer_data, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = shl i32 %4, %0
  store i32 %5, ptr %3, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.layer_data, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !26
  %8 = sub nsw i32 %7, %0
  store i32 %8, ptr %6, align 8, !tbaa !26
  %9 = icmp slt i32 %8, 25
  br i1 %9, label %10, label %83

10:                                               ; preds = %1
  %11 = load i32, ptr @System_Stream_Flag, align 4, !tbaa !7
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.layer_data, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  br i1 %12, label %39, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.layer_data, ptr %2, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = getelementptr inbounds i8, ptr %17, i64 -4
  %19 = icmp ult ptr %14, %18
  br i1 %19, label %39, label %20

20:                                               ; preds = %29, %15
  %21 = phi ptr [ %33, %29 ], [ %2, %15 ]
  %22 = phi i32 [ %37, %29 ], [ %8, %15 ]
  %23 = getelementptr inbounds %struct.layer_data, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = getelementptr inbounds %struct.layer_data, ptr %21, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = icmp ult ptr %24, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  tail call void @Next_Packet() #32
  br label %29

29:                                               ; preds = %28, %20
  %30 = tail call i32 @Get_Byte() #31, !range !77
  %31 = sub nsw i32 24, %22
  %32 = shl i32 %30, %31
  %33 = load ptr, ptr @ld, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.layer_data, ptr %33, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !76
  %36 = or i32 %35, %32
  store i32 %36, ptr %34, align 8, !tbaa !76
  %37 = add nsw i32 %22, 8
  %38 = icmp slt i32 %22, 17
  br i1 %38, label %20, label %79, !llvm.loop !78

39:                                               ; preds = %15, %10
  %40 = getelementptr inbounds %struct.layer_data, ptr %2, i64 0, i32 2
  %41 = getelementptr inbounds %struct.layer_data, ptr %2, i64 0, i32 1, i64 2044
  %42 = icmp ult ptr %14, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %43, %39
  %44 = phi i32 [ %52, %43 ], [ %5, %39 ]
  %45 = phi ptr [ %47, %43 ], [ %14, %39 ]
  %46 = phi i32 [ %53, %43 ], [ %8, %39 ]
  %47 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %47, ptr %40, align 8, !tbaa !74
  %48 = load i8, ptr %45, align 1, !tbaa !15
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 24, %46
  %51 = shl i32 %49, %50
  %52 = or i32 %51, %44
  store i32 %52, ptr %3, align 8, !tbaa !76
  %53 = add nsw i32 %46, 8
  %54 = icmp slt i32 %46, 17
  br i1 %54, label %43, label %79, !llvm.loop !79

55:                                               ; preds = %65, %39
  %56 = phi ptr [ %67, %65 ], [ %2, %39 ]
  %57 = phi ptr [ %69, %65 ], [ %14, %39 ]
  %58 = phi i32 [ %77, %65 ], [ %8, %39 ]
  %59 = getelementptr inbounds %struct.layer_data, ptr %56, i64 0, i32 1, i64 2048
  %60 = icmp ult ptr %57, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  tail call void @Fill_Buffer() #31
  %62 = load ptr, ptr @ld, align 8, !tbaa !11
  %63 = getelementptr inbounds %struct.layer_data, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !74
  br label %65

65:                                               ; preds = %61, %55
  %66 = phi ptr [ %64, %61 ], [ %57, %55 ]
  %67 = phi ptr [ %62, %61 ], [ %56, %55 ]
  %68 = getelementptr inbounds %struct.layer_data, ptr %67, i64 0, i32 2
  %69 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %69, ptr %68, align 8, !tbaa !74
  %70 = load i8, ptr %66, align 1, !tbaa !15
  %71 = zext i8 %70 to i32
  %72 = sub nsw i32 24, %58
  %73 = shl i32 %71, %72
  %74 = getelementptr inbounds %struct.layer_data, ptr %67, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !76
  %76 = or i32 %73, %75
  store i32 %76, ptr %74, align 8, !tbaa !76
  %77 = add nsw i32 %58, 8
  %78 = icmp slt i32 %58, 17
  br i1 %78, label %55, label %79, !llvm.loop !80

79:                                               ; preds = %65, %43, %29
  %80 = phi ptr [ %2, %43 ], [ %67, %65 ], [ %33, %29 ]
  %81 = phi i32 [ %53, %43 ], [ %77, %65 ], [ %37, %29 ]
  %82 = getelementptr inbounds %struct.layer_data, ptr %80, i64 0, i32 6
  store i32 %81, ptr %82, align 8, !tbaa !26
  br label %83

83:                                               ; preds = %79, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @Get_Byte() #20 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 1, i64 2048
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %6, %0
  %7 = phi ptr [ %11, %6 ], [ %1, %0 ]
  %8 = getelementptr inbounds %struct.layer_data, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %7, align 8, !tbaa !53
  %10 = tail call i64 @read(i32 noundef %9, ptr noundef nonnull %8, i64 noundef 2048) #32
  %11 = load ptr, ptr @ld, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.layer_data, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = getelementptr inbounds i8, ptr %13, i64 -2048
  store ptr %14, ptr %12, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.layer_data, ptr %11, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = getelementptr inbounds i8, ptr %16, i64 -2048
  store ptr %17, ptr %15, align 8, !tbaa !75
  %18 = getelementptr inbounds %struct.layer_data, ptr %11, i64 0, i32 1, i64 2048
  %19 = icmp ult ptr %14, %18
  br i1 %19, label %20, label %6, !llvm.loop !81

20:                                               ; preds = %6, %0
  %21 = phi ptr [ %1, %0 ], [ %11, %6 ]
  %22 = phi ptr [ %3, %0 ], [ %14, %6 ]
  %23 = getelementptr inbounds %struct.layer_data, ptr %21, i64 0, i32 2
  %24 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %24, ptr %23, align 8, !tbaa !74
  %25 = load i8, ptr %22, align 1, !tbaa !15
  %26 = zext i8 %25 to i32
  ret i32 %26
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @Fill_Buffer() #20 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !11
  %2 = load i32, ptr %1, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 1
  %4 = tail call i64 @read(i32 noundef %2, ptr noundef nonnull %3, i64 noundef 2048) #32
  %5 = trunc i64 %4 to i32
  %6 = load ptr, ptr @ld, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.layer_data, ptr %6, i64 0, i32 1
  %8 = getelementptr inbounds %struct.layer_data, ptr %6, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !74
  %9 = load i32, ptr @System_Stream_Flag, align 4, !tbaa !7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.layer_data, ptr %6, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = getelementptr inbounds i8, ptr %13, i64 -2048
  store ptr %14, ptr %12, align 8, !tbaa !75
  br label %15

15:                                               ; preds = %11, %0
  %16 = icmp slt i32 %5, 2048
  br i1 %16, label %17, label %51

17:                                               ; preds = %15
  %18 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %19 = and i32 %18, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = zext i32 %18 to i64
  br label %28

23:                                               ; preds = %28
  %.lcssa = phi i32 [ %33, %28 ]
  %24 = icmp ult i32 %.lcssa, 2048
  br i1 %24, label %25, label %51

25:                                               ; preds = %23, %17
  %26 = phi i32 [ %.lcssa, %23 ], [ %18, %17 ]
  %27 = zext i32 %26 to i64
  br label %36

28:                                               ; preds = %28, %21
  %29 = phi i64 [ %22, %21 ], [ %31, %28 ]
  %30 = load ptr, ptr @ld, align 8, !tbaa !11
  %31 = add nuw nsw i64 %29, 1
  %32 = getelementptr inbounds %struct.layer_data, ptr %30, i64 0, i32 1, i64 %29
  store i8 0, ptr %32, align 1, !tbaa !15
  %33 = trunc i64 %31 to i32
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %23, label %28, !llvm.loop !82

36:                                               ; preds = %36, %25
  %37 = phi i64 [ %27, %25 ], [ %48, %36 ]
  %38 = load ptr, ptr @ld, align 8, !tbaa !11
  %39 = add nuw nsw i64 %37, 1
  %40 = getelementptr inbounds %struct.layer_data, ptr %38, i64 0, i32 1, i64 %37
  store i8 0, ptr %40, align 1, !tbaa !15
  %41 = load ptr, ptr @ld, align 8, !tbaa !11
  %42 = add nuw nsw i64 %37, 2
  %43 = getelementptr inbounds %struct.layer_data, ptr %41, i64 0, i32 1, i64 %39
  store i8 0, ptr %43, align 1, !tbaa !15
  %44 = load ptr, ptr @ld, align 8, !tbaa !11
  %45 = add nuw nsw i64 %37, 3
  %46 = getelementptr inbounds %struct.layer_data, ptr %44, i64 0, i32 1, i64 %42
  store i8 1, ptr %46, align 1, !tbaa !15
  %47 = load ptr, ptr @ld, align 8, !tbaa !11
  %48 = add nuw nsw i64 %37, 4
  %49 = getelementptr inbounds %struct.layer_data, ptr %47, i64 0, i32 1, i64 %45
  store i8 -73, ptr %49, align 1, !tbaa !15
  %50 = icmp ult i64 %37, 2044
  br i1 %50, label %36, label %51, !llvm.loop !83

51:                                               ; preds = %36, %23, %15
  ret void
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @Get_Word() #20 {
  %1 = tail call i32 @Get_Byte() #31, !range !77
  %2 = shl nuw nsw i32 %1, 8
  %3 = tail call i32 @Get_Byte() #31, !range !77
  %4 = or i32 %2, %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @Show_Bits(i32 noundef %0) #21 {
  %2 = load ptr, ptr @ld, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.layer_data, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = sub nsw i32 32, %0
  %6 = lshr i32 %4, %5
  ret i32 %6
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @Get_Bits1() #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !76
  %4 = lshr i32 %3, 31
  tail call void @Flush_Buffer(i32 noundef 1) #31
  ret i32 %4
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @Get_Bits(i32 noundef %0) #0 {
  %2 = load ptr, ptr @ld, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.layer_data, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = sub nsw i32 32, %0
  %6 = lshr i32 %4, %5
  tail call void @Flush_Buffer(i32 noundef %0) #31
  ret i32 %6
}

; Function Attrs: nounwind optsize uwtable
define internal void @Decode_Picture(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca [2 x [2 x [2 x i32]]], align 16
  %15 = alloca [2 x [2 x i32]], align 16
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %20 = icmp eq i32 %19, 3
  %21 = load i32, ptr @Second_Field, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.195)
  store i32 0, ptr @Second_Field, align 4, !tbaa !7
  %26 = load i32, ptr @picture_structure, align 4, !tbaa !7
  br label %27

27:                                               ; preds = %24, %2
  %28 = phi i32 [ %26, %24 ], [ %19, %2 ]
  %29 = phi i32 [ 0, %24 ], [ %21, %2 ]
  %30 = load i32, ptr @picture_coding_type, align 4, !tbaa !7
  %31 = icmp eq i32 %30, 3
  %32 = icmp eq i32 %28, 2
  %33 = icmp eq i32 %29, 0
  %34 = load i32, ptr @Coded_Picture_Width, align 4
  %35 = load i32, ptr @Chroma_Width, align 4
  br label %36

36:                                               ; preds = %50, %27
  %37 = phi i64 [ 0, %27 ], [ %58, %50 ]
  br i1 %31, label %38, label %41

38:                                               ; preds = %36
  %39 = getelementptr inbounds [3 x ptr], ptr @auxframe, i64 0, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  br label %50

41:                                               ; preds = %36
  br i1 %33, label %45, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds [3 x ptr], ptr @backward_reference_frame, i64 0, i64 %37
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  br label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds [3 x ptr], ptr @forward_reference_frame, i64 0, i64 %37
  %47 = load ptr, ptr %46, align 8, !tbaa !11
  %48 = getelementptr inbounds [3 x ptr], ptr @backward_reference_frame, i64 0, i64 %37
  %49 = load ptr, ptr %48, align 8, !tbaa !11
  store ptr %49, ptr %46, align 8, !tbaa !11
  store ptr %47, ptr %48, align 8, !tbaa !11
  br label %50

50:                                               ; preds = %45, %42, %38
  %51 = phi ptr [ %40, %38 ], [ %44, %42 ], [ %47, %45 ]
  %52 = getelementptr inbounds [3 x ptr], ptr @current_frame, i64 0, i64 %37
  %53 = icmp eq i64 %37, 0
  %54 = select i1 %53, i32 %34, i32 %35
  %55 = select i1 %32, i32 %54, i32 0
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %51, i64 %56
  store ptr %57, ptr %52, align 8, !tbaa !11
  %58 = add nuw nsw i64 %37, 1
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %60, label %36, !llvm.loop !84

60:                                               ; preds = %50
  %61 = load i32, ptr @Ersatz_Flag, align 4, !tbaa !7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  tail call void @Substitute_Frame_Buffer(i32 noundef %0, i32 noundef %1) #32
  %64 = load i32, ptr @Second_Field, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i32 [ %64, %63 ], [ %29, %60 ]
  %67 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 20), align 8, !tbaa !25
  %68 = icmp eq i32 %67, 0
  %69 = icmp ne i32 %66, 0
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  tail call void @Spatial_Prediction() #32
  br label %72

72:                                               ; preds = %71, %65
  %73 = load i32, ptr @mb_width, align 4, !tbaa !7
  %74 = load i32, ptr @mb_height, align 4, !tbaa !7
  %75 = mul nsw i32 %74, %73
  %76 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %77 = icmp ne i32 %76, 3
  %78 = zext i1 %77 to i32
  %79 = ashr i32 %75, %78
  %80 = getelementptr inbounds i32, ptr %13, i64 2
  %81 = getelementptr inbounds i32, ptr %13, i64 1
  %82 = getelementptr inbounds [2 x [2 x i32]], ptr %14, i64 1
  %83 = getelementptr inbounds [2 x [2 x i32]], ptr %14, i64 1, i64 0, i64 1
  %84 = getelementptr inbounds [2 x i32], ptr %14, i64 0, i64 1
  %85 = getelementptr inbounds [2 x i32], ptr %15, i64 0, i64 1
  %86 = getelementptr inbounds [2 x [2 x i32]], ptr %14, i64 0, i64 1
  br label %87

87:                                               ; preds = %767, %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #39
  store ptr @base, ptr @ld, align 8, !tbaa !11
  store i32 0, ptr @Fault_Flag, align 4, !tbaa !7
  call void @next_start_code() #32
  %88 = call i32 @Show_Bits(i32 noundef 32) #32
  %89 = add i32 %88, -432
  %90 = icmp ult i32 %89, -175
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %768, label %771

94:                                               ; preds = %87
  call void @Flush_Buffer32() #32
  %95 = call i32 @slice_header() #32
  %96 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  store ptr @enhan, ptr @ld, align 8, !tbaa !11
  call void @next_start_code() #32
  %99 = call i32 @Show_Bits(i32 noundef 32) #32
  %100 = add i32 %99, -432
  %101 = icmp ult i32 %100, -175
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %768, label %771

105:                                              ; preds = %98
  call void @Flush_Buffer32() #32
  %106 = call i32 @slice_header() #32
  %107 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 21), align 4, !tbaa !44
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store ptr @base, ptr @ld, align 8, !tbaa !11
  br label %110

110:                                              ; preds = %109, %105, %94
  %111 = phi i32 [ %99, %109 ], [ %99, %105 ], [ %88, %94 ]
  %112 = phi i32 [ %106, %109 ], [ %106, %105 ], [ %95, %94 ]
  %113 = call i32 @Get_macroblock_address_increment() #32
  %114 = load i32, ptr @Fault_Flag, align 4, !tbaa !7
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %110
  %117 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  br label %767

118:                                              ; preds = %110
  %119 = shl i32 %112, 7
  %120 = and i32 %111, 255
  %121 = add nsw i32 %120, -1
  %122 = add i32 %121, %119
  %123 = load i32, ptr @mb_width, align 4, !tbaa !7
  %124 = mul i32 %123, %122
  %125 = add i32 %113, -1
  %126 = add i32 %125, %124
  store i32 0, ptr %80, align 4, !tbaa !7
  store i32 0, ptr %81, align 4, !tbaa !7
  store i32 0, ptr %13, align 4, !tbaa !7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  store i32 0, ptr @Fault_Flag, align 4, !tbaa !7
  %127 = icmp slt i32 %126, %79
  br i1 %127, label %128, label %771

128:                                              ; preds = %754, %118
  %129 = phi i32 [ %755, %754 ], [ %126, %118 ]
  %130 = phi i32 [ %756, %754 ], [ 1, %118 ]
  %131 = phi i32 [ %763, %754 ], [ 0, %118 ]
  %132 = phi i32 [ %765, %754 ], [ 0, %118 ]
  store ptr @base, ptr @ld, align 8, !tbaa !11
  %133 = icmp eq i32 %130, 0
  br i1 %133, label %134, label %159

134:                                              ; preds = %128
  %135 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %136 = icmp eq i32 %135, 1
  %137 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 21), align 4
  %138 = icmp eq i32 %137, 1
  %139 = select i1 %136, i1 %138, i1 false
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store ptr @enhan, ptr @ld, align 8, !tbaa !11
  br label %141

141:                                              ; preds = %140, %134
  %142 = call i32 @Show_Bits(i32 noundef 23) #32
  %143 = icmp eq i32 %142, 0
  %144 = load i32, ptr @Fault_Flag, align 4
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %143, i1 true, i1 %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %358, %155, %141
  store i32 0, ptr @Fault_Flag, align 4, !tbaa !7
  br label %767

148:                                              ; preds = %141
  %149 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %150 = icmp eq i32 %149, 1
  %151 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 21), align 4
  %152 = icmp eq i32 %151, 1
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store ptr @enhan, ptr @ld, align 8, !tbaa !11
  br label %155

155:                                              ; preds = %154, %148
  %156 = call i32 @Get_macroblock_address_increment() #32
  %157 = load i32, ptr @Fault_Flag, align 4, !tbaa !7
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %147

159:                                              ; preds = %155, %128
  %160 = phi i32 [ %156, %155 ], [ %130, %128 ]
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %360

162:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #39
  %163 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 21), align 4, !tbaa !44
  %167 = icmp slt i32 %166, 3
  %168 = select i1 %167, ptr @enhan, ptr @base
  store ptr %168, ptr @ld, align 8, !tbaa !11
  br label %169

169:                                              ; preds = %165, %162
  call fastcc void @macroblock_modes(ptr noundef nonnull %10, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %12) #31
  %170 = load i32, ptr @Fault_Flag, align 4, !tbaa !7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %358

172:                                              ; preds = %169
  %173 = load i32, ptr %10, align 4, !tbaa !7
  %174 = and i32 %173, 16
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %199, label %176

176:                                              ; preds = %172
  %177 = call i32 @Get_Bits(i32 noundef 5) #32
  %178 = load ptr, ptr @ld, align 8, !tbaa !11
  %179 = getelementptr inbounds %struct.layer_data, ptr %178, i64 0, i32 16
  %180 = load i32, ptr %179, align 8, !tbaa !28
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.layer_data, ptr %178, i64 0, i32 18
  %184 = load i32, ptr %183, align 8, !tbaa !39
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %182
  %187 = sext i32 %177 to i64
  %188 = getelementptr inbounds [32 x i8], ptr @Non_Linear_quantizer_scale, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !15
  %190 = zext i8 %189 to i32
  br label %193

191:                                              ; preds = %182
  %192 = shl i32 %177, 1
  br label %193

193:                                              ; preds = %191, %186, %176
  %194 = phi i32 [ %190, %186 ], [ %192, %191 ], [ %177, %176 ]
  %195 = getelementptr inbounds %struct.layer_data, ptr %178, i64 0, i32 22
  store i32 %194, ptr %195, align 8, !tbaa !45
  %196 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  store i32 %194, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 22), align 8, !tbaa !45
  br label %199

199:                                              ; preds = %198, %193, %172
  %200 = and i32 %173, 8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = and i32 %173, 1
  %204 = icmp ne i32 %203, 0
  %205 = load i32, ptr @concealment_motion_vectors, align 4
  %206 = icmp ne i32 %205, 0
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %208, label %226

208:                                              ; preds = %202, %199
  %209 = load ptr, ptr @ld, align 8, !tbaa !11
  %210 = getelementptr inbounds %struct.layer_data, ptr %209, i64 0, i32 16
  %211 = load i32, ptr %210, align 8, !tbaa !28
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %222, label %213

213:                                              ; preds = %208
  %214 = load i32, ptr %6, align 4, !tbaa !7
  %215 = load i32, ptr %7, align 4, !tbaa !7
  %216 = load i32, ptr @f_code, align 16, !tbaa !7
  %217 = add nsw i32 %216, -1
  %218 = load i32, ptr getelementptr inbounds ([2 x [2 x i32]], ptr @f_code, i64 0, i64 0, i64 1), align 4, !tbaa !7
  %219 = add nsw i32 %218, -1
  %220 = load i32, ptr %8, align 4, !tbaa !7
  %221 = load i32, ptr %9, align 4, !tbaa !7
  call void @motion_vectors(ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %15, i32 noundef 0, i32 noundef %214, i32 noundef %215, i32 noundef %217, i32 noundef %219, i32 noundef %220, i32 noundef %221) #32
  br label %226

222:                                              ; preds = %208
  %223 = load i32, ptr @forward_f_code, align 4, !tbaa !7
  %224 = add nsw i32 %223, -1
  %225 = load i32, ptr @full_pel_forward_vector, align 4, !tbaa !7
  call void @motion_vector(ptr noundef nonnull %14, ptr noundef nonnull %16, i32 noundef %224, i32 noundef %224, i32 noundef 0, i32 noundef 0, i32 noundef %225) #32
  br label %226

226:                                              ; preds = %222, %213, %202
  %227 = load i32, ptr @Fault_Flag, align 4, !tbaa !7
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %358

229:                                              ; preds = %226
  %230 = and i32 %173, 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %252, label %232

232:                                              ; preds = %229
  %233 = load ptr, ptr @ld, align 8, !tbaa !11
  %234 = getelementptr inbounds %struct.layer_data, ptr %233, i64 0, i32 16
  %235 = load i32, ptr %234, align 8, !tbaa !28
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %232
  %238 = load i32, ptr %6, align 4, !tbaa !7
  %239 = load i32, ptr %7, align 4, !tbaa !7
  %240 = load i32, ptr getelementptr inbounds ([2 x [2 x i32]], ptr @f_code, i64 0, i64 1), align 8, !tbaa !7
  %241 = add nsw i32 %240, -1
  %242 = load i32, ptr getelementptr inbounds ([2 x [2 x i32]], ptr @f_code, i64 0, i64 1, i64 1), align 4, !tbaa !7
  %243 = add nsw i32 %242, -1
  %244 = load i32, ptr %9, align 4, !tbaa !7
  call void @motion_vectors(ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %15, i32 noundef 1, i32 noundef %238, i32 noundef %239, i32 noundef %241, i32 noundef %243, i32 noundef 0, i32 noundef %244) #32
  br label %249

245:                                              ; preds = %232
  %246 = load i32, ptr @backward_f_code, align 4, !tbaa !7
  %247 = add nsw i32 %246, -1
  %248 = load i32, ptr @full_pel_backward_vector, align 4, !tbaa !7
  call void @motion_vector(ptr noundef nonnull %86, ptr noundef nonnull %16, i32 noundef %247, i32 noundef %247, i32 noundef 0, i32 noundef 0, i32 noundef %248) #32
  br label %249

249:                                              ; preds = %245, %237
  %250 = load i32, ptr @Fault_Flag, align 4, !tbaa !7
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %358

252:                                              ; preds = %249, %229
  %253 = and i32 %173, 1
  %254 = icmp ne i32 %253, 0
  %255 = load i32, ptr @concealment_motion_vectors, align 4
  %256 = icmp ne i32 %255, 0
  %257 = select i1 %254, i1 %256, i1 false
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  call void @Flush_Buffer(i32 noundef 1) #32
  br label %259

259:                                              ; preds = %258, %252
  %260 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %261 = icmp eq i32 %260, 1
  %262 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 21), align 4
  %263 = icmp eq i32 %262, 3
  %264 = select i1 %261, i1 %263, i1 false
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  store ptr @enhan, ptr @ld, align 8, !tbaa !11
  br label %266

266:                                              ; preds = %265, %259
  %267 = and i32 %173, 2
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %280, label %269

269:                                              ; preds = %266
  %270 = call i32 @Get_coded_block_pattern() #32
  %271 = load i32, ptr @chroma_format, align 4, !tbaa !7
  switch i32 %271, label %286 [
    i32 2, label %272
    i32 3, label %276
  ]

272:                                              ; preds = %269
  %273 = shl i32 %270, 2
  %274 = call i32 @Get_Bits(i32 noundef 2) #32
  %275 = or i32 %274, %273
  br label %286

276:                                              ; preds = %269
  %277 = shl i32 %270, 6
  %278 = call i32 @Get_Bits(i32 noundef 6) #32
  %279 = or i32 %278, %277
  br label %286

280:                                              ; preds = %266
  %281 = icmp eq i32 %253, 0
  %282 = load i32, ptr @block_count, align 4
  %283 = shl nsw i32 -1, %282
  %284 = xor i32 %283, -1
  %285 = select i1 %281, i32 0, i32 %284
  br label %286

286:                                              ; preds = %280, %276, %272, %269
  %287 = phi i32 [ %275, %272 ], [ %279, %276 ], [ %285, %280 ], [ %270, %269 ]
  %288 = load i32, ptr @Fault_Flag, align 4, !tbaa !7
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %358

290:                                              ; preds = %286
  %291 = load i32, ptr @block_count, align 4, !tbaa !7
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %330

293:                                              ; preds = %290
  %294 = icmp eq i32 %253, 0
  br label %295

295:                                              ; preds = %325, %293
  %296 = phi i64 [ %326, %325 ], [ 0, %293 ]
  %297 = phi i32 [ %327, %325 ], [ %291, %293 ]
  %298 = trunc i64 %296 to i32
  %299 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %300 = icmp eq i32 %299, 1
  br i1 %300, label %303, label %301

301:                                              ; preds = %295
  %302 = load ptr, ptr @ld, align 8, !tbaa !11
  br label %304

303:                                              ; preds = %295
  store ptr @base, ptr @ld, align 8, !tbaa !11
  br label %304

304:                                              ; preds = %303, %301
  %305 = phi ptr [ %302, %301 ], [ @base, %303 ]
  %306 = getelementptr %struct.layer_data, ptr %305, i64 0, i32 24, i64 %296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %306, i8 0, i64 128, i1 false), !tbaa !47
  %307 = xor i32 %298, -1
  %308 = add i32 %297, %307
  %309 = shl nuw i32 1, %308
  %310 = and i32 %309, %287
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %325, label %312

312:                                              ; preds = %304
  %313 = getelementptr inbounds %struct.layer_data, ptr %305, i64 0, i32 16
  %314 = load i32, ptr %313, align 8, !tbaa !28
  %315 = icmp eq i32 %314, 0
  br i1 %294, label %319, label %316

316:                                              ; preds = %312
  br i1 %315, label %318, label %317

317:                                              ; preds = %316
  call void @Decode_MPEG2_Intra_Block(i32 noundef %298, ptr noundef nonnull %13) #32
  br label %322

318:                                              ; preds = %316
  call void @Decode_MPEG1_Intra_Block(i32 noundef %298, ptr noundef nonnull %13) #32
  br label %322

319:                                              ; preds = %312
  br i1 %315, label %321, label %320

320:                                              ; preds = %319
  call void @Decode_MPEG2_Non_Intra_Block(i32 noundef %298) #32
  br label %322

321:                                              ; preds = %319
  call void @Decode_MPEG1_Non_Intra_Block(i32 noundef %298) #32
  br label %322

322:                                              ; preds = %321, %320, %318, %317
  %323 = load i32, ptr @Fault_Flag, align 4, !tbaa !7
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %358

325:                                              ; preds = %322, %304
  %326 = add nuw nsw i64 %296, 1
  %327 = load i32, ptr @block_count, align 4, !tbaa !7
  %328 = sext i32 %327 to i64
  %329 = icmp slt i64 %326, %328
  br i1 %329, label %295, label %330, !llvm.loop !85

330:                                              ; preds = %325, %290
  %331 = load i32, ptr @picture_coding_type, align 4, !tbaa !7
  %332 = icmp eq i32 %331, 4
  br i1 %332, label %333, label %334

333:                                              ; preds = %330
  call void @marker_bit(ptr noundef nonnull @.str.6.196) #32
  br label %334

334:                                              ; preds = %333, %330
  %335 = icmp eq i32 %253, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %334
  store i32 0, ptr %80, align 4, !tbaa !7
  store i32 0, ptr %81, align 4, !tbaa !7
  store i32 0, ptr %13, align 4, !tbaa !7
  br label %341

337:                                              ; preds = %334
  %338 = load i32, ptr @concealment_motion_vectors, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  br label %341

341:                                              ; preds = %340, %337, %336
  %342 = load i32, ptr @picture_coding_type, align 4, !tbaa !7
  %343 = icmp eq i32 %342, 2
  %344 = and i32 %173, 9
  %345 = icmp eq i32 %344, 0
  %346 = and i1 %345, %343
  br i1 %346, label %347, label %354

347:                                              ; preds = %341
  store i32 0, ptr %83, align 4, !tbaa !7
  store i32 0, ptr %82, align 16, !tbaa !7
  store i32 0, ptr %84, align 4, !tbaa !7
  store i32 0, ptr %14, align 16, !tbaa !7
  %348 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %349 = icmp eq i32 %348, 3
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  store i32 2, ptr %11, align 4, !tbaa !7
  br label %354

351:                                              ; preds = %347
  store i32 1, ptr %11, align 4, !tbaa !7
  %352 = icmp eq i32 %348, 2
  %353 = zext i1 %352 to i32
  store i32 %353, ptr %15, align 16, !tbaa !7
  br label %354

354:                                              ; preds = %351, %350, %341
  %355 = load i32, ptr %18, align 4, !tbaa !7
  %356 = icmp eq i32 %355, 4
  br i1 %356, label %357, label %359

357:                                              ; preds = %354
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  br label %359

358:                                              ; preds = %322, %286, %249, %226, %169
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #39
  br label %147

359:                                              ; preds = %357, %354
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #39
  br label %388

360:                                              ; preds = %159
  %361 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %362 = icmp eq i32 %361, 1
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  store ptr @base, ptr @ld, align 8, !tbaa !11
  br label %364

364:                                              ; preds = %363, %360
  %365 = load i32, ptr @block_count, align 4, !tbaa !7
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %367, label %372

367:                                              ; preds = %364
  %368 = load ptr, ptr @ld, align 8, !tbaa !11
  %369 = getelementptr i8, ptr %368, i64 3176
  %370 = zext i32 %365 to i64
  %371 = shl nuw nsw i64 %370, 7
  call void @llvm.memset.p0.i64(ptr align 2 %369, i8 0, i64 %371, i1 false), !tbaa !47
  br label %372

372:                                              ; preds = %367, %364
  store i32 0, ptr %80, align 4, !tbaa !7
  store i32 0, ptr %81, align 4, !tbaa !7
  store i32 0, ptr %13, align 4, !tbaa !7
  %373 = load i32, ptr @picture_coding_type, align 4, !tbaa !7
  %374 = icmp eq i32 %373, 2
  br i1 %374, label %375, label %376

375:                                              ; preds = %372
  store i32 0, ptr %83, align 4, !tbaa !7
  store i32 0, ptr %82, align 16, !tbaa !7
  store i32 0, ptr %84, align 4, !tbaa !7
  store i32 0, ptr %14, align 16, !tbaa !7
  br label %376

376:                                              ; preds = %375, %372
  %377 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %378 = icmp eq i32 %377, 3
  br i1 %378, label %382, label %379

379:                                              ; preds = %376
  %380 = icmp eq i32 %377, 2
  %381 = zext i1 %380 to i32
  store i32 %381, ptr %85, align 4, !tbaa !7
  store i32 %381, ptr %15, align 16, !tbaa !7
  br label %382

382:                                              ; preds = %379, %376
  %383 = phi i32 [ 1, %379 ], [ 2, %376 ]
  store i32 %383, ptr %11, align 4
  %384 = icmp eq i32 %373, 1
  %385 = select i1 %384, i32 8, i32 0
  store i32 %385, ptr %17, align 4, !tbaa !7
  %386 = load i32, ptr %10, align 4, !tbaa !7
  %387 = and i32 %386, -2
  store i32 %387, ptr %10, align 4, !tbaa !7
  br label %388

388:                                              ; preds = %382, %359
  %389 = phi i32 [ %173, %359 ], [ %387, %382 ]
  %390 = load i32, ptr @Two_Streams, align 4, !tbaa !7
  %391 = icmp ne i32 %390, 0
  %392 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @enhan, i64 0, i32 17), align 4
  %393 = icmp eq i32 %392, 3
  %394 = select i1 %391, i1 %393, i1 false
  br i1 %394, label %395, label %516

395:                                              ; preds = %388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #39
  store ptr @enhan, ptr @ld, align 8, !tbaa !11
  %396 = icmp eq i32 %132, 0
  br i1 %396, label %397, label %418

397:                                              ; preds = %395
  %398 = call i32 @Show_Bits(i32 noundef 23) #32
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %409

400:                                              ; preds = %397
  call void @next_start_code() #32
  %401 = call i32 @Show_Bits(i32 noundef 32) #32
  %402 = add i32 %401, -432
  %403 = icmp ult i32 %402, -175
  br i1 %403, label %404, label %421

404:                                              ; preds = %400
  %405 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %513

407:                                              ; preds = %404
  %408 = call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  br label %513

409:                                              ; preds = %397
  %410 = icmp slt i32 %131, %79
  br i1 %410, label %416, label %411

411:                                              ; preds = %409
  %412 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %513

414:                                              ; preds = %411
  %415 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %513

416:                                              ; preds = %409
  %417 = call i32 @Get_macroblock_address_increment() #32
  br label %418

418:                                              ; preds = %416, %395
  %419 = phi i32 [ %417, %416 ], [ %132, %395 ]
  %420 = icmp eq i32 %131, %129
  br i1 %420, label %440, label %433

421:                                              ; preds = %400
  call void @Flush_Buffer32() #32
  %422 = call i32 @slice_header() #32
  %423 = call i32 @Get_macroblock_address_increment() #32
  %424 = shl i32 %422, 7
  %425 = and i32 %401, 255
  %426 = add nsw i32 %425, -1
  %427 = add i32 %426, %424
  %428 = load i32, ptr @mb_width, align 4, !tbaa !7
  %429 = mul nsw i32 %428, %427
  %430 = add i32 %423, -1
  %431 = add i32 %430, %429
  %432 = icmp eq i32 %431, %129
  br i1 %432, label %450, label %433

433:                                              ; preds = %421, %418
  %434 = phi i32 [ %431, %421 ], [ %131, %418 ]
  %435 = phi i32 [ 1, %421 ], [ %419, %418 ]
  %436 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %513

438:                                              ; preds = %433
  %439 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  br label %513

440:                                              ; preds = %418
  %441 = icmp eq i32 %419, 1
  br i1 %441, label %450, label %442

442:                                              ; preds = %440
  %443 = load i32, ptr @block_count, align 4, !tbaa !7
  %444 = icmp sgt i32 %443, 0
  br i1 %444, label %445, label %511

445:                                              ; preds = %442
  %446 = load ptr, ptr @ld, align 8, !tbaa !11
  %447 = getelementptr i8, ptr %446, i64 3176
  %448 = zext i32 %443 to i64
  %449 = shl nuw nsw i64 %448, 7
  call void @llvm.memset.p0.i64(ptr align 2 %447, i8 0, i64 %449, i1 false), !tbaa !47
  br label %511

450:                                              ; preds = %440, %421
  call fastcc void @macroblock_modes(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %4) #31
  %451 = load i32, ptr %3, align 4, !tbaa !7
  %452 = and i32 %451, 2
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %456, label %454

454:                                              ; preds = %450
  %455 = load i32, ptr %4, align 4, !tbaa !7
  store i32 %455, ptr %12, align 4, !tbaa !7
  br label %456

456:                                              ; preds = %454, %450
  %457 = and i32 %451, 16
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %475, label %459

459:                                              ; preds = %456
  %460 = call i32 @Get_Bits(i32 noundef 5) #32
  %461 = load ptr, ptr @ld, align 8, !tbaa !11
  %462 = getelementptr inbounds %struct.layer_data, ptr %461, i64 0, i32 18
  %463 = load i32, ptr %462, align 8, !tbaa !39
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %470, label %465

465:                                              ; preds = %459
  %466 = sext i32 %460 to i64
  %467 = getelementptr inbounds [32 x i8], ptr @Non_Linear_quantizer_scale, i64 0, i64 %466
  %468 = load i8, ptr %467, align 1, !tbaa !15
  %469 = zext i8 %468 to i32
  br label %472

470:                                              ; preds = %459
  %471 = shl i32 %460, 1
  br label %472

472:                                              ; preds = %470, %465
  %473 = phi i32 [ %469, %465 ], [ %471, %470 ]
  %474 = getelementptr inbounds %struct.layer_data, ptr %461, i64 0, i32 22
  store i32 %473, ptr %474, align 8, !tbaa !45
  br label %475

475:                                              ; preds = %472, %456
  br i1 %453, label %485, label %476

476:                                              ; preds = %475
  %477 = call i32 @Get_coded_block_pattern() #32
  %478 = load i32, ptr @chroma_format, align 4, !tbaa !7
  switch i32 %478, label %485 [
    i32 2, label %480
    i32 3, label %479
  ]

479:                                              ; preds = %476
  br label %480

480:                                              ; preds = %479, %476
  %481 = phi i32 [ 6, %479 ], [ %478, %476 ]
  %482 = shl i32 %477, %481
  %483 = call i32 @Get_Bits(i32 noundef %481) #32
  %484 = or i32 %483, %482
  br label %485

485:                                              ; preds = %480, %476, %475
  %486 = phi i32 [ %477, %476 ], [ 0, %475 ], [ %484, %480 ]
  %487 = load i32, ptr @block_count, align 4, !tbaa !7
  %488 = icmp sgt i32 %487, 0
  br i1 %488, label %489, label %511

489:                                              ; preds = %485
  %490 = load ptr, ptr @ld, align 8, !tbaa !11
  br label %491

491:                                              ; preds = %505, %489
  %492 = phi i32 [ %487, %489 ], [ %506, %505 ]
  %493 = phi ptr [ %490, %489 ], [ %507, %505 ]
  %494 = phi i64 [ 0, %489 ], [ %508, %505 ]
  %495 = trunc i64 %494 to i32
  %496 = getelementptr %struct.layer_data, ptr %493, i64 0, i32 24, i64 %494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %496, i8 0, i64 128, i1 false), !tbaa !47
  %497 = xor i32 %495, -1
  %498 = add i32 %492, %497
  %499 = shl nuw i32 1, %498
  %500 = and i32 %499, %486
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %505, label %502

502:                                              ; preds = %491
  call void @Decode_MPEG2_Non_Intra_Block(i32 noundef %495) #32
  %503 = load ptr, ptr @ld, align 8, !tbaa !11
  %504 = load i32, ptr @block_count, align 4, !tbaa !7
  br label %505

505:                                              ; preds = %502, %491
  %506 = phi i32 [ %492, %491 ], [ %504, %502 ]
  %507 = phi ptr [ %493, %491 ], [ %503, %502 ]
  %508 = add nuw nsw i64 %494, 1
  %509 = sext i32 %506 to i64
  %510 = icmp slt i64 %508, %509
  br i1 %510, label %491, label %511, !llvm.loop !86

511:                                              ; preds = %505, %485, %445, %442
  %512 = phi i32 [ 1, %485 ], [ %419, %445 ], [ %419, %442 ], [ 1, %505 ]
  store ptr @base, ptr @ld, align 8, !tbaa !11
  br label %513

513:                                              ; preds = %511, %438, %433, %414, %411, %407, %404
  %514 = phi i32 [ %131, %407 ], [ %131, %404 ], [ %129, %511 ], [ %434, %438 ], [ %434, %433 ], [ %131, %414 ], [ %131, %411 ]
  %515 = phi i32 [ 0, %407 ], [ 0, %404 ], [ %512, %511 ], [ %435, %438 ], [ %435, %433 ], [ 0, %414 ], [ 0, %411 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39
  br label %516

516:                                              ; preds = %513, %388
  %517 = phi i32 [ %514, %513 ], [ %131, %388 ]
  %518 = phi i32 [ %515, %513 ], [ %132, %388 ]
  %519 = load i32, ptr %12, align 4, !tbaa !7
  %520 = load i32, ptr @mb_width, align 4, !tbaa !7
  %521 = srem i32 %129, %520
  %522 = shl nsw i32 %521, 4
  %523 = sdiv i32 %129, %520
  %524 = shl nsw i32 %523, 4
  %525 = and i32 %389, 1
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %530

527:                                              ; preds = %516
  %528 = load i32, ptr %17, align 4, !tbaa !7
  %529 = load i32, ptr %11, align 4, !tbaa !7
  call void @form_predictions(i32 noundef %522, i32 noundef %524, i32 noundef %389, i32 noundef %529, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %528) #32
  br label %530

530:                                              ; preds = %527, %516
  %531 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %532 = icmp eq i32 %531, 1
  br i1 %532, label %533, label %534

533:                                              ; preds = %530
  store ptr @base, ptr @ld, align 8, !tbaa !11
  br label %534

534:                                              ; preds = %533, %530
  %535 = load i32, ptr @block_count, align 4, !tbaa !7
  %536 = icmp sgt i32 %535, 0
  br i1 %536, label %537, label %754

537:                                              ; preds = %534
  %538 = icmp ne i32 %519, 0
  %539 = sext i32 %522 to i64
  %540 = icmp eq i32 %519, 0
  br label %541

541:                                              ; preds = %749, %537
  %542 = phi i64 [ 0, %537 ], [ %750, %749 ]
  %543 = load i32, ptr @Two_Streams, align 4, !tbaa !7
  %544 = icmp ne i32 %543, 0
  %545 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @enhan, i64 0, i32 17), align 4
  %546 = icmp eq i32 %545, 3
  %547 = select i1 %544, i1 %546, i1 false
  br i1 %547, label %548, label %564

548:                                              ; preds = %541
  %549 = getelementptr inbounds %struct.layer_data, ptr @base, i64 0, i32 24, i64 %542
  %550 = getelementptr inbounds %struct.layer_data, ptr @enhan, i64 0, i32 24, i64 %542
  br label %551

551:                                              ; preds = %551, %548
  %552 = phi i64 [ 0, %548 ], [ %560, %551 ]
  %553 = shl i64 %552, 1
  %554 = getelementptr i8, ptr %550, i64 %553
  %555 = shl i64 %552, 1
  %556 = getelementptr i8, ptr %549, i64 %555
  %557 = load <8 x i16>, ptr %554, align 8, !tbaa !47
  %558 = load <8 x i16>, ptr %556, align 8, !tbaa !47
  %559 = add <8 x i16> %558, %557
  store <8 x i16> %559, ptr %556, align 8, !tbaa !47
  %560 = add nuw i64 %552, 8
  %561 = icmp eq i64 %560, 64
  br i1 %561, label %562, label %551, !llvm.loop !87

562:                                              ; preds = %551
  %563 = load ptr, ptr @ld, align 8, !tbaa !11
  br label %569

564:                                              ; preds = %541
  %565 = load ptr, ptr @ld, align 8, !tbaa !11
  %566 = getelementptr inbounds %struct.layer_data, ptr %565, i64 0, i32 16
  %567 = load i32, ptr %566, align 8, !tbaa !28
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %591, label %569

569:                                              ; preds = %564, %562
  %570 = phi ptr [ %563, %562 ], [ %565, %564 ]
  %571 = getelementptr inbounds %struct.layer_data, ptr %570, i64 0, i32 24, i64 %542
  br label %572

572:                                              ; preds = %572, %569
  %573 = phi i64 [ 0, %569 ], [ %581, %572 ]
  %574 = phi <4 x i32> [ zeroinitializer, %569 ], [ %580, %572 ]
  %575 = getelementptr inbounds i16, ptr %571, i64 %573
  %576 = load <4 x i16>, ptr %575, align 2, !tbaa !47
  %577 = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %576, <4 x i16> <i16 -2048, i16 -2048, i16 -2048, i16 -2048>)
  %578 = call <4 x i16> @llvm.smin.v4i16(<4 x i16> %577, <4 x i16> <i16 2047, i16 2047, i16 2047, i16 2047>)
  %579 = zext <4 x i16> %578 to <4 x i32>
  store <4 x i16> %578, ptr %575, align 2, !tbaa !47
  %580 = add <4 x i32> %574, %579
  %581 = add nuw i64 %573, 4
  %582 = icmp eq i64 %581, 64
  br i1 %582, label %583, label %572, !llvm.loop !88

583:                                              ; preds = %572
  %.lcssa = phi <4 x i32> [ %580, %572 ]
  %584 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %.lcssa)
  %585 = and i32 %584, 1
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %591

587:                                              ; preds = %583
  %588 = getelementptr inbounds i16, ptr %571, i64 63
  %589 = load i16, ptr %588, align 2, !tbaa !47
  %590 = xor i16 %589, 1
  store i16 %590, ptr %588, align 2, !tbaa !47
  br label %591

591:                                              ; preds = %587, %583, %564
  %592 = phi ptr [ %570, %587 ], [ %570, %583 ], [ %565, %564 ]
  %593 = load i32, ptr @Reference_IDCT_Flag, align 4, !tbaa !7
  %594 = icmp eq i32 %593, 0
  %595 = getelementptr inbounds %struct.layer_data, ptr %592, i64 0, i32 24, i64 %542
  br i1 %594, label %597, label %596

596:                                              ; preds = %591
  call void @Reference_IDCT(ptr noundef nonnull %595) #32
  br label %598

597:                                              ; preds = %591
  call void @Fast_IDCT(ptr noundef nonnull %595) #32
  br label %598

598:                                              ; preds = %597, %596
  %599 = icmp ult i64 %542, 4
  %600 = trunc i64 %542 to i32
  %601 = and i32 %600, 1
  %602 = add nuw nsw i32 %601, 1
  br i1 %599, label %603, label %642

603:                                              ; preds = %598
  %604 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %605 = icmp eq i32 %604, 3
  %606 = load ptr, ptr @current_frame, align 16, !tbaa !11
  %607 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  br i1 %605, label %608, label %630

608:                                              ; preds = %603
  %609 = shl nuw nsw i32 %601, 3
  %610 = zext i32 %609 to i64
  br i1 %540, label %621, label %611

611:                                              ; preds = %608
  %612 = lshr i32 %600, 1
  %613 = and i32 %612, 1
  %614 = or i32 %613, %524
  %615 = mul nsw i32 %607, %614
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i8, ptr %606, i64 %616
  %618 = getelementptr inbounds i8, ptr %617, i64 %539
  %619 = getelementptr inbounds i8, ptr %618, i64 %610
  %620 = shl i32 %607, 1
  br label %696

621:                                              ; preds = %608
  %622 = shl i32 %600, 2
  %623 = and i32 %622, 8
  %624 = or i32 %623, %524
  %625 = mul nsw i32 %607, %624
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i8, ptr %606, i64 %626
  %628 = getelementptr inbounds i8, ptr %627, i64 %539
  %629 = getelementptr inbounds i8, ptr %628, i64 %610
  br label %696

630:                                              ; preds = %603
  %631 = shl i32 %607, 1
  %632 = shl i32 %600, 2
  %633 = and i32 %632, 8
  %634 = or i32 %633, %524
  %635 = mul nsw i32 %631, %634
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds i8, ptr %606, i64 %636
  %638 = getelementptr inbounds i8, ptr %637, i64 %539
  %639 = shl nuw nsw i32 %601, 3
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds i8, ptr %638, i64 %640
  br label %696

642:                                              ; preds = %598
  %643 = load i32, ptr @chroma_format, align 4
  %644 = icmp ne i32 %643, 3
  %645 = zext i1 %644 to i32
  %646 = ashr i32 %522, %645
  %647 = icmp eq i32 %643, 1
  %648 = zext i1 %647 to i32
  %649 = ashr i32 %524, %648
  %650 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %651 = icmp eq i32 %650, 3
  br i1 %651, label %652, label %680

652:                                              ; preds = %642
  %653 = icmp ne i32 %643, 1
  %654 = select i1 %538, i1 %653, i1 false
  %655 = zext i32 %602 to i64
  %656 = getelementptr inbounds [3 x ptr], ptr @current_frame, i64 0, i64 %655
  %657 = load ptr, ptr %656, align 8, !tbaa !11
  %658 = load i32, ptr @Chroma_Width, align 4, !tbaa !7
  %659 = sext i32 %646 to i64
  %660 = and i64 %542, 8
  br i1 %654, label %661, label %671

661:                                              ; preds = %652
  %662 = lshr i32 %600, 1
  %663 = and i32 %662, 1
  %664 = or i32 %649, %663
  %665 = mul nsw i32 %658, %664
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds i8, ptr %657, i64 %666
  %668 = getelementptr inbounds i8, ptr %667, i64 %659
  %669 = getelementptr inbounds i8, ptr %668, i64 %660
  %670 = shl i32 %658, 1
  br label %696

671:                                              ; preds = %652
  %672 = shl i32 %600, 2
  %673 = and i32 %672, 8
  %674 = add nsw i32 %649, %673
  %675 = mul nsw i32 %658, %674
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i8, ptr %657, i64 %676
  %678 = getelementptr inbounds i8, ptr %677, i64 %659
  %679 = getelementptr inbounds i8, ptr %678, i64 %660
  br label %696

680:                                              ; preds = %642
  %681 = zext i32 %602 to i64
  %682 = getelementptr inbounds [3 x ptr], ptr @current_frame, i64 0, i64 %681
  %683 = load ptr, ptr %682, align 8, !tbaa !11
  %684 = load i32, ptr @Chroma_Width, align 4, !tbaa !7
  %685 = shl i32 %684, 1
  %686 = shl i32 %600, 2
  %687 = and i32 %686, 8
  %688 = add nsw i32 %649, %687
  %689 = mul nsw i32 %685, %688
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i8, ptr %683, i64 %690
  %692 = sext i32 %646 to i64
  %693 = getelementptr inbounds i8, ptr %691, i64 %692
  %694 = and i64 %542, 8
  %695 = getelementptr inbounds i8, ptr %693, i64 %694
  br label %696

696:                                              ; preds = %680, %671, %661, %630, %621, %611
  %697 = phi i32 [ %620, %611 ], [ %607, %621 ], [ %631, %630 ], [ %670, %661 ], [ %658, %671 ], [ %685, %680 ]
  %698 = phi ptr [ %619, %611 ], [ %629, %621 ], [ %641, %630 ], [ %669, %661 ], [ %679, %671 ], [ %695, %680 ]
  %699 = add nsw i32 %697, -8
  %700 = load ptr, ptr @ld, align 8, !tbaa !11
  %701 = getelementptr inbounds %struct.layer_data, ptr %700, i64 0, i32 24, i64 %542
  %702 = sext i32 %699 to i64
  br i1 %526, label %703, label %727

703:                                              ; preds = %723, %696
  %704 = phi ptr [ %.lcssa4, %723 ], [ %701, %696 ]
  %705 = phi ptr [ %724, %723 ], [ %698, %696 ]
  %706 = phi i32 [ %725, %723 ], [ 0, %696 ]
  br label %707

707:                                              ; preds = %707, %703
  %708 = phi ptr [ %704, %703 ], [ %712, %707 ]
  %709 = phi ptr [ %705, %703 ], [ %720, %707 ]
  %710 = phi i32 [ 0, %703 ], [ %721, %707 ]
  %711 = load ptr, ptr @Clip, align 8, !tbaa !11
  %712 = getelementptr inbounds i16, ptr %708, i64 1
  %713 = load i16, ptr %708, align 2, !tbaa !47
  %714 = sext i16 %713 to i64
  %715 = load i8, ptr %709, align 1, !tbaa !15
  %716 = zext i8 %715 to i64
  %717 = add nsw i64 %716, %714
  %718 = getelementptr inbounds i8, ptr %711, i64 %717
  %719 = load i8, ptr %718, align 1, !tbaa !15
  store i8 %719, ptr %709, align 1, !tbaa !15
  %720 = getelementptr inbounds i8, ptr %709, i64 1
  %721 = add nuw nsw i32 %710, 1
  %722 = icmp eq i32 %721, 8
  br i1 %722, label %723, label %707, !llvm.loop !89

723:                                              ; preds = %707
  %.lcssa4 = phi ptr [ %712, %707 ]
  %.lcssa3 = phi ptr [ %720, %707 ]
  %724 = getelementptr inbounds i8, ptr %.lcssa3, i64 %702
  %725 = add nuw nsw i32 %706, 1
  %726 = icmp eq i32 %725, 8
  br i1 %726, label %749, label %703, !llvm.loop !90

727:                                              ; preds = %745, %696
  %728 = phi ptr [ %.lcssa2, %745 ], [ %701, %696 ]
  %729 = phi ptr [ %746, %745 ], [ %698, %696 ]
  %730 = phi i32 [ %747, %745 ], [ 0, %696 ]
  br label %731

731:                                              ; preds = %731, %727
  %732 = phi ptr [ %728, %727 ], [ %736, %731 ]
  %733 = phi ptr [ %729, %727 ], [ %742, %731 ]
  %734 = phi i32 [ 0, %727 ], [ %743, %731 ]
  %735 = load ptr, ptr @Clip, align 8, !tbaa !11
  %736 = getelementptr inbounds i16, ptr %732, i64 1
  %737 = load i16, ptr %732, align 2, !tbaa !47
  %738 = sext i16 %737 to i64
  %739 = add nsw i64 %738, 128
  %740 = getelementptr inbounds i8, ptr %735, i64 %739
  %741 = load i8, ptr %740, align 1, !tbaa !15
  %742 = getelementptr inbounds i8, ptr %733, i64 1
  store i8 %741, ptr %733, align 1, !tbaa !15
  %743 = add nuw nsw i32 %734, 1
  %744 = icmp eq i32 %743, 8
  br i1 %744, label %745, label %731, !llvm.loop !91

745:                                              ; preds = %731
  %.lcssa2 = phi ptr [ %736, %731 ]
  %.lcssa1 = phi ptr [ %742, %731 ]
  %746 = getelementptr inbounds i8, ptr %.lcssa1, i64 %702
  %747 = add nuw nsw i32 %730, 1
  %748 = icmp eq i32 %747, 8
  br i1 %748, label %749, label %727, !llvm.loop !92

749:                                              ; preds = %745, %723
  %750 = add nuw nsw i64 %542, 1
  %751 = load i32, ptr @block_count, align 4, !tbaa !7
  %752 = sext i32 %751 to i64
  %753 = icmp slt i64 %750, %752
  br i1 %753, label %541, label %754, !llvm.loop !93

754:                                              ; preds = %749, %534
  %755 = add nsw i32 %129, 1
  %756 = add nsw i32 %160, -1
  %757 = load i32, ptr @Two_Streams, align 4, !tbaa !7
  %758 = icmp ne i32 %757, 0
  %759 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @enhan, i64 0, i32 17), align 4
  %760 = icmp eq i32 %759, 3
  %761 = select i1 %758, i1 %760, i1 false
  %762 = zext i1 %761 to i32
  %763 = add nsw i32 %517, %762
  %764 = sext i1 %761 to i32
  %765 = add nsw i32 %518, %764
  %766 = icmp slt i32 %755, %79
  br i1 %766, label %128, label %771

767:                                              ; preds = %147, %116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39
  br label %87

768:                                              ; preds = %102, %91
  %769 = phi ptr [ @str.13, %91 ], [ @str.12, %102 ]
  %770 = call i32 @puts(ptr nonnull dereferenceable(1) %769)
  br label %771

771:                                              ; preds = %768, %754, %118, %102, %91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39
  %772 = icmp eq i32 %1, 0
  br i1 %772, label %789, label %773

773:                                              ; preds = %771
  %774 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %775 = icmp eq i32 %774, 3
  %776 = load i32, ptr @Second_Field, align 4
  %777 = icmp ne i32 %776, 0
  %778 = select i1 %775, i1 true, i1 %777
  br i1 %778, label %779, label %798

779:                                              ; preds = %773
  %780 = load i32, ptr @picture_coding_type, align 4, !tbaa !7
  %781 = icmp eq i32 %780, 3
  br i1 %781, label %782, label %784

782:                                              ; preds = %779
  %783 = add nsw i32 %0, -1
  call void @Write_Frame(ptr noundef nonnull @auxframe, i32 noundef %783) #32
  br label %791

784:                                              ; preds = %779
  %785 = load i32, ptr @progressive_frame, align 4, !tbaa !7
  store i32 %785, ptr @frame_reorder.Newref_progressive_frame, align 4, !tbaa !7
  %786 = load i32, ptr @frame_reorder.Oldref_progressive_frame, align 4, !tbaa !7
  store i32 %786, ptr @progressive_frame, align 4, !tbaa !7
  %787 = add nsw i32 %0, -1
  call void @Write_Frame(ptr noundef nonnull @forward_reference_frame, i32 noundef %787) #32
  %788 = load i32, ptr @frame_reorder.Newref_progressive_frame, align 4, !tbaa !7
  store i32 %788, ptr @progressive_frame, align 4, !tbaa !7
  store i32 %788, ptr @frame_reorder.Oldref_progressive_frame, align 4, !tbaa !7
  br label %791

789:                                              ; preds = %771
  %790 = load i32, ptr @progressive_frame, align 4, !tbaa !7
  store i32 %790, ptr @frame_reorder.Oldref_progressive_frame, align 4, !tbaa !7
  br label %791

791:                                              ; preds = %789, %784, %782
  %792 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %793 = icmp eq i32 %792, 3
  br i1 %793, label %800, label %794

794:                                              ; preds = %791
  %795 = load i32, ptr @Second_Field, align 4, !tbaa !7
  %796 = icmp eq i32 %795, 0
  %797 = zext i1 %796 to i32
  br label %798

798:                                              ; preds = %794, %773
  %799 = phi i32 [ %797, %794 ], [ 1, %773 ]
  store i32 %799, ptr @Second_Field, align 4, !tbaa !7
  br label %800

800:                                              ; preds = %798, %791
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @macroblock_modes(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) unnamed_addr #0 {
  %10 = tail call i32 @Get_macroblock_type() #32
  %11 = load i32, ptr @Fault_Flag, align 4, !tbaa !7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %98

13:                                               ; preds = %9
  %14 = and i32 %10, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr @spatial_temporal_weight_code_table_index, align 4, !tbaa !7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @Get_Bits(i32 noundef 2) #32
  %21 = load i32, ptr @spatial_temporal_weight_code_table_index, align 4, !tbaa !7
  %22 = add nsw i32 %21, -1
  %23 = sext i32 %22 to i64
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds [3 x [4 x i8]], ptr @macroblock_modes.stwc_table, i64 0, i64 %23, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !15
  %27 = zext i8 %26 to i32
  br label %31

28:                                               ; preds = %13
  %29 = lshr i32 %10, 3
  %30 = and i32 %29, 8
  br label %31

31:                                               ; preds = %28, %19, %16
  %32 = phi i32 [ %27, %19 ], [ %30, %28 ], [ 4, %16 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [9 x i8], ptr @macroblock_modes.stwclass_table, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = zext i8 %35 to i32
  %37 = and i32 %10, 12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %31
  %40 = load i32, ptr @picture_structure, align 4
  %41 = icmp ne i32 %40, 3
  %42 = load i32, ptr @frame_pred_frame_dct, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %55, label %64

45:                                               ; preds = %31
  %46 = and i32 %10, 1
  %47 = icmp ne i32 %46, 0
  %48 = load i32, ptr @concealment_motion_vectors, align 4
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, ptr @picture_structure, align 4
  %53 = icmp eq i32 %52, 3
  %54 = select i1 %53, i32 2, i32 1
  br label %60

55:                                               ; preds = %39
  %56 = tail call i32 @Get_Bits(i32 noundef 2) #32
  br label %57

57:                                               ; preds = %55, %45
  %58 = phi i32 [ 0, %45 ], [ %56, %55 ]
  %59 = load i32, ptr @picture_structure, align 4
  br label %60

60:                                               ; preds = %57, %51
  %61 = phi i32 [ %59, %57 ], [ %52, %51 ]
  %62 = phi i32 [ %58, %57 ], [ %54, %51 ]
  %63 = icmp eq i32 %61, 3
  br i1 %63, label %64, label %74

64:                                               ; preds = %60, %39
  %65 = phi i32 [ %62, %60 ], [ 2, %39 ]
  %66 = icmp eq i32 %65, 1
  %67 = lshr i64 27, %33
  %68 = and i64 %67, 1
  %69 = icmp ne i64 %68, 0
  %70 = select i1 %66, i1 %69, i1 false
  %71 = select i1 %70, i32 2, i32 1
  %72 = icmp eq i32 %65, 2
  %73 = zext i1 %72 to i32
  br label %77

74:                                               ; preds = %60
  %75 = icmp eq i32 %62, 2
  %76 = select i1 %75, i32 2, i32 1
  br label %77

77:                                               ; preds = %74, %64
  %78 = phi i1 [ true, %64 ], [ false, %74 ]
  %79 = phi i32 [ %65, %64 ], [ %62, %74 ]
  %80 = phi i1 [ false, %64 ], [ true, %74 ]
  %81 = phi i32 [ %73, %64 ], [ 0, %74 ]
  %82 = phi i32 [ %71, %64 ], [ %76, %74 ]
  %83 = icmp eq i32 %79, 3
  %84 = zext i1 %83 to i32
  %85 = icmp eq i32 %81, 0
  %86 = and i1 %78, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, ptr @frame_pred_frame_dct, align 4
  %89 = icmp ne i32 %88, 0
  %90 = select i1 %80, i1 true, i1 %89
  %91 = and i32 %10, 3
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %90, i1 true, i1 %92
  br i1 %93, label %96, label %94

94:                                               ; preds = %77
  %95 = tail call i32 @Get_Bits(i32 noundef 1) #32
  br label %96

96:                                               ; preds = %94, %77
  %97 = phi i32 [ %95, %94 ], [ 0, %77 ]
  store i32 %10, ptr %0, align 4, !tbaa !7
  store i32 %32, ptr %1, align 4, !tbaa !7
  store i32 %36, ptr %2, align 4, !tbaa !7
  store i32 %79, ptr %3, align 4, !tbaa !7
  store i32 %82, ptr %4, align 4, !tbaa !7
  store i32 %81, ptr %5, align 4, !tbaa !7
  store i32 %84, ptr %6, align 4, !tbaa !7
  store i32 %87, ptr %7, align 4, !tbaa !7
  store i32 %97, ptr %8, align 4, !tbaa !7
  br label %98

98:                                               ; preds = %96, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smin.v4i16(<4 x i16>, <4 x i16>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1

; Function Attrs: nounwind optsize uwtable
define internal void @Output_Last_Frame_of_Sequence(i32 noundef %0) #0 {
  %2 = load i32, ptr @Second_Field, align 4, !tbaa !7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %8

6:                                                ; preds = %1
  %7 = add nsw i32 %0, -1
  tail call void @Write_Frame(ptr noundef nonnull @backward_reference_frame, i32 noundef %7) #32
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: nofree nounwind optsize memory(write) uwtable
define internal void @Initialize_Reference_IDCT() #23 {
  br label %1

1:                                                ; preds = %19, %0
  %2 = phi i64 [ 0, %0 ], [ %20, %19 ]
  %3 = icmp eq i64 %2, 0
  %4 = select i1 %3, double 0x3FD6A09E667F3BCD, double 5.000000e-01
  %5 = trunc i64 %2 to i32
  %6 = sitofp i32 %5 to double
  %7 = fmul double %6, 0x3FD921FB54442D18
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi i64 [ 0, %1 ], [ %17, %8 ]
  %10 = trunc i64 %9 to i32
  %11 = sitofp i32 %10 to double
  %12 = fadd double %11, 5.000000e-01
  %13 = fmul double %7, %12
  %14 = tail call double @cos(double noundef %13) #32
  %15 = fmul double %4, %14
  %16 = getelementptr inbounds [8 x [8 x double]], ptr @c, i64 0, i64 %2, i64 %9
  store double %15, ptr %16, align 8, !tbaa !30
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %19, label %8, !llvm.loop !94

19:                                               ; preds = %8
  %20 = add nuw nsw i64 %2, 1
  %21 = icmp eq i64 %20, 8
  br i1 %21, label %22, label %1, !llvm.loop !95

22:                                               ; preds = %19
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #24

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @Reference_IDCT(ptr nocapture noundef %0) #25 {
  %2 = alloca [64 x double], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #39
  br label %3

3:                                                ; preds = %25, %1
  %4 = phi i64 [ 0, %1 ], [ %26, %25 ]
  %5 = shl nsw i64 %4, 3
  br label %6

6:                                                ; preds = %20, %3
  %7 = phi i64 [ 0, %3 ], [ %23, %20 ]
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i64 [ 0, %6 ], [ %18, %8 ]
  %10 = phi double [ 0.000000e+00, %6 ], [ %17, %8 ]
  %11 = getelementptr inbounds [8 x [8 x double]], ptr @c, i64 0, i64 %9, i64 %7
  %12 = load double, ptr %11, align 8, !tbaa !30
  %13 = add nuw nsw i64 %9, %5
  %14 = getelementptr inbounds i16, ptr %0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !47
  %16 = sitofp i16 %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %12, double %16, double %10)
  %18 = add nuw nsw i64 %9, 1
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %8, !llvm.loop !96

20:                                               ; preds = %8
  %.lcssa1 = phi double [ %17, %8 ]
  %21 = add nuw nsw i64 %7, %5
  %22 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %21
  store double %.lcssa1, ptr %22, align 8, !tbaa !30
  %23 = add nuw nsw i64 %7, 1
  %24 = icmp eq i64 %23, 8
  br i1 %24, label %25, label %6, !llvm.loop !97

25:                                               ; preds = %20
  %26 = add nuw nsw i64 %4, 1
  %27 = icmp eq i64 %26, 8
  br i1 %27, label %28, label %3, !llvm.loop !98

28:                                               ; preds = %56, %25
  %29 = phi i64 [ %57, %56 ], [ 0, %25 ]
  br label %30

30:                                               ; preds = %44, %28
  %31 = phi i64 [ 0, %28 ], [ %54, %44 ]
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %42, %32 ]
  %34 = phi double [ 0.000000e+00, %30 ], [ %41, %32 ]
  %35 = getelementptr inbounds [8 x [8 x double]], ptr @c, i64 0, i64 %33, i64 %31
  %36 = load double, ptr %35, align 8, !tbaa !30
  %37 = shl nuw nsw i64 %33, 3
  %38 = add nuw nsw i64 %37, %29
  %39 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !30
  %41 = tail call double @llvm.fmuladd.f64(double %36, double %40, double %34)
  %42 = add nuw nsw i64 %33, 1
  %43 = icmp eq i64 %42, 8
  br i1 %43, label %44, label %32, !llvm.loop !99

44:                                               ; preds = %32
  %.lcssa = phi double [ %41, %32 ]
  %45 = fadd double %.lcssa, 5.000000e-01
  %46 = tail call double @llvm.floor.f64(double %45)
  %47 = fptosi double %46 to i32
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 255)
  %49 = tail call i32 @llvm.smax.i32(i32 %48, i32 -256)
  %50 = trunc i32 %49 to i16
  %51 = shl nsw i64 %31, 3
  %52 = add nuw nsw i64 %51, %29
  %53 = getelementptr inbounds i16, ptr %0, i64 %52
  store i16 %50, ptr %53, align 2, !tbaa !47
  %54 = add nuw nsw i64 %31, 1
  %55 = icmp eq i64 %54, 8
  br i1 %55, label %56, label %30, !llvm.loop !100

56:                                               ; preds = %44
  %57 = add nuw nsw i64 %29, 1
  %58 = icmp eq i64 %57, 8
  br i1 %58, label %59, label %28, !llvm.loop !101

59:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #1

; Function Attrs: nounwind optsize uwtable
define internal void @form_predictions(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef %6, i32 noundef %7) #0 {
  %9 = alloca [2 x [2 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #39
  %10 = srem i32 %7, 3
  %11 = sdiv i32 %7, 3
  %12 = and i32 %2, 8
  %13 = icmp ne i32 %12, 0
  %14 = load i32, ptr @picture_coding_type, align 4
  %15 = icmp eq i32 %14, 2
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %172

17:                                               ; preds = %8
  %18 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %99

20:                                               ; preds = %17
  %21 = icmp ne i32 %3, 2
  %22 = and i1 %21, %13
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  %24 = icmp slt i32 %10, 2
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %27 = shl i32 %26, 1
  %28 = load i32, ptr %4, align 4, !tbaa !7
  %29 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !7
  tail call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef 0, i32 noundef 0, i32 noundef %26, i32 noundef %27, i32 noundef 8, i32 noundef %0, i32 noundef %1, i32 noundef %28, i32 noundef %30, i32 noundef %10) #31
  br label %31

31:                                               ; preds = %25, %23
  %32 = icmp slt i32 %7, 6
  br i1 %32, label %33, label %172

33:                                               ; preds = %31
  %34 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %35 = shl i32 %34, 1
  %36 = load i32, ptr %4, align 4, !tbaa !7
  %37 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %38 = load i32, ptr %37, align 4, !tbaa !7
  tail call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef 1, i32 noundef 1, i32 noundef %34, i32 noundef %35, i32 noundef 8, i32 noundef %0, i32 noundef %1, i32 noundef %36, i32 noundef %38, i32 noundef %11) #31
  br label %172

39:                                               ; preds = %20
  switch i32 %3, label %97 [
    i32 1, label %40
    i32 3, label %64
  ]

40:                                               ; preds = %39
  %41 = icmp slt i32 %10, 2
  br i1 %41, label %42, label %51

42:                                               ; preds = %40
  %43 = load i32, ptr %5, align 4, !tbaa !7
  %44 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %45 = shl i32 %44, 1
  %46 = ashr i32 %1, 1
  %47 = load i32, ptr %4, align 4, !tbaa !7
  %48 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa !7
  %50 = ashr i32 %49, 1
  tail call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef %43, i32 noundef 0, i32 noundef %45, i32 noundef %45, i32 noundef 8, i32 noundef %0, i32 noundef %46, i32 noundef %47, i32 noundef %50, i32 noundef %10) #31
  br label %51

51:                                               ; preds = %42, %40
  %52 = icmp slt i32 %7, 6
  br i1 %52, label %53, label %172

53:                                               ; preds = %51
  %54 = getelementptr inbounds [2 x i32], ptr %5, i64 1
  %55 = load i32, ptr %54, align 4, !tbaa !7
  %56 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %57 = shl i32 %56, 1
  %58 = ashr i32 %1, 1
  %59 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !7
  %61 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 1, i64 0, i64 1
  %62 = load i32, ptr %61, align 4, !tbaa !7
  %63 = ashr i32 %62, 1
  tail call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef %55, i32 noundef 1, i32 noundef %57, i32 noundef %57, i32 noundef 8, i32 noundef %0, i32 noundef %58, i32 noundef %60, i32 noundef %63, i32 noundef %11) #31
  br label %172

64:                                               ; preds = %39
  %65 = load i32, ptr %4, align 4, !tbaa !7
  %66 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !7
  %68 = ashr i32 %67, 1
  call void @Dual_Prime_Arithmetic(ptr noundef nonnull %9, ptr noundef %6, i32 noundef %65, i32 noundef %68) #32
  %69 = icmp slt i32 %10, 2
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %72 = shl i32 %71, 1
  %73 = ashr i32 %1, 1
  %74 = load i32, ptr %4, align 4, !tbaa !7
  %75 = load i32, ptr %66, align 4, !tbaa !7
  %76 = ashr i32 %75, 1
  call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef 0, i32 noundef 0, i32 noundef %72, i32 noundef %72, i32 noundef 8, i32 noundef %0, i32 noundef %73, i32 noundef %74, i32 noundef %76, i32 noundef 0) #31
  %77 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %78 = shl i32 %77, 1
  %79 = load i32, ptr %9, align 16, !tbaa !7
  %80 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 1
  %81 = load i32, ptr %80, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef 1, i32 noundef 0, i32 noundef %78, i32 noundef %78, i32 noundef 8, i32 noundef %0, i32 noundef %73, i32 noundef %79, i32 noundef %81, i32 noundef 1) #31
  br label %82

82:                                               ; preds = %70, %64
  %83 = icmp slt i32 %7, 6
  br i1 %83, label %84, label %172

84:                                               ; preds = %82
  %85 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %86 = shl i32 %85, 1
  %87 = ashr i32 %1, 1
  %88 = load i32, ptr %4, align 4, !tbaa !7
  %89 = load i32, ptr %66, align 4, !tbaa !7
  %90 = ashr i32 %89, 1
  call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef 1, i32 noundef 1, i32 noundef %86, i32 noundef %86, i32 noundef 8, i32 noundef %0, i32 noundef %87, i32 noundef %88, i32 noundef %90, i32 noundef 0) #31
  %91 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %92 = shl i32 %91, 1
  %93 = getelementptr inbounds [2 x [2 x i32]], ptr %9, i64 0, i64 1
  %94 = load i32, ptr %93, align 8, !tbaa !7
  %95 = getelementptr inbounds [2 x [2 x i32]], ptr %9, i64 0, i64 1, i64 1
  %96 = load i32, ptr %95, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef 0, i32 noundef 1, i32 noundef %92, i32 noundef %92, i32 noundef 8, i32 noundef %0, i32 noundef %87, i32 noundef %94, i32 noundef %96, i32 noundef 1) #31
  br label %172

97:                                               ; preds = %39
  %98 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %172

99:                                               ; preds = %17
  %100 = icmp eq i32 %18, 2
  %101 = zext i1 %100 to i32
  %102 = load i32, ptr @Second_Field, align 4
  %103 = icmp ne i32 %102, 0
  %104 = select i1 %15, i1 %103, i1 false
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, ptr %5, align 4, !tbaa !7
  %107 = icmp eq i32 %106, %101
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %99
  br label %109

109:                                              ; preds = %108, %105
  %110 = phi ptr [ @forward_reference_frame, %108 ], [ @backward_reference_frame, %105 ]
  %111 = icmp ne i32 %3, 1
  %112 = and i1 %111, %13
  br i1 %112, label %122, label %113

113:                                              ; preds = %109
  %114 = icmp slt i32 %10, 2
  br i1 %114, label %115, label %172

115:                                              ; preds = %113
  %116 = load i32, ptr %5, align 4, !tbaa !7
  %117 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %118 = shl i32 %117, 1
  %119 = load i32, ptr %4, align 4, !tbaa !7
  %120 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %121 = load i32, ptr %120, align 4, !tbaa !7
  tail call fastcc void @form_prediction(ptr noundef nonnull %110, i32 noundef %116, i32 noundef 0, i32 noundef %118, i32 noundef %118, i32 noundef 16, i32 noundef %0, i32 noundef %1, i32 noundef %119, i32 noundef %121, i32 noundef %10) #31
  br label %172

122:                                              ; preds = %109
  switch i32 %3, label %170 [
    i32 2, label %123
    i32 3, label %153
  ]

123:                                              ; preds = %122
  %124 = icmp slt i32 %10, 2
  br i1 %124, label %125, label %172

125:                                              ; preds = %123
  %126 = load i32, ptr %5, align 4, !tbaa !7
  %127 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %128 = shl i32 %127, 1
  %129 = load i32, ptr %4, align 4, !tbaa !7
  %130 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %131 = load i32, ptr %130, align 4, !tbaa !7
  tail call fastcc void @form_prediction(ptr noundef nonnull %110, i32 noundef %126, i32 noundef 0, i32 noundef %128, i32 noundef %128, i32 noundef 8, i32 noundef %0, i32 noundef %1, i32 noundef %129, i32 noundef %131, i32 noundef %10) #31
  %132 = load i32, ptr @picture_coding_type, align 4, !tbaa !7
  %133 = icmp eq i32 %132, 2
  %134 = load i32, ptr @Second_Field, align 4
  %135 = icmp ne i32 %134, 0
  %136 = select i1 %133, i1 %135, i1 false
  %137 = getelementptr inbounds [2 x i32], ptr %5, i64 1
  %138 = load i32, ptr %137, align 4, !tbaa !7
  br i1 %136, label %139, label %141

139:                                              ; preds = %125
  %140 = icmp eq i32 %138, %101
  br i1 %140, label %141, label %143

141:                                              ; preds = %139, %125
  %142 = phi i32 [ %101, %139 ], [ %138, %125 ]
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %142, %141 ], [ %138, %139 ]
  %145 = phi ptr [ @forward_reference_frame, %141 ], [ @backward_reference_frame, %139 ]
  %146 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %147 = shl i32 %146, 1
  %148 = add nsw i32 %1, 8
  %149 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 1
  %150 = load i32, ptr %149, align 4, !tbaa !7
  %151 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 1, i64 0, i64 1
  %152 = load i32, ptr %151, align 4, !tbaa !7
  tail call fastcc void @form_prediction(ptr noundef nonnull %145, i32 noundef %144, i32 noundef 0, i32 noundef %147, i32 noundef %147, i32 noundef 8, i32 noundef %0, i32 noundef %148, i32 noundef %150, i32 noundef %152, i32 noundef %10) #31
  br label %172

153:                                              ; preds = %122
  %154 = icmp eq i32 %102, 0
  %155 = select i1 %154, ptr @forward_reference_frame, ptr @backward_reference_frame
  %156 = load i32, ptr %4, align 4, !tbaa !7
  %157 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %158 = load i32, ptr %157, align 4, !tbaa !7
  call void @Dual_Prime_Arithmetic(ptr noundef nonnull %9, ptr noundef %6, i32 noundef %156, i32 noundef %158) #32
  %159 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %160 = shl i32 %159, 1
  %161 = load i32, ptr %4, align 4, !tbaa !7
  %162 = load i32, ptr %157, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @forward_reference_frame, i32 noundef %101, i32 noundef 0, i32 noundef %160, i32 noundef %160, i32 noundef 16, i32 noundef %0, i32 noundef %1, i32 noundef %161, i32 noundef %162, i32 noundef 0) #31
  %163 = xor i1 %100, true
  %164 = zext i1 %163 to i32
  %165 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %166 = shl i32 %165, 1
  %167 = load i32, ptr %9, align 16, !tbaa !7
  %168 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 1
  %169 = load i32, ptr %168, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull %155, i32 noundef %164, i32 noundef 0, i32 noundef %166, i32 noundef %166, i32 noundef 16, i32 noundef %0, i32 noundef %1, i32 noundef %167, i32 noundef %169, i32 noundef 1) #31
  br label %172

170:                                              ; preds = %122
  %171 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %172

172:                                              ; preds = %170, %153, %143, %123, %115, %113, %97, %84, %82, %53, %51, %33, %31, %8
  %173 = phi i32 [ %10, %8 ], [ 1, %115 ], [ 1, %113 ], [ 1, %153 ], [ 1, %170 ], [ 1, %123 ], [ 1, %143 ], [ 1, %33 ], [ 1, %31 ], [ 1, %97 ], [ 1, %84 ], [ 1, %82 ], [ 1, %51 ], [ 1, %53 ]
  %174 = phi i32 [ %11, %8 ], [ 1, %115 ], [ 1, %113 ], [ 1, %153 ], [ 1, %170 ], [ 1, %123 ], [ 1, %143 ], [ 1, %33 ], [ 1, %31 ], [ 1, %97 ], [ 1, %84 ], [ 1, %82 ], [ 1, %51 ], [ 1, %53 ]
  %175 = and i32 %2, 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %255, label %177

177:                                              ; preds = %172
  %178 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %179 = icmp eq i32 %178, 3
  br i1 %179, label %180, label %225

180:                                              ; preds = %177
  %181 = icmp eq i32 %3, 2
  %182 = icmp slt i32 %173, 2
  br i1 %181, label %183, label %200

183:                                              ; preds = %180
  br i1 %182, label %184, label %191

184:                                              ; preds = %183
  %185 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %186 = shl i32 %185, 1
  %187 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 0, i64 1
  %188 = load i32, ptr %187, align 4, !tbaa !7
  %189 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 0, i64 1, i64 1
  %190 = load i32, ptr %189, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef 0, i32 noundef 0, i32 noundef %185, i32 noundef %186, i32 noundef 8, i32 noundef %0, i32 noundef %1, i32 noundef %188, i32 noundef %190, i32 noundef %173) #31
  br label %191

191:                                              ; preds = %184, %183
  %192 = icmp slt i32 %174, 2
  br i1 %192, label %193, label %255

193:                                              ; preds = %191
  %194 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %195 = shl i32 %194, 1
  %196 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 0, i64 1
  %197 = load i32, ptr %196, align 4, !tbaa !7
  %198 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 0, i64 1, i64 1
  %199 = load i32, ptr %198, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef 1, i32 noundef 1, i32 noundef %194, i32 noundef %195, i32 noundef 8, i32 noundef %0, i32 noundef %1, i32 noundef %197, i32 noundef %199, i32 noundef %174) #31
  br label %255

200:                                              ; preds = %180
  br i1 %182, label %201, label %212

201:                                              ; preds = %200
  %202 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %203 = load i32, ptr %202, align 4, !tbaa !7
  %204 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %205 = shl i32 %204, 1
  %206 = ashr i32 %1, 1
  %207 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 0, i64 1
  %208 = load i32, ptr %207, align 4, !tbaa !7
  %209 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 0, i64 1, i64 1
  %210 = load i32, ptr %209, align 4, !tbaa !7
  %211 = ashr i32 %210, 1
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef %203, i32 noundef 0, i32 noundef %205, i32 noundef %205, i32 noundef 8, i32 noundef %0, i32 noundef %206, i32 noundef %208, i32 noundef %211, i32 noundef %173) #31
  br label %212

212:                                              ; preds = %201, %200
  %213 = icmp slt i32 %174, 2
  br i1 %213, label %214, label %255

214:                                              ; preds = %212
  %215 = getelementptr inbounds [2 x i32], ptr %5, i64 1, i64 1
  %216 = load i32, ptr %215, align 4, !tbaa !7
  %217 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %218 = shl i32 %217, 1
  %219 = ashr i32 %1, 1
  %220 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 1, i64 1
  %221 = load i32, ptr %220, align 4, !tbaa !7
  %222 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 1, i64 1, i64 1
  %223 = load i32, ptr %222, align 4, !tbaa !7
  %224 = ashr i32 %223, 1
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef %216, i32 noundef 1, i32 noundef %218, i32 noundef %218, i32 noundef 8, i32 noundef %0, i32 noundef %219, i32 noundef %221, i32 noundef %224, i32 noundef %174) #31
  br label %255

225:                                              ; preds = %177
  switch i32 %3, label %253 [
    i32 1, label %226
    i32 2, label %235
  ]

226:                                              ; preds = %225
  %227 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %228 = load i32, ptr %227, align 4, !tbaa !7
  %229 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %230 = shl i32 %229, 1
  %231 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 0, i64 1
  %232 = load i32, ptr %231, align 4, !tbaa !7
  %233 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 0, i64 1, i64 1
  %234 = load i32, ptr %233, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef %228, i32 noundef 0, i32 noundef %230, i32 noundef %230, i32 noundef 16, i32 noundef %0, i32 noundef %1, i32 noundef %232, i32 noundef %234, i32 noundef %173) #31
  br label %255

235:                                              ; preds = %225
  %236 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %237 = load i32, ptr %236, align 4, !tbaa !7
  %238 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %239 = shl i32 %238, 1
  %240 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 0, i64 1
  %241 = load i32, ptr %240, align 4, !tbaa !7
  %242 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 0, i64 1, i64 1
  %243 = load i32, ptr %242, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef %237, i32 noundef 0, i32 noundef %239, i32 noundef %239, i32 noundef 8, i32 noundef %0, i32 noundef %1, i32 noundef %241, i32 noundef %243, i32 noundef %173) #31
  %244 = getelementptr inbounds [2 x i32], ptr %5, i64 1, i64 1
  %245 = load i32, ptr %244, align 4, !tbaa !7
  %246 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %247 = shl i32 %246, 1
  %248 = add nsw i32 %1, 8
  %249 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 1, i64 1
  %250 = load i32, ptr %249, align 4, !tbaa !7
  %251 = getelementptr inbounds [2 x [2 x i32]], ptr %4, i64 1, i64 1, i64 1
  %252 = load i32, ptr %251, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef %245, i32 noundef 0, i32 noundef %247, i32 noundef %247, i32 noundef 8, i32 noundef %0, i32 noundef %248, i32 noundef %250, i32 noundef %252, i32 noundef %173) #31
  br label %255

253:                                              ; preds = %225
  %254 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %255

255:                                              ; preds = %253, %235, %226, %214, %212, %193, %191, %172
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @form_prediction(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #26 {
  %12 = load ptr, ptr %0, align 8, !tbaa !11
  %13 = icmp eq i32 %1, 0
  %14 = ashr i32 %4, 1
  %15 = select i1 %13, i32 0, i32 %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %12, i64 %16
  %18 = load ptr, ptr @current_frame, align 16, !tbaa !11
  %19 = icmp eq i32 %2, 0
  %20 = select i1 %19, i32 0, i32 %14
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  tail call fastcc void @form_component_prediction(ptr noundef %17, ptr noundef %22, i32 noundef %3, i32 noundef %4, i32 noundef 16, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #31
  %23 = load i32, ptr @chroma_format, align 4, !tbaa !7
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %34, label %25

25:                                               ; preds = %11
  %26 = ashr i32 %3, 1
  %27 = ashr i32 %6, 1
  %28 = sdiv i32 %8, 2
  %29 = icmp eq i32 %23, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = lshr i32 %5, 1
  %32 = ashr i32 %7, 1
  %33 = sdiv i32 %9, 2
  br label %34

34:                                               ; preds = %30, %25, %11
  %35 = phi i32 [ %26, %30 ], [ %26, %25 ], [ %3, %11 ]
  %36 = phi i32 [ %28, %30 ], [ %28, %25 ], [ %8, %11 ]
  %37 = phi i32 [ %27, %30 ], [ %27, %25 ], [ %6, %11 ]
  %38 = phi i32 [ 8, %30 ], [ 8, %25 ], [ 16, %11 ]
  %39 = phi i32 [ %14, %30 ], [ %14, %25 ], [ %4, %11 ]
  %40 = phi i32 [ %31, %30 ], [ %5, %25 ], [ %5, %11 ]
  %41 = phi i32 [ %32, %30 ], [ %7, %25 ], [ %7, %11 ]
  %42 = phi i32 [ %33, %30 ], [ %9, %25 ], [ %9, %11 ]
  %43 = getelementptr inbounds ptr, ptr %0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = ashr i32 %39, 1
  %46 = select i1 %13, i32 0, i32 %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  %49 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @current_frame, i64 0, i64 1), align 8, !tbaa !11
  %50 = select i1 %19, i32 0, i32 %45
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  tail call fastcc void @form_component_prediction(ptr noundef %48, ptr noundef %52, i32 noundef %35, i32 noundef %39, i32 noundef %38, i32 noundef %40, i32 noundef %37, i32 noundef %41, i32 noundef %36, i32 noundef %42, i32 noundef %10) #31
  %53 = getelementptr inbounds ptr, ptr %0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  %55 = getelementptr inbounds i8, ptr %54, i64 %47
  %56 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @current_frame, i64 0, i64 2), align 16, !tbaa !11
  %57 = getelementptr inbounds i8, ptr %56, i64 %51
  tail call fastcc void @form_component_prediction(ptr noundef %55, ptr noundef %57, i32 noundef %35, i32 noundef %39, i32 noundef %38, i32 noundef %40, i32 noundef %37, i32 noundef %41, i32 noundef %36, i32 noundef %42, i32 noundef %10) #31
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @form_component_prediction(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #26 {
  %12 = ashr i32 %8, 1
  %13 = ashr i32 %9, 1
  %14 = and i32 %9, 1
  %15 = add nsw i32 %13, %7
  %16 = mul nsw i32 %15, %2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = sext i32 %6 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = mul nsw i32 %7, %2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %1, i64 %24
  %26 = getelementptr inbounds i8, ptr %25, i64 %19
  %27 = icmp ne i32 %14, 0
  %28 = or i32 %9, %8
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %11
  %32 = icmp eq i32 %10, 0
  %33 = icmp sgt i32 %5, 0
  br i1 %32, label %39, label %34

34:                                               ; preds = %31
  br i1 %33, label %35, label %311

35:                                               ; preds = %34
  %36 = icmp sgt i32 %4, 0
  %37 = sext i32 %3 to i64
  %38 = zext i32 %4 to i64
  br label %44

39:                                               ; preds = %31
  br i1 %33, label %40, label %311

40:                                               ; preds = %39
  %41 = icmp sgt i32 %4, 0
  %42 = sext i32 %3 to i64
  %43 = zext i32 %4 to i64
  br label %67

44:                                               ; preds = %62, %35
  %45 = phi ptr [ %26, %35 ], [ %64, %62 ]
  %46 = phi ptr [ %22, %35 ], [ %63, %62 ]
  %47 = phi i32 [ 0, %35 ], [ %65, %62 ]
  br i1 %36, label %48, label %62

48:                                               ; preds = %48, %44
  %49 = phi i64 [ %60, %48 ], [ 0, %44 ]
  %50 = getelementptr inbounds i8, ptr %45, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !15
  %52 = zext i8 %51 to i16
  %53 = getelementptr inbounds i8, ptr %46, i64 %49
  %54 = load i8, ptr %53, align 1, !tbaa !15
  %55 = zext i8 %54 to i16
  %56 = add nuw nsw i16 %52, 1
  %57 = add nuw nsw i16 %56, %55
  %58 = lshr i16 %57, 1
  %59 = trunc i16 %58 to i8
  store i8 %59, ptr %50, align 1, !tbaa !15
  %60 = add nuw nsw i64 %49, 1
  %61 = icmp eq i64 %60, %38
  br i1 %61, label %62, label %48, !llvm.loop !102

62:                                               ; preds = %48, %44
  %63 = getelementptr inbounds i8, ptr %46, i64 %37
  %64 = getelementptr inbounds i8, ptr %45, i64 %37
  %65 = add nuw nsw i32 %47, 1
  %66 = icmp eq i32 %65, %5
  br i1 %66, label %311, label %44, !llvm.loop !103

67:                                               ; preds = %78, %40
  %68 = phi ptr [ %26, %40 ], [ %80, %78 ]
  %69 = phi ptr [ %22, %40 ], [ %79, %78 ]
  %70 = phi i32 [ 0, %40 ], [ %81, %78 ]
  br i1 %41, label %71, label %78

71:                                               ; preds = %71, %67
  %72 = phi i64 [ %76, %71 ], [ 0, %67 ]
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = getelementptr inbounds i8, ptr %68, i64 %72
  store i8 %74, ptr %75, align 1, !tbaa !15
  %76 = add nuw nsw i64 %72, 1
  %77 = icmp eq i64 %76, %43
  br i1 %77, label %78, label %71, !llvm.loop !104

78:                                               ; preds = %71, %67
  %79 = getelementptr inbounds i8, ptr %69, i64 %42
  %80 = getelementptr inbounds i8, ptr %68, i64 %42
  %81 = add nuw nsw i32 %70, 1
  %82 = icmp eq i32 %81, %5
  br i1 %82, label %311, label %67, !llvm.loop !105

83:                                               ; preds = %11
  %84 = and i32 %8, 1
  %85 = icmp eq i32 %84, 0
  %86 = and i1 %85, %27
  br i1 %86, label %87, label %157

87:                                               ; preds = %83
  %88 = icmp eq i32 %10, 0
  %89 = icmp sgt i32 %5, 0
  br i1 %88, label %96, label %90

90:                                               ; preds = %87
  br i1 %89, label %91, label %311

91:                                               ; preds = %90
  %92 = icmp sgt i32 %4, 0
  %93 = sext i32 %3 to i64
  %94 = sext i32 %2 to i64
  %95 = zext i32 %4 to i64
  br label %102

96:                                               ; preds = %87
  br i1 %89, label %97, label %311

97:                                               ; preds = %96
  %98 = icmp sgt i32 %4, 0
  %99 = sext i32 %3 to i64
  %100 = sext i32 %2 to i64
  %101 = zext i32 %4 to i64
  br label %132

102:                                              ; preds = %127, %91
  %103 = phi ptr [ %26, %91 ], [ %129, %127 ]
  %104 = phi ptr [ %22, %91 ], [ %128, %127 ]
  %105 = phi i32 [ 0, %91 ], [ %130, %127 ]
  br i1 %92, label %106, label %127

106:                                              ; preds = %106, %102
  %107 = phi i64 [ %125, %106 ], [ 0, %102 ]
  %108 = getelementptr inbounds i8, ptr %103, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !15
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %104, i64 %107
  %112 = load i8, ptr %111, align 1, !tbaa !15
  %113 = zext i8 %112 to i16
  %114 = add nsw i64 %107, %94
  %115 = getelementptr inbounds i8, ptr %104, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !15
  %117 = zext i8 %116 to i16
  %118 = add nuw nsw i16 %113, 1
  %119 = add nuw nsw i16 %118, %117
  %120 = lshr i16 %119, 1
  %121 = add nuw nsw i16 %110, 1
  %122 = add nuw nsw i16 %121, %120
  %123 = lshr i16 %122, 1
  %124 = trunc i16 %123 to i8
  store i8 %124, ptr %108, align 1, !tbaa !15
  %125 = add nuw nsw i64 %107, 1
  %126 = icmp eq i64 %125, %95
  br i1 %126, label %127, label %106, !llvm.loop !106

127:                                              ; preds = %106, %102
  %128 = getelementptr inbounds i8, ptr %104, i64 %93
  %129 = getelementptr inbounds i8, ptr %103, i64 %93
  %130 = add nuw nsw i32 %105, 1
  %131 = icmp eq i32 %130, %5
  br i1 %131, label %311, label %102, !llvm.loop !107

132:                                              ; preds = %152, %97
  %133 = phi ptr [ %26, %97 ], [ %154, %152 ]
  %134 = phi ptr [ %22, %97 ], [ %153, %152 ]
  %135 = phi i32 [ 0, %97 ], [ %155, %152 ]
  br i1 %98, label %136, label %152

136:                                              ; preds = %136, %132
  %137 = phi i64 [ %150, %136 ], [ 0, %132 ]
  %138 = getelementptr inbounds i8, ptr %134, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !15
  %140 = zext i8 %139 to i16
  %141 = add nsw i64 %137, %100
  %142 = getelementptr inbounds i8, ptr %134, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !15
  %144 = zext i8 %143 to i16
  %145 = add nuw nsw i16 %140, 1
  %146 = add nuw nsw i16 %145, %144
  %147 = lshr i16 %146, 1
  %148 = trunc i16 %147 to i8
  %149 = getelementptr inbounds i8, ptr %133, i64 %137
  store i8 %148, ptr %149, align 1, !tbaa !15
  %150 = add nuw nsw i64 %137, 1
  %151 = icmp eq i64 %150, %101
  br i1 %151, label %152, label %136, !llvm.loop !108

152:                                              ; preds = %136, %132
  %153 = getelementptr inbounds i8, ptr %134, i64 %99
  %154 = getelementptr inbounds i8, ptr %133, i64 %99
  %155 = add nuw nsw i32 %135, 1
  %156 = icmp eq i32 %155, %5
  br i1 %156, label %311, label %132, !llvm.loop !109

157:                                              ; preds = %83
  %158 = or i1 %85, %27
  %159 = icmp eq i32 %10, 0
  %160 = icmp sgt i32 %5, 0
  br i1 %158, label %225, label %161

161:                                              ; preds = %157
  br i1 %159, label %167, label %162

162:                                              ; preds = %161
  br i1 %160, label %163, label %311

163:                                              ; preds = %162
  %164 = icmp sgt i32 %4, 0
  %165 = sext i32 %3 to i64
  %166 = zext i32 %4 to i64
  br label %172

167:                                              ; preds = %161
  br i1 %160, label %168, label %311

168:                                              ; preds = %167
  %169 = icmp sgt i32 %4, 0
  %170 = sext i32 %3 to i64
  %171 = zext i32 %4 to i64
  br label %201

172:                                              ; preds = %196, %163
  %173 = phi ptr [ %26, %163 ], [ %198, %196 ]
  %174 = phi ptr [ %22, %163 ], [ %197, %196 ]
  %175 = phi i32 [ 0, %163 ], [ %199, %196 ]
  br i1 %164, label %176, label %196

176:                                              ; preds = %176, %172
  %177 = phi i64 [ %184, %176 ], [ 0, %172 ]
  %178 = getelementptr inbounds i8, ptr %173, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !15
  %180 = zext i8 %179 to i16
  %181 = getelementptr inbounds i8, ptr %174, i64 %177
  %182 = load i8, ptr %181, align 1, !tbaa !15
  %183 = zext i8 %182 to i16
  %184 = add nuw nsw i64 %177, 1
  %185 = getelementptr inbounds i8, ptr %174, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !15
  %187 = zext i8 %186 to i16
  %188 = add nuw nsw i16 %183, 1
  %189 = add nuw nsw i16 %188, %187
  %190 = lshr i16 %189, 1
  %191 = add nuw nsw i16 %180, 1
  %192 = add nuw nsw i16 %191, %190
  %193 = lshr i16 %192, 1
  %194 = trunc i16 %193 to i8
  store i8 %194, ptr %178, align 1, !tbaa !15
  %195 = icmp eq i64 %184, %166
  br i1 %195, label %196, label %176, !llvm.loop !110

196:                                              ; preds = %176, %172
  %197 = getelementptr inbounds i8, ptr %174, i64 %165
  %198 = getelementptr inbounds i8, ptr %173, i64 %165
  %199 = add nuw nsw i32 %175, 1
  %200 = icmp eq i32 %199, %5
  br i1 %200, label %311, label %172, !llvm.loop !111

201:                                              ; preds = %220, %168
  %202 = phi ptr [ %26, %168 ], [ %222, %220 ]
  %203 = phi ptr [ %22, %168 ], [ %221, %220 ]
  %204 = phi i32 [ 0, %168 ], [ %223, %220 ]
  br i1 %169, label %205, label %220

205:                                              ; preds = %205, %201
  %206 = phi i64 [ %210, %205 ], [ 0, %201 ]
  %207 = getelementptr inbounds i8, ptr %203, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !15
  %209 = zext i8 %208 to i16
  %210 = add nuw nsw i64 %206, 1
  %211 = getelementptr inbounds i8, ptr %203, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !15
  %213 = zext i8 %212 to i16
  %214 = add nuw nsw i16 %209, 1
  %215 = add nuw nsw i16 %214, %213
  %216 = lshr i16 %215, 1
  %217 = trunc i16 %216 to i8
  %218 = getelementptr inbounds i8, ptr %202, i64 %206
  store i8 %217, ptr %218, align 1, !tbaa !15
  %219 = icmp eq i64 %210, %171
  br i1 %219, label %220, label %205, !llvm.loop !112

220:                                              ; preds = %205, %201
  %221 = getelementptr inbounds i8, ptr %203, i64 %170
  %222 = getelementptr inbounds i8, ptr %202, i64 %170
  %223 = add nuw nsw i32 %204, 1
  %224 = icmp eq i32 %223, %5
  br i1 %224, label %311, label %201, !llvm.loop !113

225:                                              ; preds = %157
  br i1 %159, label %232, label %226

226:                                              ; preds = %225
  br i1 %160, label %227, label %311

227:                                              ; preds = %226
  %228 = icmp sgt i32 %4, 0
  %229 = sext i32 %3 to i64
  %230 = sext i32 %2 to i64
  %231 = zext i32 %4 to i64
  br label %238

232:                                              ; preds = %225
  br i1 %160, label %233, label %311

233:                                              ; preds = %232
  %234 = icmp sgt i32 %4, 0
  %235 = sext i32 %3 to i64
  %236 = sext i32 %2 to i64
  %237 = zext i32 %4 to i64
  br label %277

238:                                              ; preds = %272, %227
  %239 = phi ptr [ %26, %227 ], [ %274, %272 ]
  %240 = phi ptr [ %22, %227 ], [ %273, %272 ]
  %241 = phi i32 [ 0, %227 ], [ %275, %272 ]
  br i1 %228, label %242, label %272

242:                                              ; preds = %242, %238
  %243 = phi i64 [ %250, %242 ], [ 0, %238 ]
  %244 = getelementptr inbounds i8, ptr %239, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !15
  %246 = zext i8 %245 to i32
  %247 = getelementptr inbounds i8, ptr %240, i64 %243
  %248 = load i8, ptr %247, align 1, !tbaa !15
  %249 = zext i8 %248 to i32
  %250 = add nuw nsw i64 %243, 1
  %251 = getelementptr inbounds i8, ptr %240, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !15
  %253 = zext i8 %252 to i32
  %254 = add nsw i64 %243, %230
  %255 = getelementptr inbounds i8, ptr %240, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !15
  %257 = zext i8 %256 to i32
  %258 = add nsw i64 %254, 1
  %259 = getelementptr inbounds i8, ptr %240, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !15
  %261 = zext i8 %260 to i32
  %262 = add nuw nsw i32 %249, 2
  %263 = add nuw nsw i32 %262, %253
  %264 = add nuw nsw i32 %263, %257
  %265 = add nuw nsw i32 %264, %261
  %266 = lshr i32 %265, 2
  %267 = add nuw nsw i32 %246, 1
  %268 = add nuw nsw i32 %267, %266
  %269 = lshr i32 %268, 1
  %270 = trunc i32 %269 to i8
  store i8 %270, ptr %244, align 1, !tbaa !15
  %271 = icmp eq i64 %250, %231
  br i1 %271, label %272, label %242, !llvm.loop !114

272:                                              ; preds = %242, %238
  %273 = getelementptr inbounds i8, ptr %240, i64 %229
  %274 = getelementptr inbounds i8, ptr %239, i64 %229
  %275 = add nuw nsw i32 %241, 1
  %276 = icmp eq i32 %275, %5
  br i1 %276, label %311, label %238, !llvm.loop !115

277:                                              ; preds = %306, %233
  %278 = phi ptr [ %26, %233 ], [ %308, %306 ]
  %279 = phi ptr [ %22, %233 ], [ %307, %306 ]
  %280 = phi i32 [ 0, %233 ], [ %309, %306 ]
  br i1 %234, label %281, label %306

281:                                              ; preds = %281, %277
  %282 = phi i64 [ %286, %281 ], [ 0, %277 ]
  %283 = getelementptr inbounds i8, ptr %279, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !15
  %285 = zext i8 %284 to i16
  %286 = add nuw nsw i64 %282, 1
  %287 = getelementptr inbounds i8, ptr %279, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !15
  %289 = zext i8 %288 to i16
  %290 = add nsw i64 %282, %236
  %291 = getelementptr inbounds i8, ptr %279, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !15
  %293 = zext i8 %292 to i16
  %294 = add nsw i64 %290, 1
  %295 = getelementptr inbounds i8, ptr %279, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !15
  %297 = zext i8 %296 to i16
  %298 = add nuw nsw i16 %285, 2
  %299 = add nuw nsw i16 %298, %289
  %300 = add nuw nsw i16 %299, %293
  %301 = add nuw nsw i16 %300, %297
  %302 = lshr i16 %301, 2
  %303 = trunc i16 %302 to i8
  %304 = getelementptr inbounds i8, ptr %278, i64 %282
  store i8 %303, ptr %304, align 1, !tbaa !15
  %305 = icmp eq i64 %286, %237
  br i1 %305, label %306, label %281, !llvm.loop !116

306:                                              ; preds = %281, %277
  %307 = getelementptr inbounds i8, ptr %279, i64 %235
  %308 = getelementptr inbounds i8, ptr %278, i64 %235
  %309 = add nuw nsw i32 %280, 1
  %310 = icmp eq i32 %309, %5
  br i1 %310, label %311, label %277, !llvm.loop !117

311:                                              ; preds = %306, %272, %232, %226, %220, %196, %167, %162, %152, %127, %96, %90, %78, %62, %39, %34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Substitute_Frame_Buffer(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp ne i32 %1, 0
  %4 = load i32, ptr @Second_Field, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %41

7:                                                ; preds = %2
  %8 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %9 = icmp ne i32 %8, 3
  %10 = select i1 %9, i1 %5, i1 false
  %11 = load i32, ptr @picture_coding_type, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %10, label %28, label %13

13:                                               ; preds = %7
  br i1 %12, label %14, label %17

14:                                               ; preds = %13
  %15 = add nsw i32 %0, -1
  %16 = load ptr, ptr @Substitute_Picture_Filename, align 8, !tbaa !11
  tail call fastcc void @Read_Frame(ptr noundef %16, ptr noundef nonnull @forward_reference_frame, i32 noundef %15) #31
  br label %41

17:                                               ; preds = %13
  %18 = icmp ne i32 %11, 3
  %19 = load i1, ptr @Substitute_Frame_Buffer.bgate, align 4
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr @Substitute_Frame_Buffer.previous_temporal_reference, align 4, !tbaa !7
  %23 = load i32, ptr @temporal_reference, align 4, !tbaa !7
  %24 = add i32 %0, -1
  %25 = add i32 %24, %22
  %26 = sub i32 %25, %23
  %27 = load ptr, ptr @Substitute_Picture_Filename, align 8, !tbaa !11
  tail call fastcc void @Read_Frame(ptr noundef %27, ptr noundef nonnull @backward_reference_frame, i32 noundef %26) #31
  br label %41

28:                                               ; preds = %7
  br i1 %12, label %29, label %46

29:                                               ; preds = %28
  %30 = load i32, ptr @Substitute_Frame_Buffer.previous_picture_coding_type, align 4, !tbaa !7
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr @temporal_reference, align 4, !tbaa !7
  %34 = load i32, ptr @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4, !tbaa !7
  %35 = add i32 %0, -1
  %36 = add i32 %35, %33
  %37 = sub i32 %36, %34
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i32 [ %37, %32 ], [ %0, %29 ]
  %40 = load ptr, ptr @Substitute_Picture_Filename, align 8, !tbaa !11
  tail call fastcc void @Read_Frame(ptr noundef %40, ptr noundef nonnull @current_frame, i32 noundef %39) #31
  br label %41

41:                                               ; preds = %38, %21, %17, %14, %2
  %42 = load i32, ptr @picture_coding_type, align 4, !tbaa !7
  %43 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %44 = load i32, ptr @Second_Field, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %41, %28
  %47 = phi i1 [ %45, %41 ], [ true, %28 ]
  %48 = phi i32 [ %43, %41 ], [ %8, %28 ]
  %49 = phi i32 [ %42, %41 ], [ %11, %28 ]
  %50 = icmp eq i32 %49, 3
  store i1 %50, ptr @Substitute_Frame_Buffer.bgate, align 4
  %51 = icmp ne i32 %48, 3
  %52 = select i1 %51, i1 %47, i1 false
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i32, ptr @temporal_reference, align 4, !tbaa !7
  store i32 %54, ptr @Substitute_Frame_Buffer.previous_temporal_reference, align 4, !tbaa !7
  br label %55

55:                                               ; preds = %53, %46
  %56 = xor i1 %50, true
  %57 = icmp eq i32 %48, 3
  %58 = select i1 %57, i1 true, i1 %47
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, ptr @temporal_reference, align 4, !tbaa !7
  store i32 %61, ptr @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4, !tbaa !7
  br label %62

62:                                               ; preds = %60, %55
  store i32 %49, ptr @Substitute_Frame_Buffer.previous_picture_coding_type, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Read_Frame(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = icmp slt i32 %2, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %2) #31
  br label %9

9:                                                ; preds = %7, %3
  %10 = load i32, ptr @Big_Picture_Flag, align 4, !tbaa !7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %79, label %12

12:                                               ; preds = %9
  %13 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.2.208) #31
  %14 = icmp eq ptr %13, null
  br i1 %14, label %93, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %17 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %18 = mul nsw i32 %17, %16
  %19 = load i32, ptr @chroma_format, align 4, !tbaa !7
  switch i32 %19, label %27 [
    i32 3, label %20
    i32 2, label %22
    i32 1, label %24
  ]

20:                                               ; preds = %15
  %21 = mul nsw i32 %18, 3
  br label %29

22:                                               ; preds = %15
  %23 = shl nsw i32 %18, 1
  br label %29

24:                                               ; preds = %15
  %25 = mul nsw i32 %18, 3
  %26 = ashr i32 %25, 1
  br label %29

27:                                               ; preds = %15
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.209, i32 noundef %19) #31
  br label %29

29:                                               ; preds = %27, %24, %22, %20
  %30 = phi i32 [ %21, %20 ], [ %23, %22 ], [ %26, %24 ], [ %18, %27 ]
  %31 = mul nsw i32 %30, %2
  %32 = sext i32 %31 to i64
  %33 = tail call i32 @fseek(ptr noundef nonnull %13, i64 noundef %32, i32 noundef 0) #31
  %34 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %39, %29
  %37 = load i32, ptr @Chroma_Height, align 4, !tbaa !7
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %53, label %77

39:                                               ; preds = %39, %29
  %40 = phi i32 [ %48, %39 ], [ 0, %29 ]
  %41 = load ptr, ptr @substitute_frame, align 16, !tbaa !11
  %42 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %43 = mul nsw i32 %42, %40
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  %46 = sext i32 %42 to i64
  %47 = tail call i64 @fread(ptr noundef %45, i64 noundef 1, i64 noundef %46, ptr noundef nonnull %13) #31
  %48 = add nuw nsw i32 %40, 1
  %49 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %39, label %36, !llvm.loop !118

51:                                               ; preds = %53
  %.lcssa = phi i32 [ %63, %53 ]
  %52 = icmp sgt i32 %.lcssa, 0
  br i1 %52, label %65, label %77

53:                                               ; preds = %53, %36
  %54 = phi i32 [ %62, %53 ], [ 0, %36 ]
  %55 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @substitute_frame, i64 0, i64 1), align 8, !tbaa !11
  %56 = load i32, ptr @Chroma_Width, align 4, !tbaa !7
  %57 = mul nsw i32 %56, %54
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  %60 = sext i32 %56 to i64
  %61 = tail call i64 @fread(ptr noundef %59, i64 noundef 1, i64 noundef %60, ptr noundef nonnull %13) #31
  %62 = add nuw nsw i32 %54, 1
  %63 = load i32, ptr @Chroma_Height, align 4, !tbaa !7
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %53, label %51, !llvm.loop !119

65:                                               ; preds = %65, %51
  %66 = phi i32 [ %74, %65 ], [ 0, %51 ]
  %67 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @substitute_frame, i64 0, i64 2), align 16, !tbaa !11
  %68 = load i32, ptr @Chroma_Width, align 4, !tbaa !7
  %69 = mul nsw i32 %68, %66
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %67, i64 %70
  %72 = sext i32 %68 to i64
  %73 = tail call i64 @fread(ptr noundef %71, i64 noundef 1, i64 noundef %72, ptr noundef nonnull %13) #31
  %74 = add nuw nsw i32 %66, 1
  %75 = load i32, ptr @Chroma_Height, align 4, !tbaa !7
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %65, label %77, !llvm.loop !120

77:                                               ; preds = %65, %51, %36
  %78 = tail call i32 @fclose(ptr noundef nonnull %13) #31
  br label %96

79:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #39
  %80 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %0, i32 noundef %2) #32
  %81 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.5.210, ptr noundef nonnull %4) #32
  %82 = load ptr, ptr @substitute_frame, align 16, !tbaa !11
  %83 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %84 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  call fastcc void @Read_Component(ptr noundef nonnull %5, ptr noundef %82, i32 noundef %83, i32 noundef %84) #31
  %85 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.6.211, ptr noundef nonnull %4) #32
  %86 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @substitute_frame, i64 0, i64 1), align 8, !tbaa !11
  %87 = load i32, ptr @Chroma_Width, align 4, !tbaa !7
  %88 = load i32, ptr @Chroma_Height, align 4, !tbaa !7
  call fastcc void @Read_Component(ptr noundef nonnull %5, ptr noundef %86, i32 noundef %87, i32 noundef %88) #31
  %89 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.7.212, ptr noundef nonnull %4) #32
  %90 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @substitute_frame, i64 0, i64 2), align 16, !tbaa !11
  %91 = load i32, ptr @Chroma_Width, align 4, !tbaa !7
  %92 = load i32, ptr @Chroma_Height, align 4, !tbaa !7
  call fastcc void @Read_Component(ptr noundef nonnull %5, ptr noundef %90, i32 noundef %91, i32 noundef %92) #31
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #39
  br label %96

93:                                               ; preds = %12
  %94 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.3.213, ptr noundef %0) #32
  %95 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.214)
  br label %96

96:                                               ; preds = %93, %79, %77
  %97 = load i32, ptr @Second_Field, align 4, !tbaa !7
  %98 = icmp ne i32 %97, 0
  %99 = load i32, ptr @picture_coding_type, align 4
  %100 = icmp eq i32 %99, 2
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %104 = icmp eq i32 %103, 1
  %105 = zext i1 %104 to i32
  %106 = icmp ne i32 %103, 3
  %107 = zext i1 %106 to i32
  br label %108

108:                                              ; preds = %102, %96
  %109 = phi i32 [ %105, %102 ], [ 0, %96 ]
  %110 = phi i32 [ %107, %102 ], [ 0, %96 ]
  %111 = load ptr, ptr @substitute_frame, align 16, !tbaa !11
  %112 = load ptr, ptr %1, align 8, !tbaa !11
  %113 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %114 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  call fastcc void @Copy_Frame(ptr noundef %111, ptr noundef %112, i32 noundef %113, i32 noundef %114, i32 noundef %109, i32 noundef %110) #31
  %115 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @substitute_frame, i64 0, i64 1), align 8, !tbaa !11
  %116 = getelementptr inbounds ptr, ptr %1, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !11
  %118 = load i32, ptr @Chroma_Width, align 4, !tbaa !7
  %119 = load i32, ptr @Chroma_Height, align 4, !tbaa !7
  call fastcc void @Copy_Frame(ptr noundef %115, ptr noundef %117, i32 noundef %118, i32 noundef %119, i32 noundef %109, i32 noundef %110) #31
  %120 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @substitute_frame, i64 0, i64 2), align 16, !tbaa !11
  %121 = getelementptr inbounds ptr, ptr %1, i64 2
  %122 = load ptr, ptr %121, align 8, !tbaa !11
  %123 = load i32, ptr @Chroma_Width, align 4, !tbaa !7
  %124 = load i32, ptr @Chroma_Height, align 4, !tbaa !7
  call fastcc void @Copy_Frame(ptr noundef %120, ptr noundef %122, i32 noundef %123, i32 noundef %124, i32 noundef %109, i32 noundef %110) #31
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Read_Component(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = mul nsw i32 %3, %2
  %6 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #32
  %7 = sext i32 %5 to i64
  %8 = tail call i64 @read(i32 noundef %6, ptr noundef %1, i64 noundef %7) #32
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %5, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.215, i32 noundef %9, i32 noundef %5, ptr noundef %0) #31
  br label %13

13:                                               ; preds = %11, %4
  %14 = tail call i32 @close(i32 noundef %6) #32
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @Copy_Frame(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #27 {
  %7 = icmp ne i32 %5, 0
  %8 = select i1 %7, i32 2, i32 1
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = icmp eq i32 %4, 0
  %12 = and i1 %11, %7
  %13 = sext i32 %2 to i64
  %14 = icmp sgt i32 %2, 0
  %15 = zext i1 %7 to i32
  %16 = shl i32 %2, %15
  %17 = sext i32 %16 to i64
  %18 = select i1 %12, i64 %13, i64 0
  %19 = zext i32 %2 to i64
  br label %20

20:                                               ; preds = %33, %10
  %21 = phi i64 [ %18, %10 ], [ %35, %33 ]
  %22 = phi i64 [ 0, %10 ], [ %34, %33 ]
  %23 = phi i32 [ 0, %10 ], [ %36, %33 ]
  br i1 %14, label %24, label %33

24:                                               ; preds = %24, %20
  %25 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %26 = add nsw i64 %25, %21
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !15
  %29 = add nsw i64 %25, %22
  %30 = getelementptr inbounds i8, ptr %1, i64 %29
  store i8 %28, ptr %30, align 1, !tbaa !15
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %19
  br i1 %32, label %33, label %24, !llvm.loop !121

33:                                               ; preds = %24, %20
  %34 = add i64 %22, %17
  %35 = add i64 %21, %17
  %36 = add nuw nsw i32 %23, %8
  %37 = icmp slt i32 %36, %3
  br i1 %37, label %20, label %38, !llvm.loop !122

38:                                               ; preds = %33, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Decode_MPEG1_Intra_Block(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr @ld, align 8, !tbaa !11
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds %struct.layer_data, ptr %3, i64 0, i32 24, i64 %4
  %6 = icmp slt i32 %0, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call i32 @Get_Luma_DC_dct_diff() #32
  %9 = load i32, ptr %1, align 4, !tbaa !7
  %10 = add nsw i32 %9, %8
  store i32 %10, ptr %1, align 4, !tbaa !7
  br label %22

11:                                               ; preds = %2
  %12 = icmp eq i32 %0, 4
  %13 = tail call i32 @Get_Chroma_DC_dct_diff() #32
  br i1 %12, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds i32, ptr %1, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !7
  %17 = add nsw i32 %16, %13
  store i32 %17, ptr %15, align 4, !tbaa !7
  br label %22

18:                                               ; preds = %11
  %19 = getelementptr inbounds i32, ptr %1, i64 2
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = add nsw i32 %20, %13
  store i32 %21, ptr %19, align 4, !tbaa !7
  br label %22

22:                                               ; preds = %18, %14, %7
  %23 = phi i32 [ %17, %14 ], [ %21, %18 ], [ %10, %7 ]
  %24 = trunc i32 %23 to i16
  %25 = shl i16 %24, 3
  store i16 %25, ptr %5, align 2, !tbaa !47
  %26 = load i32, ptr @Fault_Flag, align 4, !tbaa !7
  %27 = icmp ne i32 %26, 0
  %28 = load i32, ptr @picture_coding_type, align 4
  %29 = icmp eq i32 %28, 4
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %151, label %31

31:                                               ; preds = %146, %22
  %32 = phi i32 [ %149, %146 ], [ 1, %22 ]
  %33 = tail call i32 @Show_Bits(i32 noundef 16) #32
  %34 = icmp ugt i32 %33, 16383
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = lshr i32 %33, 12
  %37 = add nsw i32 %36, -4
  br label %77

38:                                               ; preds = %31
  %39 = icmp ugt i32 %33, 1023
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = lshr i32 %33, 8
  %42 = add nsw i32 %41, -4
  br label %77

43:                                               ; preds = %38
  %44 = icmp ugt i32 %33, 511
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = lshr i32 %33, 6
  %47 = add nsw i32 %46, -8
  br label %77

48:                                               ; preds = %43
  %49 = icmp ugt i32 %33, 255
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = lshr i32 %33, 4
  %52 = add nsw i32 %51, -16
  br label %77

53:                                               ; preds = %48
  %54 = icmp ugt i32 %33, 127
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = lshr i32 %33, 3
  %57 = add nsw i32 %56, -16
  br label %77

58:                                               ; preds = %53
  %59 = icmp ugt i32 %33, 63
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = lshr i32 %33, 2
  %62 = add nsw i32 %61, -16
  br label %77

63:                                               ; preds = %58
  %64 = icmp ugt i32 %33, 31
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = lshr i32 %33, 1
  %67 = add nsw i32 %66, -16
  br label %77

68:                                               ; preds = %63
  %69 = icmp ugt i32 %33, 15
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = add nsw i32 %33, -16
  br label %77

72:                                               ; preds = %68
  %73 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %150

75:                                               ; preds = %72
  %76 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.218)
  br label %150

77:                                               ; preds = %70, %65, %60, %55, %50, %45, %40, %35
  %78 = phi i32 [ %42, %40 ], [ %52, %50 ], [ %62, %60 ], [ %71, %70 ], [ %67, %65 ], [ %57, %55 ], [ %47, %45 ], [ %37, %35 ]
  %79 = phi ptr [ @DCTtab0, %40 ], [ @DCTtab2, %50 ], [ @DCTtab4, %60 ], [ @DCTtab6, %70 ], [ @DCTtab5, %65 ], [ @DCTtab3, %55 ], [ @DCTtab1, %45 ], [ @DCTtabnext, %35 ]
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds [0 x %struct.DCTtab], ptr %79, i64 0, i64 %80
  %82 = getelementptr inbounds [0 x %struct.DCTtab], ptr %79, i64 0, i64 %80, i32 2
  %83 = load i8, ptr %82, align 1, !tbaa !123
  %84 = sext i8 %83 to i32
  tail call void @Flush_Buffer(i32 noundef %84) #32
  %85 = load i8, ptr %81, align 1, !tbaa !125
  switch i8 %85, label %102 [
    i8 64, label %151
    i8 65, label %86
  ]

86:                                               ; preds = %77
  %87 = tail call i32 @Get_Bits(i32 noundef 6) #32
  %88 = tail call i32 @Get_Bits(i32 noundef 8) #32
  switch i32 %88, label %94 [
    i32 0, label %89
    i32 128, label %91
  ]

89:                                               ; preds = %86
  %90 = tail call i32 @Get_Bits(i32 noundef 8) #32
  br label %98

91:                                               ; preds = %86
  %92 = tail call i32 @Get_Bits(i32 noundef 8) #32
  %93 = add i32 %92, -256
  br label %98

94:                                               ; preds = %86
  %95 = icmp sgt i32 %88, 128
  %96 = add nsw i32 %88, -256
  %97 = select i1 %95, i32 %96, i32 %88
  br label %98

98:                                               ; preds = %94, %91, %89
  %99 = phi i32 [ %90, %89 ], [ %93, %91 ], [ %97, %94 ]
  %100 = lshr i32 %99, 31
  %101 = tail call i32 @llvm.abs.i32(i32 %99, i1 true)
  br label %108

102:                                              ; preds = %77
  %103 = sext i8 %85 to i32
  %104 = getelementptr inbounds [0 x %struct.DCTtab], ptr %79, i64 0, i64 %80, i32 1
  %105 = load i8, ptr %104, align 1, !tbaa !126
  %106 = sext i8 %105 to i32
  %107 = tail call i32 @Get_Bits(i32 noundef 1) #32
  br label %108

108:                                              ; preds = %102, %98
  %109 = phi i32 [ %107, %102 ], [ %100, %98 ]
  %110 = phi i32 [ %103, %102 ], [ %87, %98 ]
  %111 = phi i32 [ %106, %102 ], [ %101, %98 ]
  %112 = add i32 %110, %32
  %113 = icmp sgt i32 %112, 63
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %150

117:                                              ; preds = %114
  %118 = load ptr, ptr @stdout, align 8, !tbaa !11
  %119 = tail call i64 @fwrite(ptr nonnull @.str.1.219, i64 42, i64 1, ptr %118)
  br label %150

120:                                              ; preds = %108
  %121 = sext i32 %112 to i64
  %122 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !15
  %124 = load ptr, ptr @ld, align 8, !tbaa !11
  %125 = getelementptr inbounds %struct.layer_data, ptr %124, i64 0, i32 22
  %126 = load i32, ptr %125, align 8, !tbaa !45
  %127 = mul nsw i32 %126, %111
  %128 = zext i8 %123 to i64
  %129 = getelementptr inbounds %struct.layer_data, ptr %124, i64 0, i32 8, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !7
  %131 = mul nsw i32 %127, %130
  %132 = icmp ult i32 %131, 8
  %133 = ashr i32 %131, 3
  %134 = add nsw i32 %133, -1
  %135 = or i32 %134, 1
  %136 = select i1 %132, i32 0, i32 %135
  %137 = icmp eq i32 %109, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %120
  %139 = tail call i32 @llvm.smin.i32(i32 %136, i32 2047)
  %140 = trunc i32 %139 to i16
  br label %146

141:                                              ; preds = %120
  %142 = icmp sgt i32 %136, 2048
  %143 = trunc i32 %136 to i16
  %144 = sub i16 0, %143
  %145 = select i1 %142, i16 -2048, i16 %144
  br label %146

146:                                              ; preds = %141, %138
  %147 = phi i16 [ %140, %138 ], [ %145, %141 ]
  %148 = getelementptr inbounds i16, ptr %5, i64 %128
  store i16 %147, ptr %148, align 2
  %149 = add nsw i32 %112, 1
  br label %31

150:                                              ; preds = %117, %114, %75, %72
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %151

151:                                              ; preds = %150, %77, %22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nounwind optsize uwtable
define internal void @Decode_MPEG1_Non_Intra_Block(i32 noundef %0) #0 {
  %2 = load ptr, ptr @ld, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.layer_data, ptr %2, i64 0, i32 24, i64 %3
  br label %5

5:                                                ; preds = %139, %1
  %6 = phi i32 [ 0, %1 ], [ %142, %139 ]
  %7 = tail call i32 @Show_Bits(i32 noundef 16) #32
  %8 = icmp ugt i32 %7, 16383
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = icmp eq i32 %6, 0
  %11 = lshr i32 %7, 12
  %12 = add nsw i32 %11, -4
  %13 = zext i32 %12 to i64
  br i1 %10, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtabfirst, i64 0, i64 %13
  br label %71

16:                                               ; preds = %9
  %17 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtabnext, i64 0, i64 %13
  br label %71

18:                                               ; preds = %5
  %19 = icmp ugt i32 %7, 1023
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = lshr i32 %7, 8
  %22 = add nsw i32 %21, -4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab0, i64 0, i64 %23
  br label %71

25:                                               ; preds = %18
  %26 = icmp ugt i32 %7, 511
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = lshr i32 %7, 6
  %29 = add nsw i32 %28, -8
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab1, i64 0, i64 %30
  br label %71

32:                                               ; preds = %25
  %33 = icmp ugt i32 %7, 255
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = lshr i32 %7, 4
  %36 = add nsw i32 %35, -16
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab2, i64 0, i64 %37
  br label %71

39:                                               ; preds = %32
  %40 = icmp ugt i32 %7, 127
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = lshr i32 %7, 3
  %43 = add nsw i32 %42, -16
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab3, i64 0, i64 %44
  br label %71

46:                                               ; preds = %39
  %47 = icmp ugt i32 %7, 63
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = lshr i32 %7, 2
  %50 = add nsw i32 %49, -16
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab4, i64 0, i64 %51
  br label %71

53:                                               ; preds = %46
  %54 = icmp ugt i32 %7, 31
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = lshr i32 %7, 1
  %57 = add nsw i32 %56, -16
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab5, i64 0, i64 %58
  br label %71

60:                                               ; preds = %53
  %61 = icmp ugt i32 %7, 15
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = add nsw i32 %7, -16
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab6, i64 0, i64 %64
  br label %71

66:                                               ; preds = %60
  %67 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %143

69:                                               ; preds = %66
  %70 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9.222)
  br label %143

71:                                               ; preds = %62, %55, %48, %41, %34, %27, %20, %16, %14
  %72 = phi ptr [ %15, %14 ], [ %17, %16 ], [ %24, %20 ], [ %31, %27 ], [ %38, %34 ], [ %45, %41 ], [ %52, %48 ], [ %59, %55 ], [ %65, %62 ]
  %73 = getelementptr inbounds %struct.DCTtab, ptr %72, i64 0, i32 2
  %74 = load i8, ptr %73, align 1, !tbaa !123
  %75 = sext i8 %74 to i32
  tail call void @Flush_Buffer(i32 noundef %75) #32
  %76 = load i8, ptr %72, align 1, !tbaa !125
  switch i8 %76, label %93 [
    i8 64, label %144
    i8 65, label %77
  ]

77:                                               ; preds = %71
  %78 = tail call i32 @Get_Bits(i32 noundef 6) #32
  %79 = tail call i32 @Get_Bits(i32 noundef 8) #32
  switch i32 %79, label %85 [
    i32 0, label %80
    i32 128, label %82
  ]

80:                                               ; preds = %77
  %81 = tail call i32 @Get_Bits(i32 noundef 8) #32
  br label %89

82:                                               ; preds = %77
  %83 = tail call i32 @Get_Bits(i32 noundef 8) #32
  %84 = add i32 %83, -256
  br label %89

85:                                               ; preds = %77
  %86 = icmp sgt i32 %79, 128
  %87 = add nsw i32 %79, -256
  %88 = select i1 %86, i32 %87, i32 %79
  br label %89

89:                                               ; preds = %85, %82, %80
  %90 = phi i32 [ %81, %80 ], [ %84, %82 ], [ %88, %85 ]
  %91 = lshr i32 %90, 31
  %92 = tail call i32 @llvm.abs.i32(i32 %90, i1 true)
  br label %99

93:                                               ; preds = %71
  %94 = sext i8 %76 to i32
  %95 = getelementptr inbounds %struct.DCTtab, ptr %72, i64 0, i32 1
  %96 = load i8, ptr %95, align 1, !tbaa !126
  %97 = sext i8 %96 to i32
  %98 = tail call i32 @Get_Bits(i32 noundef 1) #32
  br label %99

99:                                               ; preds = %93, %89
  %100 = phi i32 [ %98, %93 ], [ %91, %89 ]
  %101 = phi i32 [ %94, %93 ], [ %78, %89 ]
  %102 = phi i32 [ %97, %93 ], [ %92, %89 ]
  %103 = add i32 %101, %6
  %104 = icmp sgt i32 %103, 63
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %143

108:                                              ; preds = %105
  %109 = load ptr, ptr @stdout, align 8, !tbaa !11
  %110 = tail call i64 @fwrite(ptr nonnull @.str.3.223, i64 42, i64 1, ptr %109)
  br label %143

111:                                              ; preds = %99
  %112 = sext i32 %103 to i64
  %113 = getelementptr inbounds [64 x i8], ptr @scan, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !15
  %115 = shl i32 %102, 1
  %116 = or i32 %115, 1
  %117 = load ptr, ptr @ld, align 8, !tbaa !11
  %118 = getelementptr inbounds %struct.layer_data, ptr %117, i64 0, i32 22
  %119 = load i32, ptr %118, align 8, !tbaa !45
  %120 = mul nsw i32 %119, %116
  %121 = zext i8 %114 to i64
  %122 = getelementptr inbounds %struct.layer_data, ptr %117, i64 0, i32 9, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !7
  %124 = mul nsw i32 %120, %123
  %125 = icmp ult i32 %124, 16
  %126 = ashr i32 %124, 4
  %127 = add nsw i32 %126, -1
  %128 = or i32 %127, 1
  %129 = select i1 %125, i32 0, i32 %128
  %130 = icmp eq i32 %100, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %111
  %132 = tail call i32 @llvm.smin.i32(i32 %129, i32 2047)
  %133 = trunc i32 %132 to i16
  br label %139

134:                                              ; preds = %111
  %135 = icmp sgt i32 %129, 2048
  %136 = trunc i32 %129 to i16
  %137 = sub i16 0, %136
  %138 = select i1 %135, i16 -2048, i16 %137
  br label %139

139:                                              ; preds = %134, %131
  %140 = phi i16 [ %133, %131 ], [ %138, %134 ]
  %141 = getelementptr inbounds i16, ptr %4, i64 %121
  store i16 %140, ptr %141, align 2
  %142 = add nsw i32 %103, 1
  br label %5

143:                                              ; preds = %108, %105, %69, %66
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %144

144:                                              ; preds = %143, %71
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Decode_MPEG2_Intra_Block(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, ptr %3, i64 0, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !29
  %6 = icmp eq i32 %5, 1
  %7 = select i1 %6, ptr @base, ptr %3
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds %struct.layer_data, ptr %7, i64 0, i32 24, i64 %8
  %10 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 21), align 4, !tbaa !44
  %14 = icmp slt i32 %13, 64
  %15 = select i1 %14, ptr @enhan, ptr @base
  store ptr %15, ptr @ld, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %12, %2
  %17 = icmp slt i32 %0, 4
  %18 = load i32, ptr @chroma_format, align 4
  %19 = icmp eq i32 %18, 1
  %20 = select i1 %17, i1 true, i1 %19
  %21 = getelementptr inbounds %struct.layer_data, ptr %7, i64 0, i32 8
  %22 = getelementptr inbounds %struct.layer_data, ptr %7, i64 0, i32 10
  %23 = select i1 %20, ptr %21, ptr %22
  br i1 %17, label %24, label %28

24:                                               ; preds = %16
  %25 = tail call i32 @Get_Luma_DC_dct_diff() #32
  %26 = load i32, ptr %1, align 4, !tbaa !7
  %27 = add nsw i32 %26, %25
  store i32 %27, ptr %1, align 4, !tbaa !7
  br label %40

28:                                               ; preds = %16
  %29 = and i32 %0, 1
  %30 = icmp eq i32 %29, 0
  %31 = tail call i32 @Get_Chroma_DC_dct_diff() #32
  br i1 %30, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds i32, ptr %1, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !7
  %35 = add nsw i32 %34, %31
  store i32 %35, ptr %33, align 4, !tbaa !7
  br label %40

36:                                               ; preds = %28
  %37 = getelementptr inbounds i32, ptr %1, i64 2
  %38 = load i32, ptr %37, align 4, !tbaa !7
  %39 = add nsw i32 %38, %31
  store i32 %39, ptr %37, align 4, !tbaa !7
  br label %40

40:                                               ; preds = %36, %32, %24
  %41 = phi i32 [ %27, %24 ], [ %35, %32 ], [ %39, %36 ]
  %42 = load i32, ptr @Fault_Flag, align 4, !tbaa !7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %191

44:                                               ; preds = %40
  %45 = load i32, ptr @intra_dc_precision, align 4, !tbaa !7
  %46 = sub nsw i32 3, %45
  %47 = shl i32 %41, %46
  %48 = trunc i32 %47 to i16
  store i16 %48, ptr %9, align 2, !tbaa !47
  %49 = getelementptr inbounds %struct.layer_data, ptr %7, i64 0, i32 19
  %50 = getelementptr inbounds %struct.layer_data, ptr %7, i64 0, i32 22
  br label %51

51:                                               ; preds = %188, %44
  %52 = phi i32 [ 0, %44 ], [ %180, %188 ]
  %53 = phi i32 [ 1, %44 ], [ %189, %188 ]
  %54 = tail call i32 @Show_Bits(i32 noundef 16) #32
  %55 = icmp ult i32 %54, 16384
  %56 = load i32, ptr @intra_vlc_format, align 4
  %57 = icmp ne i32 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = lshr i32 %54, 12
  %61 = add nsw i32 %60, -4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtabnext, i64 0, i64 %62
  br label %123

64:                                               ; preds = %51
  %65 = icmp ugt i32 %54, 1023
  br i1 %65, label %66, label %74

66:                                               ; preds = %64
  %67 = lshr i32 %54, 8
  %68 = add nsw i32 %67, -4
  %69 = zext i32 %68 to i64
  br i1 %57, label %70, label %72

70:                                               ; preds = %66
  %71 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab0a, i64 0, i64 %69
  br label %123

72:                                               ; preds = %66
  %73 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab0, i64 0, i64 %69
  br label %123

74:                                               ; preds = %64
  %75 = icmp ugt i32 %54, 511
  br i1 %75, label %76, label %84

76:                                               ; preds = %74
  %77 = lshr i32 %54, 6
  %78 = add nsw i32 %77, -8
  %79 = zext i32 %78 to i64
  br i1 %57, label %80, label %82

80:                                               ; preds = %76
  %81 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab1a, i64 0, i64 %79
  br label %123

82:                                               ; preds = %76
  %83 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab1, i64 0, i64 %79
  br label %123

84:                                               ; preds = %74
  %85 = icmp ugt i32 %54, 255
  br i1 %85, label %86, label %91

86:                                               ; preds = %84
  %87 = lshr i32 %54, 4
  %88 = add nsw i32 %87, -16
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab2, i64 0, i64 %89
  br label %123

91:                                               ; preds = %84
  %92 = icmp ugt i32 %54, 127
  br i1 %92, label %93, label %98

93:                                               ; preds = %91
  %94 = lshr i32 %54, 3
  %95 = add nsw i32 %94, -16
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab3, i64 0, i64 %96
  br label %123

98:                                               ; preds = %91
  %99 = icmp ugt i32 %54, 63
  br i1 %99, label %100, label %105

100:                                              ; preds = %98
  %101 = lshr i32 %54, 2
  %102 = add nsw i32 %101, -16
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab4, i64 0, i64 %103
  br label %123

105:                                              ; preds = %98
  %106 = icmp ugt i32 %54, 31
  br i1 %106, label %107, label %112

107:                                              ; preds = %105
  %108 = lshr i32 %54, 1
  %109 = add nsw i32 %108, -16
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab5, i64 0, i64 %110
  br label %123

112:                                              ; preds = %105
  %113 = icmp ugt i32 %54, 15
  br i1 %113, label %114, label %118

114:                                              ; preds = %112
  %115 = add nsw i32 %54, -16
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab6, i64 0, i64 %116
  br label %123

118:                                              ; preds = %112
  %119 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %190

121:                                              ; preds = %118
  %122 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11.226)
  br label %190

123:                                              ; preds = %114, %107, %100, %93, %86, %82, %80, %72, %70, %59
  %124 = phi ptr [ %71, %70 ], [ %73, %72 ], [ %81, %80 ], [ %83, %82 ], [ %90, %86 ], [ %97, %93 ], [ %104, %100 ], [ %111, %107 ], [ %117, %114 ], [ %63, %59 ]
  %125 = getelementptr inbounds %struct.DCTtab, ptr %124, i64 0, i32 2
  %126 = load i8, ptr %125, align 1, !tbaa !123
  %127 = sext i8 %126 to i32
  tail call void @Flush_Buffer(i32 noundef %127) #32
  %128 = load i8, ptr %124, align 1, !tbaa !125
  switch i8 %128, label %144 [
    i8 64, label %191
    i8 65, label %129
  ]

129:                                              ; preds = %123
  %130 = tail call i32 @Get_Bits(i32 noundef 6) #32
  %131 = tail call i32 @Get_Bits(i32 noundef 12) #32
  %132 = and i32 %131, 2047
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %190

137:                                              ; preds = %134
  %138 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13.227)
  br label %190

139:                                              ; preds = %129
  %140 = icmp sgt i32 %131, 2047
  %141 = zext i1 %140 to i32
  %142 = sub nsw i32 4096, %131
  %143 = select i1 %140, i32 %142, i32 %131
  br label %150

144:                                              ; preds = %123
  %145 = sext i8 %128 to i32
  %146 = getelementptr inbounds %struct.DCTtab, ptr %124, i64 0, i32 1
  %147 = load i8, ptr %146, align 1, !tbaa !126
  %148 = sext i8 %147 to i32
  %149 = tail call i32 @Get_Bits(i32 noundef 1) #32
  br label %150

150:                                              ; preds = %144, %139
  %151 = phi i32 [ %149, %144 ], [ %141, %139 ]
  %152 = phi i32 [ %145, %144 ], [ %130, %139 ]
  %153 = phi i32 [ %148, %144 ], [ %143, %139 ]
  %154 = add nsw i32 %152, %53
  %155 = icmp sgt i32 %154, 63
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %190

159:                                              ; preds = %156
  %160 = load ptr, ptr @stdout, align 8, !tbaa !11
  %161 = tail call i64 @fwrite(ptr nonnull @.str.6.228, i64 43, i64 1, ptr %160)
  br label %190

162:                                              ; preds = %150
  %163 = load i32, ptr %49, align 4, !tbaa !40
  %164 = sext i32 %163 to i64
  %165 = sext i32 %154 to i64
  %166 = getelementptr inbounds [2 x [64 x i8]], ptr @scan, i64 0, i64 %164, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !15
  %168 = load i32, ptr %50, align 8, !tbaa !45
  %169 = mul nsw i32 %168, %153
  %170 = zext i8 %167 to i64
  %171 = getelementptr inbounds i32, ptr %23, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !7
  %173 = mul nsw i32 %169, %172
  %174 = ashr i32 %173, 4
  %175 = icmp eq i32 %151, 0
  %176 = sub nsw i32 0, %174
  %177 = select i1 %175, i32 %174, i32 %176
  %178 = trunc i32 %177 to i16
  %179 = getelementptr inbounds i16, ptr %9, i64 %170
  store i16 %178, ptr %179, align 2, !tbaa !47
  %180 = add nuw nsw i32 %52, 1
  %181 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %188

183:                                              ; preds = %162
  %184 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 21), align 4, !tbaa !44
  %185 = add i32 %184, -64
  %186 = icmp eq i32 %52, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  store ptr @enhan, ptr @ld, align 8, !tbaa !11
  br label %188

188:                                              ; preds = %187, %183, %162
  %189 = add nsw i32 %154, 1
  br label %51

190:                                              ; preds = %159, %156, %137, %134, %121, %118
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %191

191:                                              ; preds = %190, %123, %40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Decode_MPEG2_Non_Intra_Block(i32 noundef %0) #0 {
  %2 = load ptr, ptr @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, ptr %2, i64 0, i32 17
  %4 = load i32, ptr %3, align 4, !tbaa !29
  %5 = icmp eq i32 %4, 1
  %6 = select i1 %5, ptr @base, ptr %2
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds %struct.layer_data, ptr %6, i64 0, i32 24, i64 %7
  %9 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 21), align 4, !tbaa !44
  %13 = icmp slt i32 %12, 64
  %14 = select i1 %13, ptr @enhan, ptr @base
  store ptr %14, ptr @ld, align 8, !tbaa !11
  br label %15

15:                                               ; preds = %11, %1
  %16 = icmp slt i32 %0, 4
  %17 = load i32, ptr @chroma_format, align 4
  %18 = icmp eq i32 %17, 1
  %19 = select i1 %16, i1 true, i1 %18
  %20 = getelementptr inbounds %struct.layer_data, ptr %6, i64 0, i32 9
  %21 = getelementptr inbounds %struct.layer_data, ptr %6, i64 0, i32 11
  %22 = select i1 %19, ptr %20, ptr %21
  %23 = getelementptr inbounds %struct.layer_data, ptr %6, i64 0, i32 19
  %24 = getelementptr inbounds %struct.layer_data, ptr %6, i64 0, i32 22
  br label %25

25:                                               ; preds = %159, %15
  %26 = phi i32 [ 0, %15 ], [ %151, %159 ]
  %27 = phi i32 [ 0, %15 ], [ %160, %159 ]
  %28 = tail call i32 @Show_Bits(i32 noundef 16) #32
  %29 = icmp ugt i32 %28, 16383
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = icmp eq i32 %27, 0
  %32 = lshr i32 %28, 12
  %33 = add nsw i32 %32, -4
  %34 = zext i32 %33 to i64
  br i1 %31, label %35, label %37

35:                                               ; preds = %30
  %36 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtabfirst, i64 0, i64 %34
  br label %92

37:                                               ; preds = %30
  %38 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtabnext, i64 0, i64 %34
  br label %92

39:                                               ; preds = %25
  %40 = icmp ugt i32 %28, 1023
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = lshr i32 %28, 8
  %43 = add nsw i32 %42, -4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab0, i64 0, i64 %44
  br label %92

46:                                               ; preds = %39
  %47 = icmp ugt i32 %28, 511
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = lshr i32 %28, 6
  %50 = add nsw i32 %49, -8
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab1, i64 0, i64 %51
  br label %92

53:                                               ; preds = %46
  %54 = icmp ugt i32 %28, 255
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = lshr i32 %28, 4
  %57 = add nsw i32 %56, -16
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab2, i64 0, i64 %58
  br label %92

60:                                               ; preds = %53
  %61 = icmp ugt i32 %28, 127
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  %63 = lshr i32 %28, 3
  %64 = add nsw i32 %63, -16
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab3, i64 0, i64 %65
  br label %92

67:                                               ; preds = %60
  %68 = icmp ugt i32 %28, 63
  br i1 %68, label %69, label %74

69:                                               ; preds = %67
  %70 = lshr i32 %28, 2
  %71 = add nsw i32 %70, -16
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab4, i64 0, i64 %72
  br label %92

74:                                               ; preds = %67
  %75 = icmp ugt i32 %28, 31
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = lshr i32 %28, 1
  %78 = add nsw i32 %77, -16
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab5, i64 0, i64 %79
  br label %92

81:                                               ; preds = %74
  %82 = icmp ugt i32 %28, 15
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = add nsw i32 %28, -16
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x %struct.DCTtab], ptr @DCTtab6, i64 0, i64 %85
  br label %92

87:                                               ; preds = %81
  %88 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %161

90:                                               ; preds = %87
  %91 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12.231)
  br label %161

92:                                               ; preds = %83, %76, %69, %62, %55, %48, %41, %37, %35
  %93 = phi ptr [ %36, %35 ], [ %38, %37 ], [ %45, %41 ], [ %52, %48 ], [ %59, %55 ], [ %66, %62 ], [ %73, %69 ], [ %80, %76 ], [ %86, %83 ]
  %94 = getelementptr inbounds %struct.DCTtab, ptr %93, i64 0, i32 2
  %95 = load i8, ptr %94, align 1, !tbaa !123
  %96 = sext i8 %95 to i32
  tail call void @Flush_Buffer(i32 noundef %96) #32
  %97 = load i8, ptr %93, align 1, !tbaa !125
  switch i8 %97, label %113 [
    i8 64, label %162
    i8 65, label %98
  ]

98:                                               ; preds = %92
  %99 = tail call i32 @Get_Bits(i32 noundef 6) #32
  %100 = tail call i32 @Get_Bits(i32 noundef 12) #32
  %101 = and i32 %100, 2047
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %161

106:                                              ; preds = %103
  %107 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13.227)
  br label %161

108:                                              ; preds = %98
  %109 = icmp sgt i32 %100, 2047
  %110 = zext i1 %109 to i32
  %111 = sub nsw i32 4096, %100
  %112 = select i1 %109, i32 %111, i32 %100
  br label %119

113:                                              ; preds = %92
  %114 = sext i8 %97 to i32
  %115 = getelementptr inbounds %struct.DCTtab, ptr %93, i64 0, i32 1
  %116 = load i8, ptr %115, align 1, !tbaa !126
  %117 = sext i8 %116 to i32
  %118 = tail call i32 @Get_Bits(i32 noundef 1) #32
  br label %119

119:                                              ; preds = %113, %108
  %120 = phi i32 [ %118, %113 ], [ %110, %108 ]
  %121 = phi i32 [ %114, %113 ], [ %99, %108 ]
  %122 = phi i32 [ %117, %113 ], [ %112, %108 ]
  %123 = add nsw i32 %121, %27
  %124 = icmp sgt i32 %123, 63
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %161

128:                                              ; preds = %125
  %129 = load ptr, ptr @stdout, align 8, !tbaa !11
  %130 = tail call i64 @fwrite(ptr nonnull @.str.8.232, i64 43, i64 1, ptr %129)
  br label %161

131:                                              ; preds = %119
  %132 = load i32, ptr %23, align 4, !tbaa !40
  %133 = sext i32 %132 to i64
  %134 = sext i32 %123 to i64
  %135 = getelementptr inbounds [2 x [64 x i8]], ptr @scan, i64 0, i64 %133, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !15
  %137 = shl i32 %122, 1
  %138 = or i32 %137, 1
  %139 = load i32, ptr %24, align 8, !tbaa !45
  %140 = mul nsw i32 %139, %138
  %141 = zext i8 %136 to i64
  %142 = getelementptr inbounds i32, ptr %22, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !7
  %144 = mul nsw i32 %140, %143
  %145 = ashr i32 %144, 5
  %146 = icmp eq i32 %120, 0
  %147 = sub nsw i32 0, %145
  %148 = select i1 %146, i32 %145, i32 %147
  %149 = trunc i32 %148 to i16
  %150 = getelementptr inbounds i16, ptr %8, i64 %141
  store i16 %149, ptr %150, align 2, !tbaa !47
  %151 = add nuw nsw i32 %26, 1
  %152 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 17), align 4, !tbaa !29
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %159

154:                                              ; preds = %131
  %155 = load i32, ptr getelementptr inbounds (%struct.layer_data, ptr @base, i64 0, i32 21), align 4, !tbaa !44
  %156 = add i32 %155, -64
  %157 = icmp eq i32 %26, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store ptr @enhan, ptr @ld, align 8, !tbaa !11
  br label %159

159:                                              ; preds = %158, %154, %131
  %160 = add nsw i32 %123, 1
  br label %25

161:                                              ; preds = %128, %125, %106, %103, %90, %87
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %162

162:                                              ; preds = %161, %92
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @Get_macroblock_type() #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 17
  %3 = load i32, ptr %2, align 4, !tbaa !29
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %22

5:                                                ; preds = %0
  %6 = tail call i32 @Show_Bits(i32 noundef 3) #32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12.235)
  br label %13

13:                                               ; preds = %11, %8
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %194

14:                                               ; preds = %5
  %15 = sext i32 %6 to i64
  %16 = getelementptr inbounds [8 x %struct.VLCtab], ptr @SNRMBtab, i64 0, i64 %15
  %17 = getelementptr inbounds [8 x %struct.VLCtab], ptr @SNRMBtab, i64 0, i64 %15, i32 1
  %18 = load i8, ptr %17, align 1, !tbaa !127
  %19 = sext i8 %18 to i32
  tail call void @Flush_Buffer(i32 noundef %19) #32
  %20 = load i8, ptr %16, align 2, !tbaa !129
  %21 = sext i8 %20 to i32
  br label %194

22:                                               ; preds = %0
  %23 = load i32, ptr @picture_coding_type, align 4, !tbaa !7
  switch i32 %23, label %192 [
    i32 1, label %24
    i32 2, label %57
    i32 3, label %117
    i32 4, label %183
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 20
  %26 = load i32, ptr %25, align 8, !tbaa !25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @Show_Bits(i32 noundef 4) #32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12.235)
  br label %36

36:                                               ; preds = %34, %31
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %194

37:                                               ; preds = %28
  %38 = sext i32 %29 to i64
  %39 = getelementptr inbounds [16 x %struct.VLCtab], ptr @spIMBtab, i64 0, i64 %38
  %40 = getelementptr inbounds [16 x %struct.VLCtab], ptr @spIMBtab, i64 0, i64 %38, i32 1
  %41 = load i8, ptr %40, align 1, !tbaa !127
  %42 = sext i8 %41 to i32
  tail call void @Flush_Buffer(i32 noundef %42) #32
  %43 = load i8, ptr %39, align 2, !tbaa !129
  %44 = sext i8 %43 to i32
  br label %194

45:                                               ; preds = %24
  %46 = tail call i32 @Get_Bits1() #32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %194

48:                                               ; preds = %45
  %49 = tail call i32 @Get_Bits1() #32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %194

51:                                               ; preds = %48
  %52 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12.235)
  br label %56

56:                                               ; preds = %54, %51
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %194

57:                                               ; preds = %22
  %58 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 20
  %59 = load i32, ptr %58, align 8, !tbaa !25
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %89, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @Show_Bits(i32 noundef 7) #32
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12.235)
  br label %69

69:                                               ; preds = %67, %64
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %194

70:                                               ; preds = %61
  %71 = icmp ugt i32 %62, 15
  br i1 %71, label %72, label %81

72:                                               ; preds = %70
  %73 = lshr i32 %62, 3
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [16 x %struct.VLCtab], ptr @spPMBtab0, i64 0, i64 %74
  %76 = getelementptr inbounds [16 x %struct.VLCtab], ptr @spPMBtab0, i64 0, i64 %74, i32 1
  %77 = load i8, ptr %76, align 1, !tbaa !127
  %78 = sext i8 %77 to i32
  tail call void @Flush_Buffer(i32 noundef %78) #32
  %79 = load i8, ptr %75, align 2, !tbaa !129
  %80 = sext i8 %79 to i32
  br label %194

81:                                               ; preds = %70
  %82 = zext i32 %62 to i64
  %83 = getelementptr inbounds [16 x %struct.VLCtab], ptr @spPMBtab1, i64 0, i64 %82
  %84 = getelementptr inbounds [16 x %struct.VLCtab], ptr @spPMBtab1, i64 0, i64 %82, i32 1
  %85 = load i8, ptr %84, align 1, !tbaa !127
  %86 = sext i8 %85 to i32
  tail call void @Flush_Buffer(i32 noundef %86) #32
  %87 = load i8, ptr %83, align 2, !tbaa !129
  %88 = sext i8 %87 to i32
  br label %194

89:                                               ; preds = %57
  %90 = tail call i32 @Show_Bits(i32 noundef 6) #32
  %91 = icmp sgt i32 %90, 7
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = lshr i32 %90, 3
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [8 x %struct.VLCtab], ptr @PMBtab0, i64 0, i64 %94
  %96 = getelementptr inbounds [8 x %struct.VLCtab], ptr @PMBtab0, i64 0, i64 %94, i32 1
  %97 = load i8, ptr %96, align 1, !tbaa !127
  %98 = sext i8 %97 to i32
  tail call void @Flush_Buffer(i32 noundef %98) #32
  %99 = load i8, ptr %95, align 2, !tbaa !129
  %100 = sext i8 %99 to i32
  br label %194

101:                                              ; preds = %89
  %102 = icmp eq i32 %90, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %101
  %104 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12.235)
  br label %108

108:                                              ; preds = %106, %103
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %194

109:                                              ; preds = %101
  %110 = sext i32 %90 to i64
  %111 = getelementptr inbounds [8 x %struct.VLCtab], ptr @PMBtab1, i64 0, i64 %110
  %112 = getelementptr inbounds [8 x %struct.VLCtab], ptr @PMBtab1, i64 0, i64 %110, i32 1
  %113 = load i8, ptr %112, align 1, !tbaa !127
  %114 = sext i8 %113 to i32
  tail call void @Flush_Buffer(i32 noundef %114) #32
  %115 = load i8, ptr %111, align 2, !tbaa !129
  %116 = sext i8 %115 to i32
  br label %194

117:                                              ; preds = %22
  %118 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 20
  %119 = load i32, ptr %118, align 8, !tbaa !25
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %155, label %121

121:                                              ; preds = %117
  %122 = tail call i32 @Show_Bits(i32 noundef 9) #32
  %123 = icmp sgt i32 %122, 63
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = lshr i32 %122, 5
  %126 = add nsw i32 %125, -2
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [14 x %struct.VLCtab], ptr @spBMBtab0, i64 0, i64 %127
  br label %148

129:                                              ; preds = %121
  %130 = icmp sgt i32 %122, 15
  br i1 %130, label %131, label %136

131:                                              ; preds = %129
  %132 = lshr i32 %122, 2
  %133 = add nsw i32 %132, -4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [12 x %struct.VLCtab], ptr @spBMBtab1, i64 0, i64 %134
  br label %148

136:                                              ; preds = %129
  %137 = icmp sgt i32 %122, 7
  br i1 %137, label %138, label %142

138:                                              ; preds = %136
  %139 = add nsw i32 %122, -8
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [8 x %struct.VLCtab], ptr @spBMBtab2, i64 0, i64 %140
  br label %148

142:                                              ; preds = %136
  %143 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12.235)
  br label %147

147:                                              ; preds = %145, %142
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %194

148:                                              ; preds = %138, %131, %124
  %149 = phi ptr [ %128, %124 ], [ %135, %131 ], [ %141, %138 ]
  %150 = getelementptr inbounds %struct.VLCtab, ptr %149, i64 0, i32 1
  %151 = load i8, ptr %150, align 1, !tbaa !127
  %152 = sext i8 %151 to i32
  tail call void @Flush_Buffer(i32 noundef %152) #32
  %153 = load i8, ptr %149, align 1, !tbaa !129
  %154 = sext i8 %153 to i32
  br label %194

155:                                              ; preds = %117
  %156 = tail call i32 @Show_Bits(i32 noundef 6) #32
  %157 = icmp sgt i32 %156, 7
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = lshr i32 %156, 2
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [16 x %struct.VLCtab], ptr @BMBtab0, i64 0, i64 %160
  %162 = getelementptr inbounds [16 x %struct.VLCtab], ptr @BMBtab0, i64 0, i64 %160, i32 1
  %163 = load i8, ptr %162, align 1, !tbaa !127
  %164 = sext i8 %163 to i32
  tail call void @Flush_Buffer(i32 noundef %164) #32
  %165 = load i8, ptr %161, align 2, !tbaa !129
  %166 = sext i8 %165 to i32
  br label %194

167:                                              ; preds = %155
  %168 = icmp eq i32 %156, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %167
  %170 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12.235)
  br label %174

174:                                              ; preds = %172, %169
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %194

175:                                              ; preds = %167
  %176 = sext i32 %156 to i64
  %177 = getelementptr inbounds [8 x %struct.VLCtab], ptr @BMBtab1, i64 0, i64 %176
  %178 = getelementptr inbounds [8 x %struct.VLCtab], ptr @BMBtab1, i64 0, i64 %176, i32 1
  %179 = load i8, ptr %178, align 1, !tbaa !127
  %180 = sext i8 %179 to i32
  tail call void @Flush_Buffer(i32 noundef %180) #32
  %181 = load i8, ptr %177, align 2, !tbaa !129
  %182 = sext i8 %181 to i32
  br label %194

183:                                              ; preds = %22
  %184 = tail call i32 @Get_Bits1() #32
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %183
  %187 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12.235)
  br label %191

191:                                              ; preds = %189, %186
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %194

192:                                              ; preds = %22
  %193 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.236)
  br label %194

194:                                              ; preds = %192, %191, %183, %175, %174, %158, %148, %147, %109, %108, %92, %81, %72, %69, %56, %48, %45, %37, %36, %14, %13
  %195 = phi i32 [ 0, %192 ], [ 0, %13 ], [ %21, %14 ], [ 0, %36 ], [ %44, %37 ], [ 1, %45 ], [ 17, %56 ], [ 17, %48 ], [ 0, %69 ], [ %80, %72 ], [ %88, %81 ], [ %100, %92 ], [ 0, %108 ], [ %116, %109 ], [ %154, %148 ], [ 0, %147 ], [ %166, %158 ], [ 0, %174 ], [ %182, %175 ], [ 1, %183 ], [ 1, %191 ]
  ret i32 %195
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @Get_motion_code() #0 {
  %1 = tail call i32 @Get_Bits1() #32
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %57

3:                                                ; preds = %0
  %4 = tail call i32 @Show_Bits(i32 noundef 9) #32
  %5 = icmp sgt i32 %4, 63
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = lshr i32 %4, 6
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.VLCtab], ptr @MVtab0, i64 0, i64 %8
  %10 = getelementptr inbounds [8 x %struct.VLCtab], ptr @MVtab0, i64 0, i64 %8, i32 1
  %11 = load i8, ptr %10, align 1, !tbaa !127
  %12 = sext i8 %11 to i32
  tail call void @Flush_Buffer(i32 noundef %12) #32
  %13 = tail call i32 @Get_Bits1() #32
  %14 = icmp eq i32 %13, 0
  %15 = load i8, ptr %9, align 2, !tbaa !129
  %16 = sext i8 %15 to i32
  %17 = sub nsw i32 0, %16
  %18 = select i1 %14, i32 %16, i32 %17
  br label %57

19:                                               ; preds = %3
  %20 = icmp sgt i32 %4, 23
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = lshr i32 %4, 3
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [8 x %struct.VLCtab], ptr @MVtab1, i64 0, i64 %23
  %25 = getelementptr inbounds [8 x %struct.VLCtab], ptr @MVtab1, i64 0, i64 %23, i32 1
  %26 = load i8, ptr %25, align 1, !tbaa !127
  %27 = sext i8 %26 to i32
  tail call void @Flush_Buffer(i32 noundef %27) #32
  %28 = tail call i32 @Get_Bits1() #32
  %29 = icmp eq i32 %28, 0
  %30 = load i8, ptr %24, align 2, !tbaa !129
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 0, %31
  %33 = select i1 %29, i32 %31, i32 %32
  br label %57

34:                                               ; preds = %19
  %35 = icmp slt i32 %4, 12
  br i1 %35, label %36, label %44

36:                                               ; preds = %34
  %37 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, ptr @global_MBA, align 4, !tbaa !7
  %41 = load i32, ptr @global_pic, align 4, !tbaa !7
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.237, i32 noundef %40, i32 noundef %41) #31
  br label %43

43:                                               ; preds = %39, %36
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %57

44:                                               ; preds = %34
  %45 = add nsw i32 %4, -12
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [12 x %struct.VLCtab], ptr @MVtab2, i64 0, i64 %46
  %48 = getelementptr inbounds [12 x %struct.VLCtab], ptr @MVtab2, i64 0, i64 %46, i32 1
  %49 = load i8, ptr %48, align 1, !tbaa !127
  %50 = sext i8 %49 to i32
  tail call void @Flush_Buffer(i32 noundef %50) #32
  %51 = tail call i32 @Get_Bits1() #32
  %52 = icmp eq i32 %51, 0
  %53 = load i8, ptr %47, align 2, !tbaa !129
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 0, %54
  %56 = select i1 %52, i32 %54, i32 %55
  br label %57

57:                                               ; preds = %44, %43, %21, %6, %0
  %58 = phi i32 [ 0, %43 ], [ 0, %0 ], [ %18, %6 ], [ %33, %21 ], [ %56, %44 ]
  ret i32 %58
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @Get_dmvector() #0 {
  %1 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 1, i32 -1
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ %6, %3 ], [ 0, %0 ]
  ret i32 %8
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @Get_coded_block_pattern() #0 {
  %1 = tail call i32 @Show_Bits(i32 noundef 9) #32
  %2 = icmp sgt i32 %1, 127
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = lshr i32 %1, 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [32 x %struct.VLCtab], ptr @CBPtab0, i64 0, i64 %5
  %7 = getelementptr inbounds [32 x %struct.VLCtab], ptr @CBPtab0, i64 0, i64 %5, i32 1
  %8 = load i8, ptr %7, align 1, !tbaa !127
  %9 = sext i8 %8 to i32
  tail call void @Flush_Buffer(i32 noundef %9) #32
  %10 = load i8, ptr %6, align 2, !tbaa !129
  %11 = sext i8 %10 to i32
  br label %39

12:                                               ; preds = %0
  %13 = icmp sgt i32 %1, 7
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %15 = lshr i32 %1, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [64 x %struct.VLCtab], ptr @CBPtab1, i64 0, i64 %16
  %18 = getelementptr inbounds [64 x %struct.VLCtab], ptr @CBPtab1, i64 0, i64 %16, i32 1
  %19 = load i8, ptr %18, align 1, !tbaa !127
  %20 = sext i8 %19 to i32
  tail call void @Flush_Buffer(i32 noundef %20) #32
  %21 = load i8, ptr %17, align 2, !tbaa !129
  %22 = sext i8 %21 to i32
  br label %39

23:                                               ; preds = %12
  %24 = icmp slt i32 %1, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13.240)
  br label %30

30:                                               ; preds = %28, %25
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %39

31:                                               ; preds = %23
  %32 = zext i32 %1 to i64
  %33 = getelementptr inbounds [8 x %struct.VLCtab], ptr @CBPtab2, i64 0, i64 %32
  %34 = getelementptr inbounds [8 x %struct.VLCtab], ptr @CBPtab2, i64 0, i64 %32, i32 1
  %35 = load i8, ptr %34, align 1, !tbaa !127
  %36 = sext i8 %35 to i32
  tail call void @Flush_Buffer(i32 noundef %36) #32
  %37 = load i8, ptr %33, align 2, !tbaa !129
  %38 = sext i8 %37 to i32
  br label %39

39:                                               ; preds = %31, %30, %14, %3
  %40 = phi i32 [ %11, %3 ], [ %22, %14 ], [ 0, %30 ], [ %38, %31 ]
  ret i32 %40
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @Get_macroblock_address_increment() #0 {
  br label %1

1:                                                ; preds = %14, %0
  %2 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %3 = tail call i32 @Show_Bits(i32 noundef 11) #32
  %4 = icmp slt i32 %3, 24
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  switch i32 %3, label %8 [
    i32 15, label %14
    i32 8, label %6
  ]

6:                                                ; preds = %5
  %7 = add nsw i32 %2, 33
  br label %14

8:                                                ; preds = %5
  %9 = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14.243)
  br label %13

13:                                               ; preds = %11, %8
  store i32 1, ptr @Fault_Flag, align 4, !tbaa !7
  br label %42

14:                                               ; preds = %6, %5
  %15 = phi i32 [ %7, %6 ], [ %2, %5 ]
  tail call void @Flush_Buffer(i32 noundef 11) #32
  br label %1, !llvm.loop !130

16:                                               ; preds = %1
  %.lcssa2 = phi i32 [ %2, %1 ]
  %.lcssa = phi i32 [ %3, %1 ]
  %17 = icmp ugt i32 %.lcssa, 1023
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  tail call void @Flush_Buffer(i32 noundef 1) #32
  %19 = add nsw i32 %.lcssa2, 1
  br label %42

20:                                               ; preds = %16
  %21 = icmp ugt i32 %.lcssa, 127
  br i1 %21, label %22, label %32

22:                                               ; preds = %20
  %23 = lshr i32 %.lcssa, 6
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [16 x %struct.VLCtab], ptr @MBAtab1, i64 0, i64 %24
  %26 = getelementptr inbounds [16 x %struct.VLCtab], ptr @MBAtab1, i64 0, i64 %24, i32 1
  %27 = load i8, ptr %26, align 1, !tbaa !127
  %28 = sext i8 %27 to i32
  tail call void @Flush_Buffer(i32 noundef %28) #32
  %29 = load i8, ptr %25, align 2, !tbaa !129
  %30 = sext i8 %29 to i32
  %31 = add nsw i32 %.lcssa2, %30
  br label %42

32:                                               ; preds = %20
  %33 = add nsw i32 %.lcssa, -24
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [104 x %struct.VLCtab], ptr @MBAtab2, i64 0, i64 %34
  %36 = getelementptr inbounds [104 x %struct.VLCtab], ptr @MBAtab2, i64 0, i64 %34, i32 1
  %37 = load i8, ptr %36, align 1, !tbaa !127
  %38 = sext i8 %37 to i32
  tail call void @Flush_Buffer(i32 noundef %38) #32
  %39 = load i8, ptr %35, align 2, !tbaa !129
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %.lcssa2, %40
  br label %42

42:                                               ; preds = %32, %22, %18, %13
  %43 = phi i32 [ 1, %13 ], [ %19, %18 ], [ %31, %22 ], [ %41, %32 ]
  ret i32 %43
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @Get_Luma_DC_dct_diff() #0 {
  %1 = tail call i32 @Show_Bits(i32 noundef 5) #32
  %2 = icmp slt i32 %1, 31
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [32 x %struct.VLCtab], ptr @DClumtab0, i64 0, i64 %4
  %6 = getelementptr inbounds [32 x %struct.VLCtab], ptr @DClumtab0, i64 0, i64 %4, i32 1
  br label %13

7:                                                ; preds = %0
  %8 = tail call i32 @Show_Bits(i32 noundef 9) #32
  %9 = add i32 %8, -496
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [16 x %struct.VLCtab], ptr @DClumtab1, i64 0, i64 %10
  %12 = getelementptr inbounds [16 x %struct.VLCtab], ptr @DClumtab1, i64 0, i64 %10, i32 1
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi ptr [ %12, %7 ], [ %6, %3 ]
  %15 = phi ptr [ %11, %7 ], [ %5, %3 ]
  %16 = load i8, ptr %15, align 2, !tbaa !129
  %17 = load i8, ptr %14, align 1, !tbaa !127
  %18 = sext i8 %17 to i32
  tail call void @Flush_Buffer(i32 noundef %18) #32
  %19 = sext i8 %16 to i32
  %20 = icmp eq i8 %16, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %13
  %22 = tail call i32 @Get_Bits(i32 noundef %19) #32
  %23 = add nsw i32 %19, -1
  %24 = shl nuw i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = shl nsw i32 -1, %19
  %29 = add nsw i32 %28, 1
  %30 = add i32 %29, %22
  br label %31

31:                                               ; preds = %27, %21, %13
  %32 = phi i32 [ %30, %27 ], [ %22, %21 ], [ 0, %13 ]
  ret i32 %32
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @Get_Chroma_DC_dct_diff() #0 {
  %1 = tail call i32 @Show_Bits(i32 noundef 5) #32
  %2 = icmp slt i32 %1, 31
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [32 x %struct.VLCtab], ptr @DCchromtab0, i64 0, i64 %4
  %6 = getelementptr inbounds [32 x %struct.VLCtab], ptr @DCchromtab0, i64 0, i64 %4, i32 1
  br label %13

7:                                                ; preds = %0
  %8 = tail call i32 @Show_Bits(i32 noundef 10) #32
  %9 = add i32 %8, -992
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [32 x %struct.VLCtab], ptr @DCchromtab1, i64 0, i64 %10
  %12 = getelementptr inbounds [32 x %struct.VLCtab], ptr @DCchromtab1, i64 0, i64 %10, i32 1
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi ptr [ %12, %7 ], [ %6, %3 ]
  %15 = phi ptr [ %11, %7 ], [ %5, %3 ]
  %16 = load i8, ptr %15, align 2, !tbaa !129
  %17 = load i8, ptr %14, align 1, !tbaa !127
  %18 = sext i8 %17 to i32
  tail call void @Flush_Buffer(i32 noundef %18) #32
  %19 = sext i8 %16 to i32
  %20 = icmp eq i8 %16, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %13
  %22 = tail call i32 @Get_Bits(i32 noundef %19) #32
  %23 = add nsw i32 %19, -1
  %24 = shl nuw i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = shl nsw i32 -1, %19
  %29 = add nsw i32 %28, 1
  %30 = add i32 %29, %22
  br label %31

31:                                               ; preds = %27, %21, %13
  %32 = phi i32 [ %30, %27 ], [ %22, %21 ], [ 0, %13 ]
  ret i32 %32
}

; Function Attrs: nounwind optsize uwtable
define internal void @motion_vectors(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = icmp eq i32 %4, 1
  br i1 %11, label %12, label %27

12:                                               ; preds = %10
  %13 = or i32 %8, %5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = sext i32 %3 to i64
  br label %22

17:                                               ; preds = %12
  %18 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %19
  store i32 %18, ptr %20, align 4, !tbaa !7
  %21 = getelementptr inbounds [2 x i32], ptr %2, i64 1, i64 %19
  store i32 %18, ptr %21, align 4, !tbaa !7
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i64 [ %16, %15 ], [ %19, %17 ]
  %24 = getelementptr inbounds [2 x [2 x i32]], ptr %0, i64 0, i64 %23
  tail call void @motion_vector(ptr noundef %24, ptr noundef %1, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0) #31
  %25 = getelementptr inbounds [2 x [2 x i32]], ptr %0, i64 1, i64 %23
  %26 = load <2 x i32>, ptr %24, align 4, !tbaa !7
  store <2 x i32> %26, ptr %25, align 4, !tbaa !7
  br label %35

27:                                               ; preds = %10
  %28 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %29 = sext i32 %3 to i64
  %30 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %29
  store i32 %28, ptr %30, align 4, !tbaa !7
  %31 = getelementptr inbounds [2 x [2 x i32]], ptr %0, i64 0, i64 %29
  tail call void @motion_vector(ptr noundef %31, ptr noundef %1, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0) #31
  %32 = tail call i32 @Get_Bits(i32 noundef 1) #32
  %33 = getelementptr inbounds [2 x i32], ptr %2, i64 1, i64 %29
  store i32 %32, ptr %33, align 4, !tbaa !7
  %34 = getelementptr inbounds [2 x [2 x i32]], ptr %0, i64 1, i64 %29
  tail call void @motion_vector(ptr noundef nonnull %34, ptr noundef %1, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0) #31
  br label %35

35:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @motion_vector(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = tail call i32 @Get_motion_code() #32
  %9 = icmp ne i32 %2, 0
  %10 = icmp ne i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call i32 @Get_Bits(i32 noundef %2) #32
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i32 [ %13, %12 ], [ 0, %7 ]
  tail call fastcc void @decode_motion_vector(ptr noundef %0, i32 noundef %2, i32 noundef %8, i32 noundef %15, i32 noundef %6) #31
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @Get_dmvector() #32
  store i32 %18, ptr %1, align 4, !tbaa !7
  br label %19

19:                                               ; preds = %17, %14
  %20 = tail call i32 @Get_motion_code() #32
  %21 = icmp ne i32 %3, 0
  %22 = icmp ne i32 %20, 0
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = tail call i32 @Get_Bits(i32 noundef %3) #32
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %25, %24 ], [ 0, %19 ]
  %28 = icmp eq i32 %5, 0
  %29 = getelementptr inbounds i32, ptr %0, i64 1
  br i1 %28, label %30, label %31

30:                                               ; preds = %26
  tail call fastcc void @decode_motion_vector(ptr noundef nonnull %29, i32 noundef %3, i32 noundef %20, i32 noundef %27, i32 noundef %6) #31
  br label %36

31:                                               ; preds = %26
  %32 = load i32, ptr %29, align 4, !tbaa !7
  %33 = ashr i32 %32, 1
  store i32 %33, ptr %29, align 4, !tbaa !7
  tail call fastcc void @decode_motion_vector(ptr noundef nonnull %29, i32 noundef %3, i32 noundef %20, i32 noundef %27, i32 noundef %6) #31
  %34 = load i32, ptr %29, align 4, !tbaa !7
  %35 = shl i32 %34, 1
  store i32 %35, ptr %29, align 4, !tbaa !7
  br label %36

36:                                               ; preds = %31, %30
  br i1 %16, label %40, label %37

37:                                               ; preds = %36
  %38 = tail call i32 @Get_dmvector() #32
  %39 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %38, ptr %39, align 4, !tbaa !7
  br label %40

40:                                               ; preds = %37, %36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @decode_motion_vector(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #28 {
  %6 = shl i32 16, %1
  %7 = icmp ne i32 %4, 0
  %8 = load i32, ptr %0, align 4, !tbaa !7
  %9 = zext i1 %7 to i32
  %10 = ashr i32 %8, %9
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = add nsw i32 %2, -1
  %14 = shl i32 %13, %1
  %15 = add i32 %3, 1
  %16 = add i32 %15, %14
  %17 = add nsw i32 %16, %10
  %18 = icmp slt i32 %17, %6
  br i1 %18, label %35, label %19

19:                                               ; preds = %12
  %20 = shl i32 -32, %1
  %21 = add i32 %17, %20
  br label %35

22:                                               ; preds = %5
  %23 = icmp slt i32 %2, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = xor i32 %2, -1
  %26 = shl i32 %25, %1
  %27 = add nsw i32 %26, %3
  %28 = xor i32 %27, -1
  %29 = add i32 %10, %28
  %30 = sub nsw i32 0, %6
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = shl i32 32, %1
  %34 = add nsw i32 %29, %33
  br label %35

35:                                               ; preds = %32, %24, %22, %19, %12
  %36 = phi i32 [ %21, %19 ], [ %17, %12 ], [ %34, %32 ], [ %29, %24 ], [ %10, %22 ]
  %37 = zext i1 %7 to i32
  %38 = shl i32 %36, %37
  store i32 %38, ptr %0, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @Dual_Prime_Arithmetic(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #29 {
  %5 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %68

7:                                                ; preds = %4
  %8 = load i32, ptr @top_field_first, align 4, !tbaa !7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %7
  %11 = icmp sgt i32 %2, 0
  %12 = zext i1 %11 to i32
  %13 = add nsw i32 %12, %2
  %14 = ashr i32 %13, 1
  %15 = load i32, ptr %1, align 4, !tbaa !7
  %16 = add nsw i32 %15, %14
  store i32 %16, ptr %0, align 4, !tbaa !7
  %17 = icmp sgt i32 %3, 0
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %18, %3
  %20 = ashr i32 %19, 1
  %21 = getelementptr inbounds i32, ptr %1, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = add nsw i32 %20, -1
  %24 = add i32 %23, %22
  %25 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 1
  store i32 %24, ptr %25, align 4, !tbaa !7
  %26 = mul nsw i32 %2, 3
  %27 = add nsw i32 %26, %12
  %28 = ashr i32 %27, 1
  %29 = load i32, ptr %1, align 4, !tbaa !7
  %30 = add nsw i32 %29, %28
  %31 = getelementptr inbounds [2 x i32], ptr %0, i64 1
  store i32 %30, ptr %31, align 4, !tbaa !7
  %32 = mul nsw i32 %3, 3
  %33 = add nsw i32 %32, %18
  %34 = ashr i32 %33, 1
  %35 = load i32, ptr %21, align 4, !tbaa !7
  %36 = add nsw i32 %34, 1
  %37 = add i32 %36, %35
  %38 = getelementptr inbounds [2 x i32], ptr %0, i64 1, i64 1
  store i32 %37, ptr %38, align 4, !tbaa !7
  br label %89

39:                                               ; preds = %7
  %40 = mul nsw i32 %2, 3
  %41 = icmp sgt i32 %2, 0
  %42 = zext i1 %41 to i32
  %43 = add nsw i32 %40, %42
  %44 = ashr i32 %43, 1
  %45 = load i32, ptr %1, align 4, !tbaa !7
  %46 = add nsw i32 %45, %44
  store i32 %46, ptr %0, align 4, !tbaa !7
  %47 = mul nsw i32 %3, 3
  %48 = icmp sgt i32 %3, 0
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %47, %49
  %51 = ashr i32 %50, 1
  %52 = getelementptr inbounds i32, ptr %1, i64 1
  %53 = load i32, ptr %52, align 4, !tbaa !7
  %54 = add nsw i32 %51, -1
  %55 = add i32 %54, %53
  %56 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 1
  store i32 %55, ptr %56, align 4, !tbaa !7
  %57 = add nsw i32 %42, %2
  %58 = ashr i32 %57, 1
  %59 = load i32, ptr %1, align 4, !tbaa !7
  %60 = add nsw i32 %59, %58
  %61 = getelementptr inbounds [2 x i32], ptr %0, i64 1
  store i32 %60, ptr %61, align 4, !tbaa !7
  %62 = add nsw i32 %49, %3
  %63 = ashr i32 %62, 1
  %64 = load i32, ptr %52, align 4, !tbaa !7
  %65 = add nsw i32 %63, 1
  %66 = add i32 %65, %64
  %67 = getelementptr inbounds [2 x i32], ptr %0, i64 1, i64 1
  store i32 %66, ptr %67, align 4, !tbaa !7
  br label %89

68:                                               ; preds = %4
  %69 = icmp sgt i32 %2, 0
  %70 = zext i1 %69 to i32
  %71 = add nsw i32 %70, %2
  %72 = ashr i32 %71, 1
  %73 = load i32, ptr %1, align 4, !tbaa !7
  %74 = add nsw i32 %73, %72
  store i32 %74, ptr %0, align 4, !tbaa !7
  %75 = icmp sgt i32 %3, 0
  %76 = zext i1 %75 to i32
  %77 = add nsw i32 %76, %3
  %78 = ashr i32 %77, 1
  %79 = getelementptr inbounds i32, ptr %1, i64 1
  %80 = load i32, ptr %79, align 4, !tbaa !7
  %81 = add nsw i32 %80, %78
  %82 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 1
  %83 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %68
  %86 = add nsw i32 %81, -1
  store i32 %86, ptr %82, align 4, !tbaa !7
  br label %89

87:                                               ; preds = %68
  %88 = add nsw i32 %81, 1
  store i32 %88, ptr %82, align 4, !tbaa !7
  br label %89

89:                                               ; preds = %87, %85, %39, %10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Spatial_Prediction() #0 {
  %1 = load i32, ptr @Frame_Store_Flag, align 4, !tbaa !7
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !7
  %4 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !7
  br i1 %2, label %14, label %5

5:                                                ; preds = %0
  tail call fastcc void @Read_Lower_Layer_Component_Framewise(i32 noundef 0, i32 noundef %3, i32 noundef %4) #31
  %6 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !7
  %7 = ashr i32 %6, 1
  %8 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !7
  %9 = ashr i32 %8, 1
  tail call fastcc void @Read_Lower_Layer_Component_Framewise(i32 noundef 1, i32 noundef %7, i32 noundef %9) #31
  %10 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !7
  %11 = ashr i32 %10, 1
  %12 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !7
  %13 = ashr i32 %12, 1
  tail call fastcc void @Read_Lower_Layer_Component_Framewise(i32 noundef 2, i32 noundef %11, i32 noundef %13) #31
  br label %23

14:                                               ; preds = %0
  tail call fastcc void @Read_Lower_Layer_Component_Fieldwise(i32 noundef 0, i32 noundef %3, i32 noundef %4) #31
  %15 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !7
  %16 = ashr i32 %15, 1
  %17 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !7
  %18 = ashr i32 %17, 1
  tail call fastcc void @Read_Lower_Layer_Component_Fieldwise(i32 noundef 1, i32 noundef %16, i32 noundef %18) #31
  %19 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !7
  %20 = ashr i32 %19, 1
  %21 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !7
  %22 = ashr i32 %21, 1
  tail call fastcc void @Read_Lower_Layer_Component_Fieldwise(i32 noundef 2, i32 noundef %20, i32 noundef %22) #31
  br label %23

23:                                               ; preds = %14, %5
  %24 = load i32, ptr @progressive_frame, align 4, !tbaa !7
  %25 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !7
  %26 = load ptr, ptr @llframe0, align 16, !tbaa !11
  %27 = load ptr, ptr @llframe1, align 16, !tbaa !11
  %28 = load ptr, ptr @lltmp, align 8, !tbaa !11
  %29 = load ptr, ptr @current_frame, align 16, !tbaa !11
  %30 = load i32, ptr @lower_layer_horizontal_offset, align 4, !tbaa !7
  %31 = load i32, ptr @lower_layer_vertical_offset, align 4, !tbaa !7
  %32 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !7
  %33 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !7
  %34 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  %35 = load i32, ptr @vertical_size, align 4, !tbaa !7
  %36 = load i32, ptr @vertical_subsampling_factor_m, align 4, !tbaa !7
  %37 = load i32, ptr @vertical_subsampling_factor_n, align 4, !tbaa !7
  %38 = load i32, ptr @horizontal_subsampling_factor_m, align 4, !tbaa !7
  %39 = load i32, ptr @horizontal_subsampling_factor_n, align 4, !tbaa !7
  %40 = load i32, ptr @picture_structure, align 4, !tbaa !7
  %41 = icmp ne i32 %40, 3
  %42 = zext i1 %41 to i32
  tail call fastcc void @Make_Spatial_Prediction_Frame(i32 noundef %24, i32 noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %42) #31
  %43 = load i32, ptr @progressive_frame, align 4, !tbaa !7
  %44 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !7
  %45 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @llframe0, i64 0, i64 1), align 8, !tbaa !11
  %46 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @llframe1, i64 0, i64 1), align 8, !tbaa !11
  %47 = load ptr, ptr @lltmp, align 8, !tbaa !11
  %48 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @current_frame, i64 0, i64 1), align 8, !tbaa !11
  %49 = load i32, ptr @lower_layer_horizontal_offset, align 4, !tbaa !7
  %50 = sdiv i32 %49, 2
  %51 = load i32, ptr @lower_layer_vertical_offset, align 4, !tbaa !7
  %52 = sdiv i32 %51, 2
  %53 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !7
  %54 = ashr i32 %53, 1
  %55 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !7
  %56 = ashr i32 %55, 1
  %57 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  %58 = ashr i32 %57, 1
  %59 = load i32, ptr @vertical_size, align 4, !tbaa !7
  %60 = ashr i32 %59, 1
  %61 = load i32, ptr @vertical_subsampling_factor_m, align 4, !tbaa !7
  %62 = load i32, ptr @vertical_subsampling_factor_n, align 4, !tbaa !7
  %63 = load i32, ptr @horizontal_subsampling_factor_m, align 4, !tbaa !7
  %64 = load i32, ptr @horizontal_subsampling_factor_n, align 4, !tbaa !7
  tail call fastcc void @Make_Spatial_Prediction_Frame(i32 noundef %43, i32 noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %61, i32 noundef %62, i32 noundef %63, i32 noundef %64, i32 noundef 1) #31
  %65 = load i32, ptr @progressive_frame, align 4, !tbaa !7
  %66 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !7
  %67 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @llframe0, i64 0, i64 2), align 16, !tbaa !11
  %68 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @llframe1, i64 0, i64 2), align 16, !tbaa !11
  %69 = load ptr, ptr @lltmp, align 8, !tbaa !11
  %70 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @current_frame, i64 0, i64 2), align 16, !tbaa !11
  %71 = load i32, ptr @lower_layer_horizontal_offset, align 4, !tbaa !7
  %72 = sdiv i32 %71, 2
  %73 = load i32, ptr @lower_layer_vertical_offset, align 4, !tbaa !7
  %74 = sdiv i32 %73, 2
  %75 = load i32, ptr @lower_layer_prediction_horizontal_size, align 4, !tbaa !7
  %76 = ashr i32 %75, 1
  %77 = load i32, ptr @lower_layer_prediction_vertical_size, align 4, !tbaa !7
  %78 = ashr i32 %77, 1
  %79 = load i32, ptr @horizontal_size, align 4, !tbaa !7
  %80 = ashr i32 %79, 1
  %81 = load i32, ptr @vertical_size, align 4, !tbaa !7
  %82 = ashr i32 %81, 1
  %83 = load i32, ptr @vertical_subsampling_factor_m, align 4, !tbaa !7
  %84 = load i32, ptr @vertical_subsampling_factor_n, align 4, !tbaa !7
  %85 = load i32, ptr @horizontal_subsampling_factor_m, align 4, !tbaa !7
  %86 = load i32, ptr @horizontal_subsampling_factor_n, align 4, !tbaa !7
  tail call fastcc void @Make_Spatial_Prediction_Frame(i32 noundef %65, i32 noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %83, i32 noundef %84, i32 noundef %85, i32 noundef %86, i32 noundef 1) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Read_Lower_Layer_Component_Framewise(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #39
  %5 = load ptr, ptr @Lower_Layer_Picture_Filename, align 8, !tbaa !11
  %6 = load i32, ptr @True_Framenum, align 4, !tbaa !7
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5, i32 noundef %6) #32
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [3 x [3 x i8]], ptr @__const.Read_Lower_Layer_Component_Fieldwise.ext, i64 0, i64 %8
  %10 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %9) #32
  %11 = call noalias ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.278) #31
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %13
  %16 = icmp sgt i32 %1, 0
  %17 = getelementptr inbounds [3 x ptr], ptr @llframe0, i64 0, i64 %8
  %18 = getelementptr inbounds [3 x ptr], ptr @llframe1, i64 0, i64 %8
  %19 = zext i32 %1 to i64
  %20 = zext i32 %1 to i64
  br label %22

21:                                               ; preds = %3
  call void @exit(i32 noundef -1) #34
  unreachable

22:                                               ; preds = %58, %15
  %23 = phi i32 [ 0, %15 ], [ %60, %58 ]
  br i1 %16, label %24, label %39

24:                                               ; preds = %22
  %25 = mul nsw i32 %23, %1
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi i64 [ 0, %24 ], [ %34, %27 ]
  %29 = call i32 @getc(ptr noundef nonnull %11) #31
  %30 = trunc i32 %29 to i8
  %31 = load ptr, ptr %17, align 8, !tbaa !11
  %32 = add nsw i64 %28, %26
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  store i8 %30, ptr %33, align 1, !tbaa !15
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, %19
  br i1 %35, label %36, label %27, !llvm.loop !131

36:                                               ; preds = %27
  %37 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %58

39:                                               ; preds = %22
  %40 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !7
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = add nsw i32 %23, %42
  br label %58

44:                                               ; preds = %36
  %45 = add nsw i32 %23, 1
  br i1 %16, label %46, label %58

46:                                               ; preds = %44
  %47 = mul nsw i32 %45, %1
  %48 = sext i32 %47 to i64
  br label %49

49:                                               ; preds = %49, %46
  %50 = phi i64 [ 0, %46 ], [ %56, %49 ]
  %51 = call i32 @getc(ptr noundef nonnull %11) #31
  %52 = trunc i32 %51 to i8
  %53 = load ptr, ptr %18, align 8, !tbaa !11
  %54 = add nsw i64 %50, %48
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  store i8 %52, ptr %55, align 1, !tbaa !15
  %56 = add nuw nsw i64 %50, 1
  %57 = icmp eq i64 %56, %20
  br i1 %57, label %58, label %49, !llvm.loop !132

58:                                               ; preds = %49, %44, %39, %36
  %59 = phi i32 [ %23, %36 ], [ %45, %44 ], [ %43, %39 ], [ %45, %49 ]
  %60 = add nsw i32 %59, 1
  %61 = icmp slt i32 %60, %2
  br i1 %61, label %22, label %62, !llvm.loop !133

62:                                               ; preds = %58, %13
  %63 = call i32 @fclose(ptr noundef nonnull %11) #31
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #39
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Read_Lower_Layer_Component_Fieldwise(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #39
  %5 = load ptr, ptr @Lower_Layer_Picture_Filename, align 8, !tbaa !11
  %6 = load i32, ptr @True_Framenum, align 4, !tbaa !7
  %7 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !7
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 97, i32 102
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5, i32 noundef %6, i32 noundef %9) #32
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds [3 x [3 x i8]], ptr @__const.Read_Lower_Layer_Component_Fieldwise.ext, i64 0, i64 %11
  %13 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %12) #32
  %14 = call noalias ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.278) #31
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = icmp sgt i32 %2, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %16
  %19 = icmp sgt i32 %1, 0
  %20 = getelementptr inbounds [3 x ptr], ptr @llframe0, i64 0, i64 %11
  %21 = zext i32 %1 to i64
  br label %23

22:                                               ; preds = %3
  call void @exit(i32 noundef -1) #34
  unreachable

23:                                               ; preds = %37, %18
  %24 = phi i32 [ 0, %18 ], [ %41, %37 ]
  br i1 %19, label %25, label %37

25:                                               ; preds = %23
  %26 = mul nsw i32 %24, %1
  %27 = sext i32 %26 to i64
  br label %28

28:                                               ; preds = %28, %25
  %29 = phi i64 [ 0, %25 ], [ %35, %28 ]
  %30 = call i32 @getc(ptr noundef nonnull %14) #31
  %31 = trunc i32 %30 to i8
  %32 = load ptr, ptr %20, align 8, !tbaa !11
  %33 = add nsw i64 %29, %27
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  store i8 %31, ptr %34, align 1, !tbaa !15
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, %21
  br i1 %36, label %37, label %28, !llvm.loop !134

37:                                               ; preds = %28, %23
  %38 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !7
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 2, i32 1
  %41 = add nuw nsw i32 %40, %24
  %42 = icmp slt i32 %41, %2
  br i1 %42, label %23, label %43, !llvm.loop !135

43:                                               ; preds = %37, %16
  %44 = call i32 @fclose(ptr noundef nonnull %14) #31
  %45 = load i32, ptr @lower_layer_progressive_frame, align 4, !tbaa !7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %43
  %48 = load ptr, ptr @Lower_Layer_Picture_Filename, align 8, !tbaa !11
  %49 = load i32, ptr @True_Framenum, align 4, !tbaa !7
  %50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %48, i32 noundef %49, i32 noundef 98) #32
  %51 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %12) #32
  %52 = call noalias ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.278) #31
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %47
  %55 = icmp sgt i32 %2, 1
  br i1 %55, label %56, label %79

56:                                               ; preds = %54
  %57 = icmp sgt i32 %1, 0
  %58 = getelementptr inbounds [3 x ptr], ptr @llframe1, i64 0, i64 %11
  %59 = sext i32 %1 to i64
  %60 = zext i32 %2 to i64
  %61 = zext i32 %1 to i64
  br label %63

62:                                               ; preds = %47
  call void @exit(i32 noundef -1) #34
  unreachable

63:                                               ; preds = %76, %56
  %64 = phi i64 [ 1, %56 ], [ %77, %76 ]
  br i1 %57, label %65, label %76

65:                                               ; preds = %63
  %66 = mul nsw i64 %64, %59
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi i64 [ 0, %65 ], [ %74, %67 ]
  %69 = call i32 @getc(ptr noundef nonnull %52) #31
  %70 = trunc i32 %69 to i8
  %71 = load ptr, ptr %58, align 8, !tbaa !11
  %72 = add nsw i64 %68, %66
  %73 = getelementptr inbounds i8, ptr %71, i64 %72
  store i8 %70, ptr %73, align 1, !tbaa !15
  %74 = add nuw nsw i64 %68, 1
  %75 = icmp eq i64 %74, %61
  br i1 %75, label %76, label %67, !llvm.loop !136

76:                                               ; preds = %67, %63
  %77 = add nuw nsw i64 %64, 2
  %78 = icmp ult i64 %77, %60
  br i1 %78, label %63, label %79, !llvm.loop !137

79:                                               ; preds = %76, %54
  %80 = call i32 @fclose(ptr noundef nonnull %52) #31
  br label %81

81:                                               ; preds = %79, %43
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #39
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @Make_Spatial_Prediction_Frame(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) unnamed_addr #17 {
  %18 = mul nsw i32 %15, %8
  %19 = sdiv i32 %18, %14
  %20 = mul nsw i32 %13, %9
  %21 = sdiv i32 %20, %12
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call fastcc void @Subsample_Vertical(ptr noundef %2, ptr noundef %4, i32 noundef %8, i32 noundef %9, i32 noundef %21, i32 noundef %12, i32 noundef %13, i32 noundef 0, i32 noundef 1) #31
  br label %32

24:                                               ; preds = %17
  %25 = icmp eq i32 %0, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr @lower_layer_deinterlaced_field_select, align 4, !tbaa !7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call fastcc void @Deinterlace(ptr noundef %3, ptr noundef %2, i32 noundef 0, i32 noundef %8, i32 noundef %9, i32 noundef %16) #31
  tail call fastcc void @Subsample_Vertical(ptr noundef %3, ptr noundef %4, i32 noundef %8, i32 noundef %9, i32 noundef %21, i32 noundef %12, i32 noundef %13, i32 noundef 0, i32 noundef 1) #31
  br label %32

30:                                               ; preds = %26
  tail call fastcc void @Deinterlace(ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef %8, i32 noundef %9, i32 noundef %16) #31
  tail call fastcc void @Subsample_Vertical(ptr noundef %2, ptr noundef %4, i32 noundef %8, i32 noundef %9, i32 noundef %21, i32 noundef %12, i32 noundef %13, i32 noundef 0, i32 noundef 1) #31
  br label %32

31:                                               ; preds = %24
  tail call fastcc void @Deinterlace(ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef %8, i32 noundef %9, i32 noundef %16) #31
  tail call fastcc void @Deinterlace(ptr noundef %3, ptr noundef %2, i32 noundef 0, i32 noundef %8, i32 noundef %9, i32 noundef %16) #31
  tail call fastcc void @Subsample_Vertical(ptr noundef %2, ptr noundef %4, i32 noundef %8, i32 noundef %9, i32 noundef %21, i32 noundef %12, i32 noundef %13, i32 noundef 0, i32 noundef 2) #31
  tail call fastcc void @Subsample_Vertical(ptr noundef %3, ptr noundef %4, i32 noundef %8, i32 noundef %9, i32 noundef %21, i32 noundef %12, i32 noundef %13, i32 noundef 1, i32 noundef 2) #31
  br label %32

32:                                               ; preds = %31, %30, %29, %23
  %33 = icmp slt i32 %7, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  %35 = mul nsw i32 %8, %7
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 0, %36
  %38 = getelementptr inbounds i16, ptr %4, i64 %37
  %39 = add nsw i32 %21, %7
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 0)
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 %11)
  br label %48

42:                                               ; preds = %32
  %43 = mul nsw i32 %10, %7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %5, i64 %44
  %46 = sub nsw i32 %11, %7
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 %21)
  br label %48

48:                                               ; preds = %42, %34
  %49 = phi ptr [ %5, %34 ], [ %45, %42 ]
  %50 = phi ptr [ %38, %34 ], [ %4, %42 ]
  %51 = phi i32 [ %41, %34 ], [ %47, %42 ]
  %52 = icmp slt i32 %6, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = sub nsw i32 0, %6
  %55 = add nsw i32 %19, %6
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 0)
  %57 = tail call i32 @llvm.smin.i32(i32 %56, i32 %10)
  br label %63

58:                                               ; preds = %48
  %59 = zext i32 %6 to i64
  %60 = getelementptr inbounds i8, ptr %49, i64 %59
  %61 = sub nsw i32 %10, %6
  %62 = tail call i32 @llvm.smin.i32(i32 %61, i32 %19)
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi ptr [ %49, %53 ], [ %60, %58 ]
  %65 = phi i32 [ %57, %53 ], [ %62, %58 ]
  %66 = phi i32 [ %54, %53 ], [ 0, %58 ]
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %68, label %118

68:                                               ; preds = %63
  %69 = add nsw i32 %8, -1
  %70 = ashr i32 %15, 1
  %71 = icmp sgt i32 %51, 0
  %72 = sext i32 %10 to i64
  %73 = sext i32 %8 to i64
  %74 = zext i32 %65 to i64
  br label %75

75:                                               ; preds = %115, %68
  %76 = phi i64 [ 0, %68 ], [ %116, %115 ]
  %77 = trunc i64 %76 to i32
  %78 = add nsw i32 %66, %77
  %79 = mul nsw i32 %78, %14
  %80 = srem i32 %79, %15
  %81 = sdiv i32 %79, %15
  %82 = shl nsw i32 %80, 4
  %83 = add nsw i32 %82, %70
  %84 = sdiv i32 %83, %15
  %85 = sub nsw i32 16, %84
  br i1 %71, label %86, label %115

86:                                               ; preds = %75
  %87 = sext i32 %81 to i64
  %88 = getelementptr inbounds i16, ptr %50, i64 %87
  %89 = icmp slt i32 %81, %69
  %90 = zext i1 %89 to i64
  %91 = getelementptr inbounds i16, ptr %88, i64 %90
  %92 = getelementptr inbounds i8, ptr %64, i64 %76
  br label %93

93:                                               ; preds = %93, %86
  %94 = phi ptr [ %110, %93 ], [ %92, %86 ]
  %95 = phi ptr [ %112, %93 ], [ %91, %86 ]
  %96 = phi ptr [ %111, %93 ], [ %88, %86 ]
  %97 = phi i32 [ %113, %93 ], [ 0, %86 ]
  %98 = load i16, ptr %96, align 2, !tbaa !47
  %99 = sext i16 %98 to i32
  %100 = mul nsw i32 %85, %99
  %101 = load i16, ptr %95, align 2, !tbaa !47
  %102 = sext i16 %101 to i32
  %103 = mul nsw i32 %84, %102
  %104 = add nsw i32 %103, %100
  %105 = icmp sgt i32 %104, -1
  %106 = select i1 %105, i32 128, i32 127
  %107 = add nsw i32 %106, %104
  %108 = lshr i32 %107, 8
  %109 = trunc i32 %108 to i8
  store i8 %109, ptr %94, align 1, !tbaa !15
  %110 = getelementptr inbounds i8, ptr %94, i64 %72
  %111 = getelementptr inbounds i16, ptr %96, i64 %73
  %112 = getelementptr inbounds i16, ptr %95, i64 %73
  %113 = add nuw nsw i32 %97, 1
  %114 = icmp eq i32 %113, %51
  br i1 %114, label %115, label %93, !llvm.loop !138

115:                                              ; preds = %93, %75
  %116 = add nuw nsw i64 %76, 1
  %117 = icmp eq i64 %116, %74
  br i1 %117, label %118, label %75, !llvm.loop !139

118:                                              ; preds = %115, %63
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @Subsample_Vertical(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #27 {
  %10 = icmp slt i32 %7, %4
  br i1 %10, label %11, label %57

11:                                               ; preds = %9
  %12 = add nsw i32 %3, -1
  %13 = ashr i32 %6, 1
  %14 = icmp sgt i32 %2, 0
  %15 = sext i32 %7 to i64
  %16 = sext i32 %8 to i64
  %17 = sext i32 %2 to i64
  %18 = sext i32 %4 to i64
  %19 = zext i32 %2 to i64
  br label %20

20:                                               ; preds = %54, %11
  %21 = phi i64 [ %15, %11 ], [ %55, %54 ]
  %22 = mul nsw i64 %21, %17
  %23 = getelementptr inbounds i16, ptr %1, i64 %22
  %24 = trunc i64 %21 to i32
  %25 = mul i32 %24, %5
  %26 = sdiv i32 %25, %6
  %27 = mul nsw i32 %26, %2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = icmp slt i32 %26, %12
  %31 = select i1 %30, i32 %2, i32 0
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %29, i64 %32
  %34 = srem i32 %25, %6
  %35 = shl nsw i32 %34, 4
  %36 = add nsw i32 %35, %13
  %37 = sdiv i32 %36, %6
  %38 = sub nsw i32 16, %37
  br i1 %14, label %39, label %54

39:                                               ; preds = %39, %20
  %40 = phi i64 [ %52, %39 ], [ 0, %20 ]
  %41 = getelementptr inbounds i8, ptr %29, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !15
  %43 = zext i8 %42 to i32
  %44 = mul nsw i32 %38, %43
  %45 = getelementptr inbounds i8, ptr %33, i64 %40
  %46 = load i8, ptr %45, align 1, !tbaa !15
  %47 = zext i8 %46 to i32
  %48 = mul nsw i32 %37, %47
  %49 = add nsw i32 %48, %44
  %50 = trunc i32 %49 to i16
  %51 = getelementptr inbounds i16, ptr %23, i64 %40
  store i16 %50, ptr %51, align 2, !tbaa !47
  %52 = add nuw nsw i64 %40, 1
  %53 = icmp eq i64 %52, %19
  br i1 %53, label %54, label %39, !llvm.loop !140

54:                                               ; preds = %39, %20
  %55 = add i64 %21, %16
  %56 = icmp slt i64 %55, %18
  br i1 %56, label %20, label %57, !llvm.loop !141

57:                                               ; preds = %54, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @Deinterlace(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 {
  %7 = icmp slt i32 %2, %4
  br i1 %7, label %8, label %95

8:                                                ; preds = %6
  %9 = sext i32 %3 to i64
  %10 = sub nsw i64 0, %9
  %11 = add nsw i32 %4, -1
  %12 = icmp eq i32 %5, 0
  %13 = icmp sgt i32 %3, 0
  %14 = shl nsw i32 %3, 1
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 0, %15
  %17 = add nsw i32 %4, -2
  %18 = sext i32 %2 to i64
  %19 = sext i32 %4 to i64
  %20 = sext i32 %17 to i64
  %21 = sext i32 %11 to i64
  %22 = zext i32 %3 to i64
  %23 = zext i32 %3 to i64
  br label %24

24:                                               ; preds = %92, %8
  %25 = phi i64 [ %18, %8 ], [ %93, %92 ]
  %26 = mul nsw i64 %25, %9
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = icmp eq i64 %25, 0
  %29 = select i1 %28, i64 %9, i64 %10
  %30 = getelementptr inbounds i8, ptr %27, i64 %29
  %31 = icmp eq i64 %25, %21
  %32 = select i1 %31, i64 %10, i64 %9
  %33 = getelementptr inbounds i8, ptr %27, i64 %32
  br i1 %12, label %50, label %34

34:                                               ; preds = %24
  br i1 %13, label %35, label %92

35:                                               ; preds = %35, %34
  %36 = phi i64 [ %48, %35 ], [ 0, %34 ]
  %37 = getelementptr inbounds i8, ptr %30, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !15
  %39 = zext i8 %38 to i16
  %40 = getelementptr inbounds i8, ptr %33, i64 %36
  %41 = load i8, ptr %40, align 1, !tbaa !15
  %42 = zext i8 %41 to i16
  %43 = add nuw nsw i16 %39, 1
  %44 = add nuw nsw i16 %43, %42
  %45 = lshr i16 %44, 1
  %46 = trunc i16 %45 to i8
  %47 = getelementptr inbounds i8, ptr %27, i64 %36
  store i8 %46, ptr %47, align 1, !tbaa !15
  %48 = add nuw nsw i64 %36, 1
  %49 = icmp eq i64 %48, %22
  br i1 %49, label %92, label %35, !llvm.loop !142

50:                                               ; preds = %24
  %51 = getelementptr inbounds i8, ptr %1, i64 %26
  %52 = icmp slt i64 %25, 2
  %53 = select i1 %52, i64 0, i64 %16
  %54 = getelementptr inbounds i8, ptr %51, i64 %53
  %55 = icmp slt i64 %25, %20
  %56 = select i1 %55, i64 %15, i64 0
  %57 = getelementptr inbounds i8, ptr %51, i64 %56
  br i1 %13, label %58, label %92

58:                                               ; preds = %58, %50
  %59 = phi i64 [ %90, %58 ], [ 0, %50 ]
  %60 = getelementptr inbounds i8, ptr %30, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !15
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds i8, ptr %33, i64 %59
  %64 = load i8, ptr %63, align 1, !tbaa !15
  %65 = zext i8 %64 to i32
  %66 = add nuw nsw i32 %65, %62
  %67 = shl nuw nsw i32 %66, 3
  %68 = getelementptr inbounds i8, ptr %51, i64 %59
  %69 = load i8, ptr %68, align 1, !tbaa !15
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 1
  %72 = getelementptr inbounds i8, ptr %54, i64 %59
  %73 = load i8, ptr %72, align 1, !tbaa !15
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds i8, ptr %57, i64 %59
  %76 = load i8, ptr %75, align 1, !tbaa !15
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %67, %71
  %79 = add nuw nsw i32 %74, %77
  %80 = sub nsw i32 %78, %79
  %81 = load ptr, ptr @Clip, align 8, !tbaa !11
  %82 = icmp sgt i32 %80, -1
  %83 = select i1 %82, i32 8, i32 7
  %84 = add nsw i32 %83, %80
  %85 = ashr i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %81, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !15
  %89 = getelementptr inbounds i8, ptr %27, i64 %59
  store i8 %88, ptr %89, align 1, !tbaa !15
  %90 = add nuw nsw i64 %59, 1
  %91 = icmp eq i64 %90, %23
  br i1 %91, label %92, label %58, !llvm.loop !143

92:                                               ; preds = %58, %50, %35, %34
  %93 = add nsw i64 %25, 2
  %94 = icmp slt i64 %93, %19
  br i1 %94, label %24, label %95, !llvm.loop !144

95:                                               ; preds = %92, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #30

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal void @Next_Packet() #0 {
  br label %1

1:                                                ; preds = %119, %0
  %2 = tail call i32 @Get_Word() #32
  %3 = shl i32 %2, 16
  %4 = tail call i32 @Get_Word() #32
  %5 = or i32 %3, %4
  %6 = and i32 %5, -256
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %15, label %8

8:                                                ; preds = %8, %1
  %9 = phi i32 [ %12, %8 ], [ %5, %1 ]
  %10 = shl i32 %9, 8
  %11 = tail call i32 @Get_Byte() #32
  %12 = or i32 %11, %10
  %13 = and i32 %12, -256
  %14 = icmp eq i32 %13, 256
  br i1 %14, label %15, label %8, !llvm.loop !145

15:                                               ; preds = %8, %1
  %16 = phi i32 [ %5, %1 ], [ %12, %8 ]
  switch i32 %16, label %110 [
    i32 442, label %17
    i32 480, label %22
    i32 441, label %89
  ]

17:                                               ; preds = %15
  %18 = load ptr, ptr @ld, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.layer_data, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  store ptr %21, ptr %19, align 8, !tbaa !74
  br label %119

22:                                               ; preds = %15
  %23 = tail call i32 @Get_Word() #32
  %24 = load ptr, ptr @ld, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.layer_data, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !74
  %27 = zext i32 %23 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  %29 = getelementptr inbounds %struct.layer_data, ptr %24, i64 0, i32 5
  store ptr %28, ptr %29, align 8, !tbaa !75
  %30 = tail call i32 @Get_Byte() #32
  %31 = and i32 %30, -64
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %45

33:                                               ; preds = %22
  %34 = load ptr, ptr @ld, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.layer_data, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !74
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %37, ptr %35, align 8, !tbaa !74
  %38 = tail call i32 @Get_Byte() #32
  %39 = load ptr, ptr @ld, align 8, !tbaa !11
  %40 = getelementptr inbounds %struct.layer_data, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !74
  %42 = zext i32 %38 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  store ptr %43, ptr %40, align 8, !tbaa !74
  %44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.281)
  br label %123

45:                                               ; preds = %22
  %46 = icmp eq i32 %30, 255
  br i1 %46, label %47, label %50

47:                                               ; preds = %47, %45
  %48 = tail call i32 @Get_Byte() #32
  %49 = icmp eq i32 %48, 255
  br i1 %49, label %47, label %50, !llvm.loop !146

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %30, %45 ], [ %48, %47 ]
  %52 = icmp ugt i32 %51, 63
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = icmp ugt i32 %51, 127
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load ptr, ptr @stderr, align 8, !tbaa !11
  %57 = tail call i64 @fwrite(ptr nonnull @.str.1.282, i64 23, i64 1, ptr %56) #38
  tail call void @exit(i32 noundef 1) #34
  unreachable

58:                                               ; preds = %53
  %59 = load ptr, ptr @ld, align 8, !tbaa !11
  %60 = getelementptr inbounds %struct.layer_data, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !74
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %62, ptr %60, align 8, !tbaa !74
  %63 = tail call i32 @Get_Byte() #32
  br label %64

64:                                               ; preds = %58, %50
  %65 = phi i32 [ %63, %58 ], [ %51, %50 ]
  %66 = icmp ugt i32 %65, 47
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = icmp ugt i32 %65, 63
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load ptr, ptr @stderr, align 8, !tbaa !11
  %71 = tail call i64 @fwrite(ptr nonnull @.str.1.282, i64 23, i64 1, ptr %70) #38
  tail call void @exit(i32 noundef 1) #34
  unreachable

72:                                               ; preds = %67
  %73 = load ptr, ptr @ld, align 8, !tbaa !11
  %74 = getelementptr inbounds %struct.layer_data, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !74
  %76 = getelementptr inbounds i8, ptr %75, i64 9
  store ptr %76, ptr %74, align 8, !tbaa !74
  br label %123

77:                                               ; preds = %64
  %78 = icmp ugt i32 %65, 31
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = load ptr, ptr @ld, align 8, !tbaa !11
  %81 = getelementptr inbounds %struct.layer_data, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !74
  %83 = getelementptr inbounds i8, ptr %82, i64 4
  store ptr %83, ptr %81, align 8, !tbaa !74
  br label %123

84:                                               ; preds = %77
  %85 = icmp eq i32 %65, 15
  br i1 %85, label %123, label %86

86:                                               ; preds = %84
  %87 = load ptr, ptr @stderr, align 8, !tbaa !11
  %88 = tail call i64 @fwrite(ptr nonnull @.str.1.282, i64 23, i64 1, ptr %87) #38
  tail call void @exit(i32 noundef 1) #34
  unreachable

89:                                               ; preds = %89, %15
  %.lcssa1 = phi i32 [ %.lcssa1, %89 ], [ %16, %15 ]
  %90 = phi i64 [ %101, %89 ], [ 0, %15 ]
  %91 = load ptr, ptr @ld, align 8, !tbaa !11
  %92 = or i64 %90, 1
  %93 = getelementptr inbounds %struct.layer_data, ptr %91, i64 0, i32 1, i64 %90
  store i8 0, ptr %93, align 1, !tbaa !15
  %94 = load ptr, ptr @ld, align 8, !tbaa !11
  %95 = or i64 %90, 2
  %96 = getelementptr inbounds %struct.layer_data, ptr %94, i64 0, i32 1, i64 %92
  store i8 0, ptr %96, align 1, !tbaa !15
  %97 = load ptr, ptr @ld, align 8, !tbaa !11
  %98 = or i64 %90, 3
  %99 = getelementptr inbounds %struct.layer_data, ptr %97, i64 0, i32 1, i64 %95
  store i8 1, ptr %99, align 1, !tbaa !15
  %100 = load ptr, ptr @ld, align 8, !tbaa !11
  %101 = add nuw nsw i64 %90, 4
  %102 = getelementptr inbounds %struct.layer_data, ptr %100, i64 0, i32 1, i64 %98
  store i8 -73, ptr %102, align 1, !tbaa !15
  %103 = icmp ult i64 %90, 2044
  br i1 %103, label %89, label %104, !llvm.loop !147

104:                                              ; preds = %89
  %105 = load ptr, ptr @ld, align 8, !tbaa !11
  %106 = getelementptr inbounds %struct.layer_data, ptr %105, i64 0, i32 1
  %107 = getelementptr inbounds %struct.layer_data, ptr %105, i64 0, i32 2
  store ptr %106, ptr %107, align 8, !tbaa !74
  %108 = getelementptr inbounds %struct.layer_data, ptr %105, i64 0, i32 1, i64 2048
  %109 = getelementptr inbounds %struct.layer_data, ptr %105, i64 0, i32 5
  store ptr %108, ptr %109, align 8, !tbaa !75
  br label %123

110:                                              ; preds = %15
  %111 = icmp ugt i32 %16, 442
  br i1 %111, label %112, label %120

112:                                              ; preds = %110
  %113 = tail call i32 @Get_Word() #32
  %114 = load ptr, ptr @ld, align 8, !tbaa !11
  %115 = getelementptr inbounds %struct.layer_data, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !74
  %117 = zext i32 %113 to i64
  %118 = getelementptr inbounds i8, ptr %116, i64 %117
  store ptr %118, ptr %115, align 8, !tbaa !74
  br label %119

119:                                              ; preds = %112, %17
  br label %1

120:                                              ; preds = %110
  %.lcssa2 = phi i32 [ %16, %110 ]
  %121 = load ptr, ptr @stderr, align 8, !tbaa !11
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.2.283, i32 noundef %.lcssa2) #33
  tail call void @exit(i32 noundef 1) #34
  unreachable

123:                                              ; preds = %104, %84, %79, %72, %33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Flush_Buffer32() #0 {
  %1 = load ptr, ptr @ld, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !26
  %5 = add nsw i32 %4, -32
  %6 = load i32, ptr @System_Stream_Flag, align 4, !tbaa !7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = getelementptr inbounds i8, ptr %12, i64 -4
  %14 = icmp ult ptr %10, %13
  br i1 %14, label %36, label %15

15:                                               ; preds = %8
  %16 = icmp slt i32 %4, 57
  br i1 %16, label %17, label %65

17:                                               ; preds = %26, %15
  %18 = phi ptr [ %30, %26 ], [ %1, %15 ]
  %19 = phi i32 [ %34, %26 ], [ %5, %15 ]
  %20 = getelementptr inbounds %struct.layer_data, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  %22 = getelementptr inbounds %struct.layer_data, ptr %18, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = icmp ult ptr %21, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  tail call void @Next_Packet() #31
  br label %26

26:                                               ; preds = %25, %17
  %27 = tail call i32 @Get_Byte() #32
  %28 = sub nsw i32 24, %19
  %29 = shl i32 %27, %28
  %30 = load ptr, ptr @ld, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.layer_data, ptr %30, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !76
  %33 = or i32 %32, %29
  store i32 %33, ptr %31, align 8, !tbaa !76
  %34 = add nsw i32 %19, 8
  %35 = icmp slt i32 %19, 17
  br i1 %35, label %17, label %65, !llvm.loop !148

36:                                               ; preds = %8, %0
  %37 = icmp slt i32 %4, 57
  br i1 %37, label %38, label %65

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.layer_data, ptr %1, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !74
  br label %41

41:                                               ; preds = %51, %38
  %42 = phi ptr [ %53, %51 ], [ %1, %38 ]
  %43 = phi ptr [ %55, %51 ], [ %40, %38 ]
  %44 = phi i32 [ %63, %51 ], [ %5, %38 ]
  %45 = getelementptr inbounds %struct.layer_data, ptr %42, i64 0, i32 1, i64 2048
  %46 = icmp ult ptr %43, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  tail call void @Fill_Buffer() #32
  %48 = load ptr, ptr @ld, align 8, !tbaa !11
  %49 = getelementptr inbounds %struct.layer_data, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !74
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi ptr [ %50, %47 ], [ %43, %41 ]
  %53 = phi ptr [ %48, %47 ], [ %42, %41 ]
  %54 = getelementptr inbounds %struct.layer_data, ptr %53, i64 0, i32 2
  %55 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %55, ptr %54, align 8, !tbaa !74
  %56 = load i8, ptr %52, align 1, !tbaa !15
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 24, %44
  %59 = shl i32 %57, %58
  %60 = getelementptr inbounds %struct.layer_data, ptr %53, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !76
  %62 = or i32 %59, %61
  store i32 %62, ptr %60, align 8, !tbaa !76
  %63 = add nsw i32 %44, 8
  %64 = icmp slt i32 %44, 17
  br i1 %64, label %41, label %65, !llvm.loop !149

65:                                               ; preds = %51, %36, %26, %15
  %66 = phi ptr [ %1, %36 ], [ %1, %15 ], [ %53, %51 ], [ %30, %26 ]
  %67 = phi i32 [ %5, %36 ], [ %5, %15 ], [ %63, %51 ], [ %34, %26 ]
  %68 = getelementptr inbounds %struct.layer_data, ptr %66, i64 0, i32 6
  store i32 %67, ptr %68, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @Get_Bits32() #0 {
  %1 = tail call i32 @Show_Bits(i32 noundef 32) #32
  tail call void @Flush_Buffer32() #31
  ret i32 %1
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nofree nounwind optsize memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { optsize }
attributes #32 = { nounwind optsize }
attributes #33 = { cold optsize }
attributes #34 = { noreturn nounwind optsize }
attributes #35 = { nounwind optsize willreturn memory(none) }
attributes #36 = { nounwind optsize willreturn memory(read) }
attributes #37 = { nounwind optsize allocsize(0) }
attributes #38 = { cold }
attributes #39 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!13 = !{!14, !8, i64 3128}
!14 = !{!"layer_data", !8, i64 0, !9, i64 4, !12, i64 2056, !9, i64 2064, !8, i64 2080, !12, i64 2088, !8, i64 2096, !8, i64 2100, !9, i64 2104, !9, i64 2360, !9, i64 2616, !9, i64 2872, !8, i64 3128, !8, i64 3132, !8, i64 3136, !8, i64 3140, !8, i64 3144, !8, i64 3148, !8, i64 3152, !8, i64 3156, !8, i64 3160, !8, i64 3164, !8, i64 3168, !8, i64 3172, !9, i64 3176}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!14, !8, i64 3132}
!20 = distinct !{!20, !17, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17, !21, !22}
!25 = !{!14, !8, i64 3160}
!26 = !{!14, !8, i64 2096}
!27 = distinct !{!27, !17}
!28 = !{!14, !8, i64 3144}
!29 = !{!14, !8, i64 3148}
!30 = !{!31, !31, i64 0}
!31 = !{!"double", !9, i64 0}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = !{!14, !8, i64 3136}
!35 = distinct !{!35, !17}
!36 = !{!14, !8, i64 3140}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = !{!14, !8, i64 3152}
!40 = !{!14, !8, i64 3156}
!41 = !{!14, !8, i64 2100}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
!44 = !{!14, !8, i64 3164}
!45 = !{!14, !8, i64 3168}
!46 = !{!14, !8, i64 3172}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !9, i64 0}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17, !21, !22}
!52 = distinct !{!52, !17}
!53 = !{!14, !8, i64 0}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !17}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = !{!14, !12, i64 2056}
!75 = !{!14, !12, i64 2088}
!76 = !{!14, !8, i64 2080}
!77 = !{i32 0, i32 256}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17, !21, !22}
!88 = distinct !{!88, !17, !21, !22}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !17}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !17}
!97 = distinct !{!97, !17}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !17}
!107 = distinct !{!107, !17}
!108 = distinct !{!108, !17}
!109 = distinct !{!109, !17}
!110 = distinct !{!110, !17}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17}
!113 = distinct !{!113, !17}
!114 = distinct !{!114, !17}
!115 = distinct !{!115, !17}
!116 = distinct !{!116, !17}
!117 = distinct !{!117, !17}
!118 = distinct !{!118, !17}
!119 = distinct !{!119, !17}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17}
!122 = distinct !{!122, !17}
!123 = !{!124, !9, i64 2}
!124 = !{!"", !9, i64 0, !9, i64 1, !9, i64 2}
!125 = !{!124, !9, i64 0}
!126 = !{!124, !9, i64 1}
!127 = !{!128, !9, i64 1}
!128 = !{!"", !9, i64 0, !9, i64 1}
!129 = !{!128, !9, i64 0}
!130 = distinct !{!130, !17}
!131 = distinct !{!131, !17}
!132 = distinct !{!132, !17}
!133 = distinct !{!133, !17}
!134 = distinct !{!134, !17}
!135 = distinct !{!135, !17}
!136 = distinct !{!136, !17}
!137 = distinct !{!137, !17}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = distinct !{!140, !17}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17}
!143 = distinct !{!143, !17}
!144 = distinct !{!144, !17}
!145 = distinct !{!145, !17}
!146 = distinct !{!146, !17}
!147 = distinct !{!147, !17}
!148 = distinct !{!148, !17}
!149 = distinct !{!149, !17}
