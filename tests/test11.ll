; ModuleID = 'tests/test11.ll'

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
	%b = alloca i32
	store i32 2, i32* %b
	%bv = load i32, i32* %b
	%a = add nsw i32 2, %bv
	%c = add nsw i32 2, %a
	ret i32 0
}
