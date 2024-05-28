ENDF
define internal i1 @_wyvern_slice_foo_cmp_721999231(i32 %N) {
_wyvern_unreachable:
  unreachable

sliceclone_for.inc:                               ; No predecessors!
  %0 = add nsw i32 %1, 1
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc,
 %sliceclone_entry
  %1 = phi i32 [ 0, %sliceclone_entry ], [ %0, %sliceclone_for.inc ]
  %2 = icmp slt i32 %1, %N
  ret i1 %2

sliceclone_entry:                                 ; No predecessors!
  br label %sliceclone_for.cond
}

ARGS: i32 %sum.0
ENDF
define internal i32 @_wyvern_slice_foo_add_446608621(i32 %x, i32 %sum.0) {
sliceclone_for.body:
  %0 = add nsw i32 %sum.0, %x
  ret i32 %0
}

ARGS: i32 %i.0
ENDF
define internal i32 @_wyvern_slice_foo_inc_233383282(i32 %i.0) {
sliceclone_for.inc:
  %0 = add nsw i32 %i.0, 1
  ret i32 %0
}

PHI FUNC HERE:   %sum.0 = phi i32 [ 0, %entry ], [ %add, %for.inc ]
k: 0 1
ENDF
define internal i32 @_wyvern_slice_foo_sum.0_123764215(i32 %sum.0) {
sliceclone_for.body:
  br label %sliceclone_for.inc

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc,
 %sliceclone_entry
  %0 = phi i32 [ 0, %sliceclone_entry ], [ %add, %sliceclone_for.inc ]
  ret i32 %sum.0

sliceclone_entry:                                 ; No predecessors!
  br label %sliceclone_for.cond
}

PHI FUNC HERE:   %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
k: 0 1
ENDF
define internal i32 @_wyvern_slice_foo_i.0_351088585(i32 %i.0) {
sliceclone_entry:
  br label %sliceclone_for.cond

sliceclone_for.inc:                               ; No predecessors!
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc,
 %sliceclone_entry
  %0 = phi i32 [ 0, %sliceclone_entry ], [ %inc, %sliceclone_for.inc ]
  ret i32 %i.0
}

PHI FUNC HERE:   %sum.0.lcssa = phi i32 [ %sum.0, %for.cond ]
ENDF
define internal i32 @_wyvern_slice_foo_sum.0.lcssa_838331429(i32 %x, i32 %N) {
sliceclone_entry:
  br label %sliceclone_for.cond

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  %0 = add nsw i32 %2, 1
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc,
 %sliceclone_entry
  %1 = phi i32 [ 0, %sliceclone_entry ], [ %4, %sliceclone_for.inc ]
  %2 = phi i32 [ 0, %sliceclone_entry ], [ %0, %sliceclone_for.inc ]
  %3 = icmp slt i32 %2, %N
  br i1 %3, label %sliceclone_for.body, label %sliceclone_for.end

sliceclone_for.body:                              ; preds = %sliceclone_for.cond
  %4 = add nsw i32 %1, %x
  br label %sliceclone_for.inc

sliceclone_for.end:                               ; preds = %sliceclone_for.cond
  %5 = phi i32 [ %1, %sliceclone_for.cond ]
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %x, i32 noundef %N) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi i32 [ 0, %entry ], [ %add2, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc3, %for.inc ]
  %cmp1 = call i1 @_wyvern_slice_foo_cmp_721999231(i32 %N)
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add2 = call i32 @_wyvern_slice_foo_add_446608621(i32 %x, i32 %sum.0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc3 = call i32 @_wyvern_slice_foo_inc_233383282(i32 %i.0)
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %sum.0.lcssa4 = call i32 @_wyvern_slice_foo_sum.0.lcssa_838331429(i32 %x, i32 
%N)
  ret i32 %sum.0.lcssa4
}

ENDF
define internal i1 @_wyvern_slice_bar_cmp_577190503(i32 %SIZE) {
_wyvern_unreachable:
  unreachable

sliceclone_entry:                                 ; No predecessors!
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc,
 %sliceclone_entry
  %0 = phi i32 [ 0, %sliceclone_entry ], [ %2, %sliceclone_for.inc ]
  %1 = icmp slt i32 %0, %SIZE
  ret i1 %1

sliceclone_for.inc:                               ; No predecessors!
  %2 = add nsw i32 %0, 1
  br label %sliceclone_for.cond
}

PHI FUNC HERE:   %sum.0 = phi i32 [ 0, %entry ], [ %add, %for.inc ]
k: 0 1
ENDF
define internal i32 @_wyvern_slice_bar_sum.0_284860565(i32 %sum.0) {
sliceclone_for.body:
  br label %sliceclone_for.inc

sliceclone_entry:                                 ; No predecessors!
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc,
 %sliceclone_entry
  %0 = phi i32 [ 0, %sliceclone_entry ], [ %add, %sliceclone_for.inc ]
  ret i32 %sum.0

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  br label %sliceclone_for.cond
}

PHI FUNC HERE:   %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
k: 0 1
ENDF
define internal i32 @_wyvern_slice_bar_i.0_89209980(i32 %i.0) {
sliceclone_for.inc:
  br label %sliceclone_for.cond

sliceclone_entry:                                 ; No predecessors!
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc,
 %sliceclone_entry
  %0 = phi i32 [ 0, %sliceclone_entry ], [ %inc, %sliceclone_for.inc ]
  ret i32 %i.0
}

