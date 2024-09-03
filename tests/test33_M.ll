; ModuleID = 'tests/test33_F.ll'
source_filename = "tests/test33.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@a = internal global i32 2, align 4
@b = internal global i32 2, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %add2 = call i32 @_wyvern_slice_main_add1_71843268()
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %add2)
  %add13 = call i32 @_wyvern_slice_main_add1_71843268()
  ret i32 %add13
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_main_add1_71843268() #2 {
sliceclone_entry:
  %0 = load i32, ptr @a, align 4
  %1 = load i32, ptr @b, align 4
  %2 = add nsw i32 %0, %1
  ret i32 %2
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
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
