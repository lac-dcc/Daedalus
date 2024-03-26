; ModuleID = 'tests/test11.ll'

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
	%b = alloca i32
	store i32 1, i32* %b
	%bv = load i32, i32* %b
	%a = add nsw i32 2, %bv

	%cr = icmp slt i32 2, 10
	br i1 %cr, label %ab, label %ba

ab:
	br label %merge

ba:
	br label %merge

merge:
	%a2 = phi i32* [null, %ab], [%b, %ba]
	%cond = icmp ne i32* %a2, null
	br i1 %cond, label %ac, label %ca

ac: ; preds = %merge
	
	%a3 = load i32, i32* %a2
	; %a3 = phi i32 [%a2, %merge]
	br label %ca

ca:
	; %a4 = phi i32 [%a2, %merge], [%a2, %ac]
	;%a4 = phi i32* [%a2, %merge], [%a3, %ac]
	%a4 = load i32, i32* %a2
	br label %end

end:
	ret i32 0
}
