; ModuleID = 'test25.ll'
source_filename = "test25.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"On f: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"On main: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %arg) #0 {
entry:
  %mul31 = call i32 @_wyvern_slice_f_mul3_721807665(i32 %arg)
  %mul4 = mul nsw i32 %mul31, 2
  %mul5 = mul nsw i32 %mul4, 2
  %mul6 = mul nsw i32 %mul5, 2
  %mul7 = mul nsw i32 %mul6, 2
  %add = add nsw i32 %mul7, 5
  %mul8 = mul nsw i32 %mul4, 5
  %mul9 = mul nsw i32 2, %add
  %add10 = add nsw i32 %mul9, 2
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %add10)
  ret i32 %add10
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %mul31 = call i32 @_wyvern_slice_f_mul3_721807665(i32 %argc)
  %mul4 = mul nsw i32 %mul31, 2
  %mul5 = mul nsw i32 %mul4, 2
  %mul6 = mul nsw i32 %mul5, 2
  %mul7 = mul nsw i32 %mul6, 2
  %add = add nsw i32 %mul7, 5
  %mul8 = mul nsw i32 2, %add
  %add9 = add nsw i32 %mul8, 2
  %call = call i32 @f(i32 noundef 2)
  %sub = sub nsw i32 %call, 6
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add9)
  ret i32 %add9
}

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_f_mul3_721807665(i32 %arg) #2 {
sliceclone_entry:
  %0 = mul nsw i32 %arg, %arg
  %1 = mul nsw i32 %0, 2
  %2 = mul nsw i32 %1, 2
  %3 = mul nsw i32 %2, 2
  ret i32 %3
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn "Daedalus_Slice" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
