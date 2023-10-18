; ModuleID = 'test1.c'
source_filename = "test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"Syntaxe: %s N\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local zeroext i1 @is_num(i8* noundef %str, i32 noundef %N) #0 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca i8*, align 8
  %N.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp slt i32 %conv, 48
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp sgt i32 %conv5, 57
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i1, i1* %retval, align 1
  ret i1 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @target(i8* noundef %s0, i8* noundef %s1, i32 noundef %is_num0, i32 noundef %is_num1, i32 noundef %N) #1 {
entry:
  %s0.addr = alloca i8*, align 8
  %s1.addr = alloca i8*, align 8
  %is_num0.addr = alloca i32, align 4
  %is_num1.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s0, i8** %s0.addr, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i32 %is_num0, i32* %is_num0.addr, align 4
  store i32 %is_num1, i32* %is_num1.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 0, i32* %sum, align 4
  %0 = load i32, i32* %is_num0.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %is_num1.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s0.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %7 = load i8*, i8** %s1.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom2
  %9 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %9 to i32
  %add = add nsw i32 %conv, %conv4
  %10 = load i32, i32* %sum, align 4
  %add5 = add nsw i32 %10, %add
  store i32 %add5, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %entry
  %12 = load i32, i32* %sum, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @caller(i8* noundef %s0, i8* noundef %s1, i32 noundef %N) #1 {
entry:
  %s0.addr = alloca i8*, align 8
  %s1.addr = alloca i8*, align 8
  %N.addr = alloca i32, align 4
  %is_num0 = alloca i8, align 1
  %is_num1 = alloca i8, align 1
  store i8* %s0, i8** %s0.addr, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  %0 = load i8*, i8** %s0.addr, align 8
  %1 = load i32, i32* %N.addr, align 4
  %call = call zeroext i1 @is_num(i8* noundef %0, i32 noundef %1) #6
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %is_num0, align 1
  %2 = load i8*, i8** %s1.addr, align 8
  %3 = load i32, i32* %N.addr, align 4
  %call1 = call zeroext i1 @is_num(i8* noundef %2, i32 noundef %3) #6
  %frombool2 = zext i1 %call1 to i8
  store i8 %frombool2, i8* %is_num1, align 1
  %4 = load i8*, i8** %s0.addr, align 8
  %5 = load i8*, i8** %s1.addr, align 8
  %6 = load i8, i8* %is_num0, align 1
  %tobool = trunc i8 %6 to i1
  %conv = zext i1 %tobool to i32
  %7 = load i8, i8* %is_num1, align 1
  %tobool3 = trunc i8 %7 to i1
  %conv4 = zext i1 %tobool3 to i32
  %8 = load i32, i32* %N.addr, align 4
  %call5 = call i32 @target(i8* noundef %4, i8* noundef %5, i32 noundef %conv, i32 noundef %conv4, i32 noundef %8)
  ret i32 %call5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #1 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %N = alloca i32, align 4
  %s0 = alloca i8*, align 8
  %s1 = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i32 @atoi(i8* noundef %5) #6
  store i32 %call2, i32* %N, align 4
  %6 = load i32, i32* %N, align 4
  %conv = sext i32 %6 to i64
  %call3 = call noalias i8* @malloc(i64 noundef %conv) #7
  store i8* %call3, i8** %s0, align 8
  %7 = load i32, i32* %N, align 4
  %conv4 = sext i32 %7 to i64
  %call5 = call noalias i8* @malloc(i64 noundef %conv4) #7
  store i8* %call5, i8** %s1, align 8
  %8 = load i8*, i8** %s0, align 8
  %9 = load i32, i32* %N, align 4
  %conv6 = sext i32 %9 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 97, i64 %conv6, i1 false)
  %10 = load i8*, i8** %s1, align 8
  %11 = load i32, i32* %N, align 4
  %conv7 = sext i32 %11 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 50, i64 %conv7, i1 false)
  %12 = load i8*, i8** %s0, align 8
  %13 = load i8*, i8** %s1, align 8
  %14 = load i32, i32* %N, align 4
  %call8 = call i32 @caller(i8* noundef %12, i8* noundef %13, i32 noundef %14)
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
