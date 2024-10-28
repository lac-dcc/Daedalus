; ModuleID = 'test31.ll'
source_filename = "test31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #0 {
entry:
  %0 = load i32, ptr @a, align 4
  %1 = load i32, ptr @b, align 4
  %add = add nsw i32 %0, %1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %add)
  %2 = load i32, ptr @a, align 4
  %3 = load i32, ptr @b, align 4
  %add1 = add nsw i32 %2, %3
  ret i32 %add1
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @g(i32 noundef %c) #0 {
entry:
  %0 = load i32, ptr @b, align 4
  %mul = mul nsw i32 %c, %0
  %1 = load i32, ptr @a, align 4
  %add = add nsw i32 %mul, %1
  store i32 %add, ptr @b, align 4
  %2 = load i32, ptr @a, align 4
  %add1 = add nsw i32 %c, %2
  store i32 %add1, ptr @a, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 3, ptr @a, align 4
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1
  %0 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %0) #3
  store i32 %call, ptr @b, align 4
  %call1 = call i32 @f()
  %1 = load i32, ptr @b, align 4
  %2 = load i32, ptr @a, align 4
  %add = add nsw i32 %1, %2
  call void @g(i32 noundef %add)
  %arrayidx2 = getelementptr inbounds ptr, ptr %argv, i64 1
  %3 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @atoi(ptr noundef %3) #3
  store i32 %call3, ptr @a, align 4
  %call4 = call i32 @f()
  %4 = load i32, ptr @b, align 4
  %5 = load i32, ptr @a, align 4
  %add5 = add nsw i32 %4, %5
  call void @g(i32 noundef %add5)
  %call6 = call i32 @f()
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 42, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
