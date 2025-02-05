; ModuleID = 'Regression-C-PR640.e.bc.ll'
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
  br label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 16
  %13 = zext i32 %3 to i64
  %14 = getelementptr i8, ptr %12, i64 %13
  %15 = add nuw nsw i32 %3, 8
  store i32 %15, ptr %2, align 16
  %16 = load i32, ptr %14, align 4
  %17 = icmp ult i32 %3, 33
  br i1 %17, label %27, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi ptr [ %8, %5 ], [ %20, %18 ]
  %23 = phi i32 [ %9, %5 ], [ %16, %18 ]
  %24 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %25 = getelementptr i8, ptr %22, i64 8
  store ptr %25, ptr %24, align 8
  %26 = load i64, ptr %22, align 8
  br label %36

27:                                               ; preds = %10
  %28 = zext i32 %15 to i64
  %29 = getelementptr i8, ptr %12, i64 %28
  %30 = add nuw nsw i32 %3, 16
  store i32 %30, ptr %2, align 16
  %31 = load i64, ptr %29, align 8
  %32 = icmp ult i32 %3, 25
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %21
  %37 = phi ptr [ %25, %21 ], [ %35, %33 ]
  %38 = phi i64 [ %26, %21 ], [ %31, %33 ]
  %39 = phi i32 [ %23, %21 ], [ %16, %33 ]
  %40 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %41 = getelementptr i8, ptr %37, i64 8
  store ptr %41, ptr %40, align 8
  %42 = load i32, ptr %37, align 4
  br label %56

43:                                               ; preds = %27
  %44 = zext i32 %30 to i64
  %45 = getelementptr i8, ptr %12, i64 %44
  %46 = add nuw nsw i32 %3, 24
  store i32 %46, ptr %2, align 16
  %47 = load i32, ptr %45, align 4
  %48 = icmp ult i32 %3, 17
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8
  br label %56

52:                                               ; preds = %43
  %53 = zext i32 %46 to i64
  %54 = getelementptr i8, ptr %12, i64 %53
  %55 = add nuw nsw i32 %3, 32
  store i32 %55, ptr %2, align 16
  br label %63

56:                                               ; preds = %49, %36
  %57 = phi ptr [ %41, %36 ], [ %51, %49 ]
  %58 = phi i32 [ %42, %36 ], [ %47, %49 ]
  %59 = phi i32 [ %39, %36 ], [ %16, %49 ]
  %60 = phi i64 [ %38, %36 ], [ %31, %49 ]
  %61 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %62 = getelementptr i8, ptr %57, i64 8
  store ptr %62, ptr %61, align 8
  br label %63

63:                                               ; preds = %56, %52
  %64 = phi i32 [ %47, %52 ], [ %58, %56 ]
  %65 = phi i32 [ %16, %52 ], [ %59, %56 ]
  %66 = phi i64 [ %31, %52 ], [ %60, %56 ]
  %67 = phi ptr [ %54, %52 ], [ %57, %56 ]
  %68 = load ptr, ptr %67, align 8
  call void @llvm.va_end(ptr nonnull %2)
  %69 = icmp eq ptr %68, %0
  %70 = icmp eq i32 %65, 1
  %71 = select i1 %69, i1 %70, i1 false
  %72 = icmp eq i64 %66, 1981891429
  %73 = select i1 %71, i1 %72, i1 false
  %74 = icmp eq i32 %64, 2
  %75 = select i1 %73, i1 %74, i1 false
  %76 = zext i1 %75 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %76
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
  br label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 16
  %13 = zext i32 %3 to i64
  %14 = getelementptr i8, ptr %12, i64 %13
  %15 = add nuw nsw i32 %3, 8
  store i32 %15, ptr %2, align 16
  %16 = load i32, ptr %14, align 4
  %17 = icmp ult i32 %3, 33
  br i1 %17, label %27, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi ptr [ %8, %5 ], [ %20, %18 ]
  %23 = phi i32 [ %9, %5 ], [ %16, %18 ]
  %24 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %25 = getelementptr i8, ptr %22, i64 8
  store ptr %25, ptr %24, align 8
  %26 = load i64, ptr %22, align 8
  br label %36

27:                                               ; preds = %10
  %28 = zext i32 %15 to i64
  %29 = getelementptr i8, ptr %12, i64 %28
  %30 = add nuw nsw i32 %3, 16
  store i32 %30, ptr %2, align 16
  %31 = load i64, ptr %29, align 8
  %32 = icmp ult i32 %3, 25
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %21
  %37 = phi ptr [ %25, %21 ], [ %35, %33 ]
  %38 = phi i64 [ %26, %21 ], [ %31, %33 ]
  %39 = phi i32 [ %23, %21 ], [ %16, %33 ]
  %40 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %41 = getelementptr i8, ptr %37, i64 8
  store ptr %41, ptr %40, align 8
  %42 = load i32, ptr %37, align 4
  br label %56

43:                                               ; preds = %27
  %44 = zext i32 %30 to i64
  %45 = getelementptr i8, ptr %12, i64 %44
  %46 = add nuw nsw i32 %3, 24
  store i32 %46, ptr %2, align 16
  %47 = load i32, ptr %45, align 4
  %48 = icmp ult i32 %3, 17
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8
  br label %56

52:                                               ; preds = %43
  %53 = zext i32 %46 to i64
  %54 = getelementptr i8, ptr %12, i64 %53
  %55 = add nuw nsw i32 %3, 32
  store i32 %55, ptr %2, align 16
  br label %63

56:                                               ; preds = %49, %36
  %57 = phi ptr [ %41, %36 ], [ %51, %49 ]
  %58 = phi i32 [ %42, %36 ], [ %47, %49 ]
  %59 = phi i32 [ %39, %36 ], [ %16, %49 ]
  %60 = phi i64 [ %38, %36 ], [ %31, %49 ]
  %61 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %62 = getelementptr i8, ptr %57, i64 8
  store ptr %62, ptr %61, align 8
  br label %63

63:                                               ; preds = %56, %52
  %64 = phi i32 [ %47, %52 ], [ %58, %56 ]
  %65 = phi i32 [ %16, %52 ], [ %59, %56 ]
  %66 = phi i64 [ %31, %52 ], [ %60, %56 ]
  %67 = phi ptr [ %54, %52 ], [ %57, %56 ]
  %68 = load ptr, ptr %67, align 8
  call void @llvm.va_end(ptr nonnull %2)
  %69 = icmp eq ptr %68, %0
  %70 = icmp eq i32 %65, 1
  %71 = select i1 %69, i1 %70, i1 false
  %72 = icmp eq i64 %66, 1981891433
  %73 = select i1 %71, i1 %72, i1 false
  %74 = icmp eq i32 %64, 2
  %75 = select i1 %73, i1 %74, i1 false
  %76 = zext i1 %75 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %76
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
