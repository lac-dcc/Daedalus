; ModuleID = 'test1.ll'
source_filename = "test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"Syntaxe: %s N\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind willreturn memory(read) uwtable
define dso_local zeroext i1 @is_num(ptr noundef %str, i32 noundef %N) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %N
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i8, ptr %str, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %0 to i32
  %cmp1 = icmp slt i32 %conv, 48
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %idxprom3 = sext i32 %i.0 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %str, i64 %idxprom3
  %1 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %1 to i32
  %cmp6 = icmp sgt i32 %conv5, 57
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %for.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @target(ptr noundef %s0, ptr noundef %s1, i32 noundef %is_num0, i32 noundef %is_num1, i32 noundef %N) #1 {
entry:
  %tobool = icmp ne i32 %is_num0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %tobool1 = icmp ne i32 %is_num1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %sum.0 = phi i32 [ 0, %if.then ], [ %add5, %for.inc ]
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %N
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i8, ptr %s0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %0 to i32
  %idxprom2 = sext i32 %i.0 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %s1, i64 %idxprom2
  %1 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %1 to i32
  %add = add nsw i32 %conv, %conv4
  %add5 = add nsw i32 %sum.0, %add
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %sum.0.lcssa = phi i32 [ %sum.0, %for.cond ]
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %entry
  %sum.1 = phi i32 [ %sum.0.lcssa, %for.end ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %sum.1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @caller(ptr noundef %s0, ptr noundef %s1, i32 noundef %N) #1 {
entry:
  %call = call zeroext i1 @is_num(ptr noundef %s0, i32 noundef %N) #6
  %frombool = zext i1 %call to i8
  %call1 = call zeroext i1 @is_num(ptr noundef %s1, i32 noundef %N) #6
  %frombool2 = zext i1 %call1 to i8
  %tobool = trunc i8 %frombool to i1
  %conv = zext i1 %tobool to i32
  %tobool3 = trunc i8 %frombool2 to i1
  %conv4 = zext i1 %tobool3 to i32
  %call5 = call i32 @target(ptr noundef %s0, ptr noundef %s1, i32 noundef %conv, i32 noundef %conv4, i32 noundef %N)
  ret i32 %call5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #1 {
entry:
  %cmp = icmp ne i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, ptr noundef %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds ptr, ptr %argv, i64 1
  %2 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @atoi(ptr noundef %2) #6
  %conv = sext i32 %call2 to i64
  %call3 = call noalias ptr @malloc(i64 noundef %conv) #7
  %conv4 = sext i32 %call2 to i64
  %call5 = call noalias ptr @malloc(i64 noundef %conv4) #7
  %conv6 = sext i32 %call2 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %call3, i8 97, i64 %conv6, i1 false)
  %conv7 = sext i32 %call2 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %call5, i8 50, i64 %conv7, i1 false)
  %call8 = call i32 @caller(ptr noundef %call3, ptr noundef %call5, i32 noundef %call2)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
