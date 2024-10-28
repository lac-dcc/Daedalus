; ModuleID = 'test2.ll'
source_filename = "test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %rem = srem i32 %b, %a
  %add = add nsw i32 %b, %rem
  %div = sdiv i32 %add, %a
  ret i32 %div
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g(i32 noundef %a) #0 {
entry:
  %rem = srem i32 %a, 10
  %add = add nsw i32 %a, %rem
  %div = sdiv i32 %add, 10
  ret i32 %div
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %cmp = icmp slt i32 %a, %b
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @h(i32 noundef %a, i32 noundef %b)
  br label %return

if.end:                                           ; preds = %entry
  %rem = srem i32 %a, %b
  %add = add nsw i32 %a, %rem
  %div = sdiv i32 %add, %b
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %div, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call i64 @time(ptr noundef null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv) #3
  %call1 = call i32 @rand() #3
  %rem = srem i32 %call1, 100
  %add = add nsw i32 %rem, 1
  %call2 = call i32 @rand() #3
  %rem3 = srem i32 %call2, 100
  %add4 = add nsw i32 %rem3, 1
  %call5 = call i32 @g(i32 noundef %add)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call5)
  %call7 = call i32 @f(i32 noundef %add, i32 noundef %add4)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call7)
  ret i32 1
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @rand() #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
