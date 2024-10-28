; ModuleID = 'soupertest.cpp'
source_filename = "soupertest.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress nofree nosync nounwind ssp willreturn memory(none) uwtable(sync)
define zeroext i1 @_Z12always_falsehi(i8 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  %4 = tail call i8 @llvm.fshr.i8(i8 %0, i8 %0, i8 %3)
  %5 = insertelement <4 x i8> poison, i8 %4, i64 0
  %6 = shufflevector <4 x i8> %5, <4 x i8> poison, <4 x i32> zeroinitializer
  %7 = lshr <4 x i8> %6, <i8 1, i8 2, i8 3, i8 4>
  %8 = and <4 x i8> %7, <i8 1, i8 1, i8 1, i8 1>
  %9 = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %8)
  %10 = tail call i8 @llvm.fshl.i8(i8 %0, i8 %0, i8 %3)
  %11 = insertelement <4 x i8> poison, i8 %10, i64 0
  %12 = shufflevector <4 x i8> %11, <4 x i8> poison, <4 x i32> zeroinitializer
  %13 = lshr <4 x i8> %12, <i8 1, i8 2, i8 3, i8 4>
  %14 = and <4 x i8> %13, <i8 1, i8 1, i8 1, i8 1>
  %15 = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %14)
  %16 = insertelement <2 x i8> poison, i8 %4, i64 0
  %17 = insertelement <2 x i8> %16, i8 %10, i64 1
  %18 = and <2 x i8> %17, <i8 1, i8 1>
  %19 = lshr <2 x i8> %17, <i8 5, i8 5>
  %20 = and <2 x i8> %19, <i8 1, i8 1>
  %21 = lshr <2 x i8> %17, <i8 6, i8 6>
  %22 = and <2 x i8> %21, <i8 1, i8 1>
  %23 = insertelement <2 x i8> poison, i8 %9, i64 0
  %24 = insertelement <2 x i8> %23, i8 %15, i64 1
  %25 = add <2 x i8> %24, %18
  %26 = add nuw nsw <2 x i8> %20, %22
  %27 = add <2 x i8> %25, %26
  %28 = zext <2 x i8> %27 to <2 x i32>
  %29 = lshr <2 x i8> %17, <i8 7, i8 7>
  %30 = zext <2 x i8> %29 to <2 x i32>
  %31 = add nuw nsw <2 x i32> %28, %30
  %32 = shufflevector <2 x i32> %31, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %33 = icmp ne <2 x i32> %31, %32
  %34 = extractelement <2 x i1> %33, i64 0
  ret i1 %34
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #1

attributes #0 = { mustprogress nofree nosync nounwind ssp willreturn memory(none) uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 0]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Apple clang version 16.0.0 (clang-1600.0.26.3)"}
