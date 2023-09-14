; ModuleID = 'a.cpp'
source_filename = "a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__const.main.x = private unnamed_addr constant [3 x i32] [i32 2, i32 3, i32 4], align 4
@__const.main.y = private unnamed_addr constant [3 x i32] [i32 4, i32 63, i32 4], align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"xa == a && yb == b\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"a.cpp\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_a.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z1fi(i32 noundef %a) #4 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %0)
  %1 = load i32, i32* %a.addr, align 4
  ret i32 %1
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z1gi(i32 noundef %b) #5 {
entry:
  %b.addr = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4
  %add = add nsw i32 %0, 2
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z1hiii(i32 noundef %a, i32 noundef %b, i32 noundef %c) #5 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %2 = load i32, i32* %c.addr, align 4
  %mul = mul nsw i32 %1, %2
  %add = add nsw i32 %0, %mul
  ret i32 %add
}

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define dso_local noundef i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %x = alloca [3 x i32], align 4
  %y = alloca [3 x i32], align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %xa = alloca i32, align 4
  %yb = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x i32]* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.main.x to i8*), i64 12, i1 false)
  %1 = bitcast [3 x i32]* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([3 x i32]* @__const.main.y to i8*), i64 12, i1 false)
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %x, i64 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %x, i64 0, i64 1
  %3 = load i32, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %x, i64 0, i64 2
  %4 = load i32, i32* %arrayidx2, align 4
  %mul = mul nsw i32 %3, %4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* %a, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %y, i64 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %y, i64 0, i64 1
  %6 = load i32, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %y, i64 0, i64 2
  %7 = load i32, i32* %arrayidx5, align 4
  %mul6 = mul nsw i32 %6, %7
  %add7 = add nsw i32 %5, %mul6
  store i32 %add7, i32* %b, align 4
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %x, i64 0, i64 0
  %8 = load i32, i32* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %x, i64 0, i64 1
  %9 = load i32, i32* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %x, i64 0, i64 2
  %10 = load i32, i32* %arrayidx10, align 4
  %call = call noundef i32 @_Z1hiii(i32 noundef %8, i32 noundef %9, i32 noundef %10)
  store i32 %call, i32* %xa, align 4
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %y, i64 0, i64 0
  %11 = load i32, i32* %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %y, i64 0, i64 1
  %12 = load i32, i32* %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %y, i64 0, i64 2
  %13 = load i32, i32* %arrayidx13, align 4
  %call14 = call noundef i32 @_Z1hiii(i32 noundef %11, i32 noundef %12, i32 noundef %13)
  store i32 %call14, i32* %yb, align 4
  %14 = load i32, i32* %xa, align 4
  %15 = load i32, i32* %a, align 4
  %cmp = icmp eq i32 %14, %15
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %16 = load i32, i32* %yb, align 4
  %17 = load i32, i32* %b, align 4
  %cmp15 = icmp eq i32 %16, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %18 = phi i1 [ false, %entry ], [ %cmp15, %land.rhs ]
  br i1 %18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  br label %cond.end

cond.false:                                       ; preds = %land.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

19:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %19, %cond.true
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #8

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_a.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
