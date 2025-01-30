; ModuleID = '/src/llvm-test-suite/build/SingleSource/Regression/C/Regression-C-PR640.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@str = private unnamed_addr constant [10 x i8] c"All done.\00", align 1
@str.2 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 1, ptr %3, align 4, !tbaa !7
  %4 = call i32 (ptr, ...) @test_stdarg_va(ptr noundef nonnull %3, i32 noundef 1, i64 noundef 1981891429, i32 noundef 2, ptr noundef nonnull %3) #5, !range !11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = call i32 (ptr, ...) @test_stdarg_builtin_va(ptr noundef nonnull %3, i32 noundef 1, i64 noundef 1981891433, i32 noundef 2, ptr noundef nonnull %3) #5, !range !11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %16

10:                                               ; preds = %6
  %11 = load i32, ptr %3, align 4, !tbaa !7
  %12 = and i32 %11, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @str.2, ptr @str
  %15 = xor i32 %12, 1
  br label %16

16:                                               ; preds = %10, %9
  %17 = phi ptr [ @str.2, %9 ], [ %14, %10 ]
  %18 = phi i32 [ 1, %9 ], [ %15, %10 ]
  %19 = call i32 @puts(ptr nonnull dereferenceable(1) %17)
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn uwtable
define internal i32 @test_stdarg_va(ptr noundef readnone %0, ...) unnamed_addr #2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load i32, ptr %2, align 16
  %4 = icmp ult i32 %3, 41
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i64 8
  store ptr %8, ptr %6, align 8
  %9 = load i32, ptr %7, align 4
  br label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 16
  %13 = zext i32 %3 to i64
  %14 = getelementptr i8, ptr %12, i64 %13
  %15 = add nuw nsw i32 %3, 8
  store i32 %15, ptr %2, align 16
  %16 = load i32, ptr %14, align 4
  %17 = icmp ult i32 %3, 33
  br i1 %17, label %24, label %18

18:                                               ; preds = %10, %5
  %19 = phi i32 [ %9, %5 ], [ %16, %10 ]
  %20 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i64 8
  store ptr %22, ptr %20, align 8
  %23 = load i64, ptr %21, align 8
  br label %32

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %26 = load ptr, ptr %25, align 16
  %27 = zext i32 %15 to i64
  %28 = getelementptr i8, ptr %26, i64 %27
  %29 = add nuw nsw i32 %3, 16
  store i32 %29, ptr %2, align 16
  %30 = load i64, ptr %28, align 8
  %31 = icmp ult i32 %3, 25
  br i1 %31, label %39, label %32

32:                                               ; preds = %24, %18
  %33 = phi i64 [ %23, %18 ], [ %30, %24 ]
  %34 = phi i32 [ %19, %18 ], [ %16, %24 ]
  %35 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i8, ptr %36, i64 8
  store ptr %37, ptr %35, align 8
  %38 = load i32, ptr %36, align 4
  br label %53

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %41 = load ptr, ptr %40, align 16
  %42 = zext i32 %29 to i64
  %43 = getelementptr i8, ptr %41, i64 %42
  %44 = add nuw nsw i32 %3, 24
  store i32 %44, ptr %2, align 16
  %45 = load i32, ptr %43, align 4
  %46 = icmp ult i32 %3, 17
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %49 = load ptr, ptr %48, align 16
  %50 = zext i32 %44 to i64
  %51 = getelementptr i8, ptr %49, i64 %50
  %52 = add nuw nsw i32 %3, 32
  store i32 %52, ptr %2, align 16
  br label %60

53:                                               ; preds = %39, %32
  %54 = phi i32 [ %38, %32 ], [ %45, %39 ]
  %55 = phi i32 [ %34, %32 ], [ %16, %39 ]
  %56 = phi i64 [ %33, %32 ], [ %30, %39 ]
  %57 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr i8, ptr %58, i64 8
  store ptr %59, ptr %57, align 8
  br label %60

