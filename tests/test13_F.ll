; ModuleID = 'tests/test13.ll'
source_filename = "tests/test13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %cmp = icmp eq i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %a2.0 = phi i32 [ 0, %if.then ], [ 1, %if.else ]
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %a5.0 = phi i32 [ 0, %if.end ], [ undef, %for.inc ]
  %cmp1 = icmp slt i32 %a5.0, %argc
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %tobool = icmp ne i32 %a2.0, 0
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %for.end
  %mul3 = mul nsw i32 2, %a2.0
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %for.end
  %a3.0 = phi i32 [ %mul3, %if.then2 ], [ %a2.0, %for.end ]
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %a3.0)
  %mul51 = call i32 @_wyvern_slice_main_mul5_966548112(i32 %argc)
  ret i32 %mul51
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_main_mul5_966548112(i32 %argc) #2 {
sliceclone_if.end:
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_if.end
  %0 = phi i32 [ 1, %sliceclone_if.end ], [ %5, %sliceclone_for.inc ]
  %1 = phi i32 [ 0, %sliceclone_if.end ], [ %3, %sliceclone_for.inc ]
  %2 = icmp slt i32 %1, %argc
  br i1 %2, label %sliceclone_for.body, label %sliceclone_for.end

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  %3 = add nsw i32 %1, 1
  br label %sliceclone_for.cond

sliceclone_for.body:                              ; preds = %sliceclone_for.cond
  %4 = add nsw i32 %1, 1
  %5 = mul nsw i32 %0, %4
  br label %sliceclone_for.inc

sliceclone_for.end:                               ; preds = %sliceclone_for.cond
  %6 = phi i32 [ %0, %sliceclone_for.cond ]
  br label %sliceclone_if.end4

sliceclone_if.end4:                               ; preds = %sliceclone_for.end
  %7 = mul nsw i32 %6, %6
  ret i32 %7
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn "Daedalus_Slice" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
