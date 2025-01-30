; ModuleID = '/src/llvm-test-suite/build/SingleSource/UnitTests/2003-05-07-VarArgs.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.DWordS_struct = type { i32, i8 }
%struct.LargeS_struct = type { i32, double, ptr, i32 }

@.str = private unnamed_addr constant [11 x i8] c"string %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"int %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"double %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"long long %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"char %c\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"DWord { %d, %c }\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"QuadWord { %d, %f }\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"LargeS { %d, %f, 0x%d, %d }\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ssiciiiiis\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"10 args done!\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ddil\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"DQL\00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define internal void @test(ptr nocapture noundef readonly %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #4
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load i8, ptr %0, align 1, !tbaa !7
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %151, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 1
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  br label %9

9:                                                ; preds = %148, %5
  %10 = phi i8 [ %3, %5 ], [ %149, %148 ]
  %11 = phi ptr [ %0, %5 ], [ %12, %148 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = sext i8 %10 to i32
  switch i32 %13, label %148 [
    i32 115, label %14
    i32 105, label %29
    i32 100, label %44
    i32 108, label %59
    i32 99, label %74
    i32 68, label %91
    i32 81, label %109
    i32 76, label %135
  ]

14:                                               ; preds = %9
  %15 = load i32, ptr %2, align 16
  %16 = icmp ult i32 %15, 41
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 16
  %19 = zext i32 %15 to i64
  %20 = getelementptr i8, ptr %18, i64 %19
  %21 = add nuw nsw i32 %15, 8
  store i32 %21, ptr %2, align 16
  br label %25

22:                                               ; preds = %14
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr i8, ptr %23, i64 8
  store ptr %24, ptr %6, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi ptr [ %20, %17 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8
  %28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %27) #5
  br label %148

29:                                               ; preds = %9
  %30 = load i32, ptr %2, align 16
  %31 = icmp ult i32 %30, 41
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 16
  %34 = zext i32 %30 to i64
  %35 = getelementptr i8, ptr %33, i64 %34
  %36 = add nuw nsw i32 %30, 8
  store i32 %36, ptr %2, align 16
  br label %40

37:                                               ; preds = %29
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr i8, ptr %38, i64 8
  store ptr %39, ptr %6, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi ptr [ %35, %32 ], [ %38, %37 ]
  %42 = load i32, ptr %41, align 4
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %42) #5
  br label %148

44:                                               ; preds = %9
  %45 = load i32, ptr %7, align 4
  %46 = icmp ult i32 %45, 161
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load ptr, ptr %8, align 16
  %49 = zext i32 %45 to i64
  %50 = getelementptr i8, ptr %48, i64 %49
  %51 = add nuw nsw i32 %45, 16
  store i32 %51, ptr %7, align 4
  br label %55

52:                                               ; preds = %44
  %53 = load ptr, ptr %6, align 8
  %54 = getelementptr i8, ptr %53, i64 8
  store ptr %54, ptr %6, align 8
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi ptr [ %50, %47 ], [ %53, %52 ]
  %57 = load double, ptr %56, align 8
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %57) #5
  br label %148

59:                                               ; preds = %9
  %60 = load i32, ptr %2, align 16
  %61 = icmp ult i32 %60, 41
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load ptr, ptr %8, align 16
  %64 = zext i32 %60 to i64
  %65 = getelementptr i8, ptr %63, i64 %64
  %66 = add nuw nsw i32 %60, 8
  store i32 %66, ptr %2, align 16
  br label %70

67:                                               ; preds = %59
  %68 = load ptr, ptr %6, align 8
  %69 = getelementptr i8, ptr %68, i64 8
  store ptr %69, ptr %6, align 8
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi ptr [ %65, %62 ], [ %68, %67 ]
  %72 = load i64, ptr %71, align 8
  %73 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %72) #5
  br label %148

74:                                               ; preds = %9
  %75 = load i32, ptr %2, align 16
  %76 = icmp ult i32 %75, 41
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load ptr, ptr %8, align 16
  %79 = zext i32 %75 to i64
  %80 = getelementptr i8, ptr %78, i64 %79
  %81 = add nuw nsw i32 %75, 8
  store i32 %81, ptr %2, align 16
  br label %85

82:                                               ; preds = %74
  %83 = load ptr, ptr %6, align 8
  %84 = getelementptr i8, ptr %83, i64 8
  store ptr %84, ptr %6, align 8
  br label %85

85:                                               ; preds = %82, %77
  %86 = phi ptr [ %80, %77 ], [ %83, %82 ]
  %87 = load i32, ptr %86, align 4
  %88 = shl i32 %87, 24
  %89 = ashr exact i32 %88, 24
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %89) #5
  br label %148

91:                                               ; preds = %9
  %92 = load i32, ptr %2, align 16
  %93 = icmp ult i32 %92, 41
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load ptr, ptr %8, align 16
  %96 = zext i32 %92 to i64
  %97 = getelementptr i8, ptr %95, i64 %96
  %98 = add nuw nsw i32 %92, 8
  store i32 %98, ptr %2, align 16
  br label %102

99:                                               ; preds = %91
  %100 = load ptr, ptr %6, align 8
  %101 = getelementptr i8, ptr %100, i64 8
  store ptr %101, ptr %6, align 8
  br label %102

