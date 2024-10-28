; ModuleID = 'test11.ll'
source_filename = "test11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circle = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Insufficient number of arguments!\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @area(i32 %C.coerce) #0 {
entry:
  %C = alloca %struct.circle, align 4
  %coerce.dive = getelementptr inbounds %struct.circle, ptr %C, i32 0, i32 0
  store i32 %C.coerce, ptr %coerce.dive, align 4
  %r = getelementptr inbounds %struct.circle, ptr %C, i32 0, i32 0
  %0 = load i32, ptr %r, align 4
  %conv = sitofp i32 %0 to double
  %mul = fmul double 0x400921FB54442D18, %conv
  %r1 = getelementptr inbounds %struct.circle, ptr %C, i32 0, i32 0
  %1 = load i32, ptr %r1, align 4
  %conv2 = sitofp i32 %1 to double
  %mul3 = fmul double %mul, %conv2
  %conv4 = fptosi double %mul3 to i32
  ret i32 %conv4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %C1 = alloca %struct.circle, align 4
  %C2 = alloca %struct.circle, align 4
  %cmp = icmp slt i32 %argc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1
  %0 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @atoi(ptr noundef %0) #3
  %arrayidx2 = getelementptr inbounds ptr, ptr %argv, i64 2
  %1 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @atoi(ptr noundef %1) #3
  %r = getelementptr inbounds %struct.circle, ptr %C1, i32 0, i32 0
  store i32 %call1, ptr %r, align 4
  %r4 = getelementptr inbounds %struct.circle, ptr %C2, i32 0, i32 0
  store i32 %call3, ptr %r4, align 4
  %coerce.dive = getelementptr inbounds %struct.circle, ptr %C1, i32 0, i32 0
  %2 = load i32, ptr %coerce.dive, align 4
  %call5 = call i32 @area(i32 %2)
  %coerce.dive6 = getelementptr inbounds %struct.circle, ptr %C2, i32 0, i32 0
  %3 = load i32, ptr %coerce.dive6, align 4
  %call7 = call i32 @area(i32 %3)
  %mul = mul nsw i32 %call5, %call7
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %mul)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 42, %if.then ], [ %mul, %if.end ]
  ret i32 %retval.0
}

declare i32 @printf(ptr noundef, ...) #1

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
