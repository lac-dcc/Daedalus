@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}

; Function Attrs: nounwind readonly willreturn
define i1 @_wyvern_slice_main_cmp_842926947(i32 %argc) #2 {
sliceclone_entry:
  %0 = icmp eq i32 %argc, 2
  ret i1 %0
}
; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_main_a2.0_642139529(i32 %argc) #2 {
sliceclone_entry:
  %0 = icmp eq i32 %argc, 2
  br i1 %0, label %sliceclone_if.then, label %sliceclone_if.else

sliceclone_if.then:                               ; preds = %sliceclone_entry
  br label %sliceclone_if.end

sliceclone_if.else:                               ; preds = %sliceclone_entry
  br label %sliceclone_if.end

sliceclone_if.end:                                ; preds = %sliceclone_if.else, %sliceclone_if.then
  %1 = phi i32 [ 0, %sliceclone_if.then ], [ 1, %sliceclone_if.else ]
  ret i32 %1
}
; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_main_a4.0_644502093(i32 %argc, i32 %a4.0, i32 %a5.0) #2 {
_wyvern_unreachable:
  unreachable

sliceclone_if.end:                                ; No predecessors!
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_if.end
  %0 = phi i32 [ 1, %sliceclone_if.end ], [ %3, %sliceclone_for.inc ]
  %1 = icmp slt i32 %a5.0, %argc
  ret i32 %0

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  br label %sliceclone_for.cond

sliceclone_for.body:                              ; No predecessors!
  %2 = add nsw i32 %a5.0, 1
  %3 = mul nsw i32 %0, %2
  br label %sliceclone_for.inc
}
; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_main_a5.0_146267020(i32 %argc, i32 %a5.0) #2 {
_wyvern_unreachable:
  unreachable

sliceclone_if.end:                                ; No predecessors!
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_if.end
  %0 = phi i32 [ 0, %sliceclone_if.end ], [ %2, %sliceclone_for.inc ]
  %1 = icmp slt i32 %0, %argc
  ret i32 %0

sliceclone_for.inc:                               ; No predecessors!
  %2 = add nsw i32 %0, 1
  br label %sliceclone_for.cond
}
; Function Attrs: nounwind readonly willreturn
define i1 @_wyvern_slice_main_cmp1_542420585(i32 %argc) #2 {
_wyvern_unreachable:
  unreachable

sliceclone_if.end:                                ; No predecessors!
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_if.end
  %0 = phi i32 [ 0, %sliceclone_if.end ], [ %2, %sliceclone_for.inc ]
  %1 = icmp slt i32 %0, %argc
  ret i1 %1

sliceclone_for.inc:                               ; No predecessors!
  %2 = add nsw i32 %0, 1
  br label %sliceclone_for.cond
}
; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_main_add_251849902(i32 %a5.0) #2 {
sliceclone_for.body:
  %0 = add nsw i32 %a5.0, 1
  ret i32 %0
}
; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_main_mul_313613553(i32 %a4.0, i32 %a5.0) #2 {
sliceclone_for.body:
  %0 = add nsw i32 %a5.0, 1
  %1 = mul nsw i32 %a4.0, %0
  ret i32 %1
}
; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_main_inc_341835242(i32 %a5.0) #2 {
sliceclone_for.inc:
  %0 = add nsw i32 %a5.0, 1
  ret i32 %0
}
; Function Attrs: nounwind readonly willreturn
define i1 @_wyvern_slice_main_tobool_178468837(i32 %argc) #2 {
sliceclone_entry:
  %0 = icmp eq i32 %argc, 2
  br i1 %0, label %sliceclone_if.then, label %sliceclone_if.else

sliceclone_if.then:                               ; preds = %sliceclone_entry
  br label %sliceclone_if.end

sliceclone_if.else:                               ; preds = %sliceclone_entry
  br label %sliceclone_if.end

sliceclone_if.end:                                ; preds = %sliceclone_if.else, %sliceclone_if.then
  %1 = phi i32 [ 0, %sliceclone_if.then ], [ 1, %sliceclone_if.else ]
  br label %sliceclone_for.end

sliceclone_for.end:                               ; preds = %sliceclone_if.end
  %2 = icmp ne i32 %1, 0
  ret i1 %2
}
; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_main_mul3_180489962(i32 %a2.0) #2 {
sliceclone_if.then2:
  %0 = mul nsw i32 2, %a2.0
  ret i32 %0
}
; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_main_a3.0_918079147(i32 %argc) #2 {
sliceclone_entry:
  %0 = icmp eq i32 %argc, 2
  br i1 %0, label %sliceclone_if.then, label %sliceclone_if.else

sliceclone_if.then:                               ; preds = %sliceclone_entry
  br label %sliceclone_if.end

sliceclone_if.else:                               ; preds = %sliceclone_entry
  br label %sliceclone_if.end

sliceclone_if.end:                                ; preds = %sliceclone_if.else, %sliceclone_if.then
  %1 = phi i32 [ 0, %sliceclone_if.then ], [ 1, %sliceclone_if.else ]
  br label %sliceclone_for.end

sliceclone_for.end:                               ; preds = %sliceclone_if.end
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %sliceclone_if.then2, label %sliceclone_if.end4

sliceclone_if.then2:                              ; preds = %sliceclone_for.end
  %3 = mul nsw i32 2, %1
  br label %sliceclone_if.end4

sliceclone_if.end4:                               ; preds = %sliceclone_if.then2, %sliceclone_for.end
  %4 = phi i32 [ %3, %sliceclone_if.then2 ], [ %1, %sliceclone_for.end ]
  ret i32 %4
}
; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_main_call_332838325(i32 %argc) #2 {
sliceclone_entry:
  %0 = icmp eq i32 %argc, 2
  br i1 %0, label %sliceclone_if.then, label %sliceclone_if.else

sliceclone_if.then:                               ; preds = %sliceclone_entry
  br label %sliceclone_if.end

sliceclone_if.else:                               ; preds = %sliceclone_entry
  br label %sliceclone_if.end

sliceclone_if.end:                                ; preds = %sliceclone_if.else, %sliceclone_if.then
  %1 = phi i32 [ 0, %sliceclone_if.then ], [ 1, %sliceclone_if.else ]
  br label %sliceclone_for.end

sliceclone_for.end:                               ; preds = %sliceclone_if.end
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %sliceclone_if.then2, label %sliceclone_if.end4

sliceclone_if.then2:                              ; preds = %sliceclone_for.end
  %3 = mul nsw i32 2, %1
  br label %sliceclone_if.end4

sliceclone_if.end4:                               ; preds = %sliceclone_if.then2, %sliceclone_for.end
  %4 = phi i32 [ %3, %sliceclone_if.then2 ], [ %1, %sliceclone_for.end ]
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %4)
  ret i32 %5
}
; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_main_mul5_573628500(i32 %argc, i32 %a5.0) #2 {
sliceclone_if.end:
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_if.end
  %0 = phi i32 [ 1, %sliceclone_if.end ], [ %3, %sliceclone_for.inc ]
  %1 = icmp slt i32 %a5.0, %argc
  br i1 %1, label %sliceclone_for.body, label %sliceclone_if.end4

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  br label %sliceclone_for.cond

sliceclone_for.body:                              ; preds = %sliceclone_for.cond
  %2 = add nsw i32 %a5.0, 1
  %3 = mul nsw i32 %0, %2
  br label %sliceclone_for.inc

sliceclone_if.end4:                               ; preds = %sliceclone_for.cond
  %4 = mul nsw i32 %0, %0
  ret i32 %4
}