102:                                              ; preds = %99, %94
  %103 = phi ptr [ %97, %94 ], [ %100, %99 ]
  %104 = load i32, ptr %103, align 4, !tbaa.struct !10
  %105 = getelementptr inbounds i8, ptr %103, i64 4
  %106 = load i8, ptr %105, align 4, !tbaa.struct !13
  %107 = sext i8 %106 to i32
  %108 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %104, i32 noundef %107) #5
  br label %148

109:                                              ; preds = %9
  %110 = load i32, ptr %2, align 16
  %111 = icmp ult i32 %110, 41
  %112 = load i32, ptr %7, align 4
  %113 = icmp ult i32 %112, 161
  %114 = and i1 %111, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load ptr, ptr %8, align 16
  %117 = zext i32 %110 to i64
  %118 = getelementptr i8, ptr %116, i64 %117
  %119 = zext i32 %112 to i64
  %120 = getelementptr i8, ptr %116, i64 %119
  %121 = load i32, ptr %118, align 4
  %122 = load double, ptr %120, align 8
  %123 = add nuw nsw i32 %110, 8
  store i32 %123, ptr %2, align 16
  %124 = add nuw nsw i32 %112, 16
  store i32 %124, ptr %7, align 4
  br label %131

125:                                              ; preds = %109
  %126 = load ptr, ptr %6, align 8
  %127 = getelementptr inbounds i8, ptr %126, i64 8
  %128 = getelementptr i8, ptr %126, i64 16
  store ptr %128, ptr %6, align 8
  %129 = load double, ptr %127, align 8, !tbaa.struct !14
  %130 = load i32, ptr %126, align 8, !tbaa.struct !17
  br label %131

131:                                              ; preds = %125, %115
  %132 = phi i32 [ %121, %115 ], [ %130, %125 ]
  %133 = phi double [ %122, %115 ], [ %129, %125 ]
  %134 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %132, double noundef %133) #5
  br label %148

135:                                              ; preds = %9
  %136 = load ptr, ptr %6, align 8
  %137 = getelementptr i8, ptr %136, i64 32
  store ptr %137, ptr %6, align 8
  %138 = load i32, ptr %136, align 8, !tbaa.struct !18
  %139 = getelementptr inbounds i8, ptr %136, i64 8
  %140 = load double, ptr %139, align 8, !tbaa.struct !21
  %141 = getelementptr inbounds i8, ptr %136, i64 16
  %142 = load ptr, ptr %141, align 8, !tbaa.struct !22
  %143 = getelementptr inbounds i8, ptr %136, i64 24
  %144 = load i32, ptr %143, align 8, !tbaa.struct !23
  %145 = icmp ne ptr %142, null
  %146 = zext i1 %145 to i32
  %147 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %138, double noundef %140, i32 noundef %146, i32 noundef %144) #5
  br label %148

148:                                              ; preds = %135, %131, %102, %85, %70, %55, %40, %25, %9
  %149 = load i8, ptr %12, align 1, !tbaa !7
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %9, !llvm.loop !24

151:                                              ; preds = %148, %1
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.DWordS_struct, align 8
  %2 = alloca %struct.LargeS_struct, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #4
  store i64 416611827730, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #4
  store i32 21, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.LargeS_struct, ptr %2, i64 0, i32 1
  store double 2.200000e+01, ptr %3, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.LargeS_struct, ptr %2, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.LargeS_struct, ptr %2, i64 0, i32 3
  store i32 23, ptr %5, align 8, !tbaa !30
  call void (ptr, ...) @test(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef -123, i32 noundef 97, i32 noundef 123, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, ptr noundef nonnull @.str.11) #5
  call void (ptr, ...) @test(ptr noundef nonnull @.str.12, double noundef 1.000000e+00, double noundef 2.000000e+00, i32 noundef 32764, i64 noundef 12345677823423) #5
  %6 = load i64, ptr %1, align 8
  call void (ptr, ...) @test(ptr noundef nonnull @.str.13, i64 %6, i32 19, double 2.000000e+01, ptr noundef nonnull byval(%struct.LargeS_struct) align 8 %2) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #4
  ret i32 0
}

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { optsize }

!llvm.ident = !{!0}
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
!10 = !{i64 0, i64 4, !11, i64 4, i64 1, !7}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{i64 0, i64 1, !7}
!14 = !{i64 0, i64 8, !15}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !8, i64 0}
!17 = !{i64 0, i64 4, !11, i64 8, i64 8, !15}
!18 = !{i64 0, i64 4, !11, i64 8, i64 8, !15, i64 16, i64 8, !19, i64 24, i64 4, !11}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !8, i64 0}
!21 = !{i64 0, i64 8, !15, i64 8, i64 8, !19, i64 16, i64 4, !11}
!22 = !{i64 0, i64 8, !19, i64 8, i64 4, !11}
!23 = !{i64 0, i64 4, !11}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!27, !12, i64 0}
!27 = !{!"LargeS_struct", !12, i64 0, !16, i64 8, !20, i64 16, !12, i64 24}
!28 = !{!27, !16, i64 8}
!29 = !{!27, !20, i64 16}
!30 = !{!27, !12, i64 24}
