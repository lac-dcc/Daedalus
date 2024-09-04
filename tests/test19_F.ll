; ModuleID = './tests/test19.ll'
source_filename = "tests/test19.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %x, i32 noundef %N) #0 {
entry:
  %N.addr = alloca i32, align 4
  store i32 %x, ptr undef, align 4
  store i32 %N, ptr %N.addr, align 4
  store i32 0, ptr undef, align 4
  store i32 0, ptr undef, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr undef, align 4
  %1 = load i32, ptr %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add1 = call i32 @_wyvern_slice_foo_add_33319250()
  store i32 %add1, ptr undef, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc2 = call i32 @_wyvern_slice_foo_inc_398609438()
  store i32 %inc2, ptr undef, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr undef, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %y, i32 noundef %SIZE, i32 noundef %v) #0 {
entry:
  %SIZE.addr = alloca i32, align 4
  store i32 %y, ptr undef, align 4
  store i32 %SIZE, ptr %SIZE.addr, align 4
  store i32 %v, ptr undef, align 4
  store i32 0, ptr undef, align 4
  store i32 0, ptr undef, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr undef, align 4
  %1 = load i32, ptr %SIZE.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add1 = call i32 @_wyvern_slice_bar_add_642602388()
  store i32 %add1, ptr undef, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc2 = call i32 @_wyvern_slice_bar_inc_861950206()
  store i32 %inc2, ptr undef, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr undef, align 4
  %3 = load i32, ptr undef, align 4
  %mul3 = call i32 @_wyvern_slice_bar_mul_915730587()
  ret i32 %mul3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr undef, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr undef, align 4
  %add2 = call i32 @_wyvern_slice_main_add_662962271()
  %call = call i32 @foo(i32 noundef %0, i32 noundef %add2)
  %1 = load i32, ptr undef, align 4
  %2 = load i32, ptr undef, align 4
  %add13 = call i32 @_wyvern_slice_main_add1_523690186()
  %add34 = call i32 @_wyvern_slice_main_add3_667667897()
  ret i32 %add34
}

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_foo_add_33319250() #1 {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  br label %sliceclone_for.body

sliceclone_for.body:                              ; preds = %sliceclone_entry
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %1, align 4
  %4 = add nsw i32 %3, %2
  ret i32 %4
}

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_foo_inc_398609438() #1 {
sliceclone_entry:
  %0 = alloca i32, align 4
  br label %sliceclone_for.inc

sliceclone_for.inc:                               ; preds = %sliceclone_entry
  %1 = load i32, ptr %0, align 4
  %2 = add nsw i32 %1, 1
  ret i32 %2
}

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_bar_add_642602388() #1 {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  br label %sliceclone_for.body

sliceclone_for.body:                              ; preds = %sliceclone_entry
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %1, align 4
  %4 = add nsw i32 %3, %2
  ret i32 %4
}

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_bar_inc_861950206() #1 {
sliceclone_entry:
  %0 = alloca i32, align 4
  br label %sliceclone_for.inc

sliceclone_for.inc:                               ; preds = %sliceclone_entry
  %1 = load i32, ptr %0, align 4
  %2 = add nsw i32 %1, 1
  ret i32 %2
}

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_bar_mul_915730587() #1 {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  br label %sliceclone_for.end

sliceclone_for.end:                               ; preds = %sliceclone_entry
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %1, align 4
  %4 = mul nsw i32 %2, %3
  ret i32 %4
}

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_main_add_662962271() #1 {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  %2 = add nsw i32 %1, 10
  ret i32 %2
}

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_main_add1_523690186() #1 {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  %2 = add nsw i32 %1, 20
  ret i32 %2
}

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_main_add3_667667897() #1 {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  %2 = load i32, ptr %0, align 4
  %3 = add nsw i32 %2, 10
  %4 = call i32 @foo(i32 noundef %1, i32 noundef %3)
  %5 = load i32, ptr %0, align 4
  %6 = load i32, ptr %0, align 4
  %7 = add nsw i32 %6, 20
  %8 = call i32 @bar(i32 noundef %5, i32 noundef %7, i32 noundef 2)
  %9 = add nsw i32 %4, %8
  ret i32 %9
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn "Daedalus_Slice" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