ARGS: i32 %sum.0
ENDF
define internal i32 @_wyvern_slice_bar_add_856109718(i32 %y, i32 %sum.0) {
sliceclone_for.body:
  %0 = add nsw i32 %sum.0, %y
  ret i32 %0
}

ARGS: i32 %i.0
ENDF
define internal i32 @_wyvern_slice_bar_inc_61831358(i32 %i.0) {
sliceclone_for.inc:
  %0 = add nsw i32 %i.0, 1
  ret i32 %0
}

PHI FUNC HERE:   %sum.0.lcssa = phi i32 [ %sum.0, %for.cond ]
ENDF
define internal i32 @_wyvern_slice_bar_sum.0.lcssa_283646471(i32 %y, i32 %SIZE) 
{
sliceclone_entry:
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc,
 %sliceclone_entry
  %0 = phi i32 [ 0, %sliceclone_entry ], [ %4, %sliceclone_for.inc ]
  %1 = phi i32 [ 0, %sliceclone_entry ], [ %3, %sliceclone_for.inc ]
  %2 = icmp slt i32 %1, %SIZE
  br i1 %2, label %sliceclone_for.body, label %sliceclone_for.end

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  %3 = add nsw i32 %1, 1
  br label %sliceclone_for.cond

sliceclone_for.body:                              ; preds = %sliceclone_for.cond
  %4 = add nsw i32 %0, %y
  br label %sliceclone_for.inc

sliceclone_for.end:                               ; preds = %sliceclone_for.cond
  %5 = phi i32 [ %0, %sliceclone_for.cond ]
  ret i32 %5
}

ENDF
define internal i32 @_wyvern_slice_bar_mul_658739297(i32 %y, i32 %SIZE, i32 %v) 
{
sliceclone_entry:
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc,
 %sliceclone_entry
  %0 = phi i32 [ 0, %sliceclone_entry ], [ %4, %sliceclone_for.inc ]
  %1 = phi i32 [ 0, %sliceclone_entry ], [ %3, %sliceclone_for.inc ]
  %2 = icmp slt i32 %1, %SIZE
  br i1 %2, label %sliceclone_for.body, label %sliceclone_for.end

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  %3 = add nsw i32 %1, 1
  br label %sliceclone_for.cond

sliceclone_for.body:                              ; preds = %sliceclone_for.cond
  %4 = add nsw i32 %0, %y
  br label %sliceclone_for.inc

sliceclone_for.end:                               ; preds = %sliceclone_for.cond
  %5 = phi i32 [ %0, %sliceclone_for.cond ]
  %6 = mul nsw i32 %v, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %y, i32 noundef %SIZE, i32 noundef %v) #0 
{
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi i32 [ 0, %entry ], [ %add2, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc3, %for.inc ]
  %cmp1 = call i1 @_wyvern_slice_bar_cmp_577190503(i32 %SIZE)
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add2 = call i32 @_wyvern_slice_bar_add_856109718(i32 %y, i32 %sum.0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc3 = call i32 @_wyvern_slice_bar_inc_61831358(i32 %i.0)
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %sum.0.lcssa4 = call i32 @_wyvern_slice_bar_sum.0.lcssa_283646471(i32 %y, i32 
%SIZE)
  %mul5 = call i32 @_wyvern_slice_bar_mul_658739297(i32 %y, i32 %SIZE, i32 %v)
  ret i32 %mul5
}

Cannot outline because inst may not return:   %call2 = call i32 @bar(i32 noundef
 %argc, i32 noundef %add1, i32 noundef 2)
CANNOT OUTLINE:   %call2 = call i32 @bar(i32 noundef %argc, i32 noundef %add1, i
32 noundef 2)
ENDF
define internal i32 @_wyvern_slice_main_add_960384733(i32 %argc) {
sliceclone_entry:
  %0 = add nsw i32 %argc, 10
  ret i32 %0
}

Cannot outline because inst may not return:   %call = call i32 @foo(i32 noundef 
%argc, i32 noundef %add)
CANNOT OUTLINE:   %call = call i32 @foo(i32 noundef %argc, i32 noundef %add)
ENDF
define internal i32 @_wyvern_slice_main_add1_336087056(i32 %argc) {
sliceclone_entry:
  %0 = add nsw i32 %argc, 20
  ret i32 %0
}

Cannot outline because inst may not return:   %call2 = call i32 @bar(i32 noundef
 %argc, i32 noundef %add1, i32 noundef 2)
CANNOT OUTLINE:   %add3 = add nsw i32 %call, %call2
; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %add2 = call i32 @_wyvern_slice_main_add_960384733(i32 %argc)
  %call = call i32 @foo(i32 noundef %argc, i32 noundef %add2)
  %add13 = call i32 @_wyvern_slice_main_add1_336087056(i32 %argc)
  %call2 = call i32 @bar(i32 noundef %argc, i32 noundef %add13, i32 noundef 2)
  %add3 = add nsw i32 %call, %call2
  ret i32 %add3
}
