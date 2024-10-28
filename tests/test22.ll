; ModuleID = 'test22.ll'
source_filename = "test22.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i32, ptr }

@.str = private unnamed_addr constant [7 x i8] c"%d -> \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @insertEnd(ptr noundef %head, i32 noundef %data) #0 {
entry:
  %call = call noalias ptr @malloc(i64 noundef 16) #4
  %data1 = getelementptr inbounds %struct.Node, ptr %call, i32 0, i32 0
  store i32 %data, ptr %data1, align 8
  %next = getelementptr inbounds %struct.Node, ptr %call, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %0 = load ptr, ptr %head, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr %call, ptr %head, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %head, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %temp.0 = phi ptr [ %1, %if.end ], [ %3, %while.body ]
  %next2 = getelementptr inbounds %struct.Node, ptr %temp.0, i32 0, i32 1
  %2 = load ptr, ptr %next2, align 8
  %cmp3 = icmp ne ptr %2, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %next4 = getelementptr inbounds %struct.Node, ptr %temp.0, i32 0, i32 1
  %3 = load ptr, ptr %next4, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %temp.0.lcssa = phi ptr [ %temp.0, %while.cond ]
  %next5 = getelementptr inbounds %struct.Node, ptr %temp.0.lcssa, i32 0, i32 1
  store ptr %call, ptr %next5, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteValue(ptr noundef %head, i32 noundef %value) #0 {
entry:
  %0 = load ptr, ptr %head, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.Node, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %data, align 8
  %cmp1 = icmp eq i32 %1, %value
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct.Node, ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %next, align 8
  store ptr %2, ptr %head, align 8
  call void @free(ptr noundef %0) #5
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %temp.0 = phi ptr [ %0, %if.end ], [ %5, %while.body ]
  %prev.0 = phi ptr [ null, %if.end ], [ %temp.0, %while.body ]
  %cmp2 = icmp ne ptr %temp.0, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %data3 = getelementptr inbounds %struct.Node, ptr %temp.0, i32 0, i32 0
  %3 = load i32, ptr %data3, align 8
  %cmp4 = icmp ne i32 %3, %value
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %next5 = getelementptr inbounds %struct.Node, ptr %temp.0, i32 0, i32 1
  %5 = load ptr, ptr %next5, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %temp.0.lcssa = phi ptr [ %temp.0, %land.end ]
  %prev.0.lcssa = phi ptr [ %prev.0, %land.end ]
  %cmp6 = icmp eq ptr %temp.0.lcssa, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.end
  br label %return

if.end8:                                          ; preds = %while.end
  %next9 = getelementptr inbounds %struct.Node, ptr %temp.0.lcssa, i32 0, i32 1
  %6 = load ptr, ptr %next9, align 8
  %next10 = getelementptr inbounds %struct.Node, ptr %prev.0.lcssa, i32 0, i32 1
  store ptr %6, ptr %next10, align 8
  call void @free(ptr noundef %temp.0.lcssa) #5
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %head) #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %temp.0 = phi ptr [ %head, %entry ], [ %1, %while.body ]
  %cmp = icmp ne ptr %temp.0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %data = getelementptr inbounds %struct.Node, ptr %temp.0, i32 0, i32 0
  %0 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  %next = getelementptr inbounds %struct.Node, ptr %temp.0, i32 0, i32 1
  %1 = load ptr, ptr %next, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %head = alloca ptr, align 8
  store ptr null, ptr %head, align 8
  call void @insertEnd(ptr noundef %head, i32 noundef 1)
  call void @insertEnd(ptr noundef %head, i32 noundef 2)
  call void @insertEnd(ptr noundef %head, i32 noundef 3)
  %0 = load ptr, ptr %head, align 8
  call void @printList(ptr noundef %0)
  call void @deleteValue(ptr noundef %head, i32 noundef 2)
  %1 = load ptr, ptr %head, align 8
  call void @printList(ptr noundef %1)
  call void @deleteValue(ptr noundef %head, i32 noundef 1)
  %2 = load ptr, ptr %head, align 8
  call void @printList(ptr noundef %2)
  call void @deleteValue(ptr noundef %head, i32 noundef 3)
  %3 = load ptr, ptr %head, align 8
  call void @printList(ptr noundef %3)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

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
!9 = distinct !{!9, !7}