60:                                               ; preds = %53, %47
  %61 = phi i32 [ %45, %47 ], [ %54, %53 ]
  %62 = phi i32 [ %16, %47 ], [ %55, %53 ]
  %63 = phi i64 [ %30, %47 ], [ %56, %53 ]
  %64 = phi ptr [ %51, %47 ], [ %58, %53 ]
  %65 = load ptr, ptr %64, align 8
  call void @llvm.va_end(ptr nonnull %2)
  %66 = icmp eq ptr %65, %0
  %67 = icmp eq i32 %62, 1
  %68 = select i1 %66, i1 %67, i1 false
  %69 = icmp eq i64 %63, 1981891429
  %70 = select i1 %68, i1 %69, i1 false
  %71 = icmp eq i32 %61, 2
  %72 = select i1 %70, i1 %71, i1 false
  %73 = zext i1 %72 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %73
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn uwtable
define internal i32 @test_stdarg_builtin_va(ptr noundef readnone %0, ...) unnamed_addr #2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load i32, ptr %2, align 16
  %4 = icmp ult i32 %3, 41
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i64 8
  store ptr %8, ptr %6, align 8
  %9 = load i32, ptr %7, align 4
  br label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 16
  %13 = zext i32 %3 to i64
  %14 = getelementptr i8, ptr %12, i64 %13
  %15 = add nuw nsw i32 %3, 8
  store i32 %15, ptr %2, align 16
  %16 = load i32, ptr %14, align 4
  %17 = icmp ult i32 %3, 33
  br i1 %17, label %24, label %18

18:                                               ; preds = %10, %5
  %19 = phi i32 [ %9, %5 ], [ %16, %10 ]
  %20 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i64 8
  store ptr %22, ptr %20, align 8
  %23 = load i64, ptr %21, align 8
  br label %32

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %26 = load ptr, ptr %25, align 16
  %27 = zext i32 %15 to i64
  %28 = getelementptr i8, ptr %26, i64 %27
  %29 = add nuw nsw i32 %3, 16
  store i32 %29, ptr %2, align 16
  %30 = load i64, ptr %28, align 8
  %31 = icmp ult i32 %3, 25
  br i1 %31, label %39, label %32

32:                                               ; preds = %24, %18
  %33 = phi i64 [ %23, %18 ], [ %30, %24 ]
  %34 = phi i32 [ %19, %18 ], [ %16, %24 ]
  %35 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i8, ptr %36, i64 8
  store ptr %37, ptr %35, align 8
  %38 = load i32, ptr %36, align 4
  br label %53

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %41 = load ptr, ptr %40, align 16
  %42 = zext i32 %29 to i64
  %43 = getelementptr i8, ptr %41, i64 %42
  %44 = add nuw nsw i32 %3, 24
  store i32 %44, ptr %2, align 16
  %45 = load i32, ptr %43, align 4
  %46 = icmp ult i32 %3, 17
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %49 = load ptr, ptr %48, align 16
  %50 = zext i32 %44 to i64
  %51 = getelementptr i8, ptr %49, i64 %50
  %52 = add nuw nsw i32 %3, 32
  store i32 %52, ptr %2, align 16
  br label %60

53:                                               ; preds = %39, %32
  %54 = phi i32 [ %38, %32 ], [ %45, %39 ]
  %55 = phi i32 [ %34, %32 ], [ %16, %39 ]
  %56 = phi i64 [ %33, %32 ], [ %30, %39 ]
  %57 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr i8, ptr %58, i64 8
  store ptr %59, ptr %57, align 8
  br label %60

60:                                               ; preds = %53, %47
  %61 = phi i32 [ %45, %47 ], [ %54, %53 ]
  %62 = phi i32 [ %16, %47 ], [ %55, %53 ]
  %63 = phi i64 [ %30, %47 ], [ %56, %53 ]
  %64 = phi ptr [ %51, %47 ], [ %58, %53 ]
  %65 = load ptr, ptr %64, align 8
  call void @llvm.va_end(ptr nonnull %2)
  %66 = icmp eq ptr %65, %0
  %67 = icmp eq i32 %62, 1
  %68 = select i1 %66, i1 %67, i1 false
  %69 = icmp eq i64 %63, 1981891433
  %70 = select i1 %68, i1 %69, i1 false
  %71 = icmp eq i32 %61, 2
  %72 = select i1 %70, i1 %71, i1 false
  %73 = zext i1 %72 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %73
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{i32 0, i32 2}
