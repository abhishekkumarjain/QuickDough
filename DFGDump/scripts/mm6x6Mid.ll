; ModuleID = 'fun2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = global [6 x [6 x i32]] zeroinitializer, align 16

define void @_Z5mm6x6PA6_iS0_iS0_([6 x i32]* %a, [6 x i32]* %b, i32 %init, [6 x i32]* %c) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 0
  store i32 %init, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body3
  %arrayidx12 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 0
  %0 = load i32* %arrayidx12, align 4
  %arrayidx16 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 0
  %1 = load i32* %arrayidx16, align 4
  %mul = mul nsw i32 %0, %1
  %arrayidx20 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 0
  %2 = load i32* %arrayidx20, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %arrayidx12.1 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 1
  %3 = load i32* %arrayidx12.1, align 4
  %arrayidx15.1 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1 = getelementptr inbounds [6 x i32]* %arrayidx15.1, i32 0, i64 0
  %4 = load i32* %arrayidx16.1, align 4
  %mul.1 = mul nsw i32 %3, %4
  %arrayidx20.1 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 0
  %5 = load i32* %arrayidx20.1, align 4
  %add.1 = add nsw i32 %5, %mul.1
  store i32 %add.1, i32* %arrayidx20.1, align 4
  br label %for.inc.1

for.inc21:                                        ; preds = %for.inc.5
  %arrayidx5.1 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1, align 4
  br label %for.body8.1

for.inc24:                                        ; preds = %for.inc21.5
  br label %for.body3.1

for.inc.1:                                        ; preds = %for.inc
  %arrayidx12.2 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 2
  %6 = load i32* %arrayidx12.2, align 4
  %arrayidx15.2 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2 = getelementptr inbounds [6 x i32]* %arrayidx15.2, i32 0, i64 0
  %7 = load i32* %arrayidx16.2, align 4
  %mul.2 = mul nsw i32 %6, %7
  %arrayidx20.2 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 0
  %8 = load i32* %arrayidx20.2, align 4
  %add.2 = add nsw i32 %8, %mul.2
  store i32 %add.2, i32* %arrayidx20.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx12.3 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 3
  %9 = load i32* %arrayidx12.3, align 4
  %arrayidx15.3 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3 = getelementptr inbounds [6 x i32]* %arrayidx15.3, i32 0, i64 0
  %10 = load i32* %arrayidx16.3, align 4
  %mul.3 = mul nsw i32 %9, %10
  %arrayidx20.3 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 0
  %11 = load i32* %arrayidx20.3, align 4
  %add.3 = add nsw i32 %11, %mul.3
  store i32 %add.3, i32* %arrayidx20.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx12.4 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 4
  %12 = load i32* %arrayidx12.4, align 4
  %arrayidx15.4 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4 = getelementptr inbounds [6 x i32]* %arrayidx15.4, i32 0, i64 0
  %13 = load i32* %arrayidx16.4, align 4
  %mul.4 = mul nsw i32 %12, %13
  %arrayidx20.4 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 0
  %14 = load i32* %arrayidx20.4, align 4
  %add.4 = add nsw i32 %14, %mul.4
  store i32 %add.4, i32* %arrayidx20.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx12.5 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 5
  %15 = load i32* %arrayidx12.5, align 4
  %arrayidx15.5 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5 = getelementptr inbounds [6 x i32]* %arrayidx15.5, i32 0, i64 0
  %16 = load i32* %arrayidx16.5, align 4
  %mul.5 = mul nsw i32 %15, %16
  %arrayidx20.5 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 0
  %17 = load i32* %arrayidx20.5, align 4
  %add.5 = add nsw i32 %17, %mul.5
  store i32 %add.5, i32* %arrayidx20.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  br label %for.inc21

for.body8.1:                                      ; preds = %for.inc21
  %arrayidx12.15 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 0
  %18 = load i32* %arrayidx12.15, align 4
  %arrayidx16.16 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 1
  %19 = load i32* %arrayidx16.16, align 4
  %mul.17 = mul nsw i32 %18, %19
  %arrayidx20.110 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 1
  %20 = load i32* %arrayidx20.110, align 4
  %add.111 = add nsw i32 %20, %mul.17
  store i32 %add.111, i32* %arrayidx20.110, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body8.1
  %arrayidx12.1.1 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 1
  %21 = load i32* %arrayidx12.1.1, align 4
  %arrayidx15.1.1 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.1 = getelementptr inbounds [6 x i32]* %arrayidx15.1.1, i32 0, i64 1
  %22 = load i32* %arrayidx16.1.1, align 4
  %mul.1.1 = mul nsw i32 %21, %22
  %arrayidx20.1.1 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 1
  %23 = load i32* %arrayidx20.1.1, align 4
  %add.1.1 = add nsw i32 %23, %mul.1.1
  store i32 %add.1.1, i32* %arrayidx20.1.1, align 4
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %for.inc.112
  %arrayidx12.2.1 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 2
  %24 = load i32* %arrayidx12.2.1, align 4
  %arrayidx15.2.1 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.1 = getelementptr inbounds [6 x i32]* %arrayidx15.2.1, i32 0, i64 1
  %25 = load i32* %arrayidx16.2.1, align 4
  %mul.2.1 = mul nsw i32 %24, %25
  %arrayidx20.2.1 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 1
  %26 = load i32* %arrayidx20.2.1, align 4
  %add.2.1 = add nsw i32 %26, %mul.2.1
  store i32 %add.2.1, i32* %arrayidx20.2.1, align 4
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %for.inc.1.1
  %arrayidx12.3.1 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 3
  %27 = load i32* %arrayidx12.3.1, align 4
  %arrayidx15.3.1 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.1 = getelementptr inbounds [6 x i32]* %arrayidx15.3.1, i32 0, i64 1
  %28 = load i32* %arrayidx16.3.1, align 4
  %mul.3.1 = mul nsw i32 %27, %28
  %arrayidx20.3.1 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 1
  %29 = load i32* %arrayidx20.3.1, align 4
  %add.3.1 = add nsw i32 %29, %mul.3.1
  store i32 %add.3.1, i32* %arrayidx20.3.1, align 4
  br label %for.inc.3.1

for.inc.3.1:                                      ; preds = %for.inc.2.1
  %arrayidx12.4.1 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 4
  %30 = load i32* %arrayidx12.4.1, align 4
  %arrayidx15.4.1 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.1 = getelementptr inbounds [6 x i32]* %arrayidx15.4.1, i32 0, i64 1
  %31 = load i32* %arrayidx16.4.1, align 4
  %mul.4.1 = mul nsw i32 %30, %31
  %arrayidx20.4.1 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 1
  %32 = load i32* %arrayidx20.4.1, align 4
  %add.4.1 = add nsw i32 %32, %mul.4.1
  store i32 %add.4.1, i32* %arrayidx20.4.1, align 4
  br label %for.inc.4.1

for.inc.4.1:                                      ; preds = %for.inc.3.1
  %arrayidx12.5.1 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 5
  %33 = load i32* %arrayidx12.5.1, align 4
  %arrayidx15.5.1 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.1 = getelementptr inbounds [6 x i32]* %arrayidx15.5.1, i32 0, i64 1
  %34 = load i32* %arrayidx16.5.1, align 4
  %mul.5.1 = mul nsw i32 %33, %34
  %arrayidx20.5.1 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 1
  %35 = load i32* %arrayidx20.5.1, align 4
  %add.5.1 = add nsw i32 %35, %mul.5.1
  store i32 %add.5.1, i32* %arrayidx20.5.1, align 4
  br label %for.inc.5.1

for.inc.5.1:                                      ; preds = %for.inc.4.1
  br label %for.inc21.1

for.inc21.1:                                      ; preds = %for.inc.5.1
  %arrayidx5.2 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2, align 4
  br label %for.body8.2

for.body8.2:                                      ; preds = %for.inc21.1
  %arrayidx12.215 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 0
  %36 = load i32* %arrayidx12.215, align 4
  %arrayidx16.216 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 2
  %37 = load i32* %arrayidx16.216, align 4
  %mul.217 = mul nsw i32 %36, %37
  %arrayidx20.220 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 2
  %38 = load i32* %arrayidx20.220, align 4
  %add.221 = add nsw i32 %38, %mul.217
  store i32 %add.221, i32* %arrayidx20.220, align 4
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body8.2
  %arrayidx12.1.2 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 1
  %39 = load i32* %arrayidx12.1.2, align 4
  %arrayidx15.1.2 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.2 = getelementptr inbounds [6 x i32]* %arrayidx15.1.2, i32 0, i64 2
  %40 = load i32* %arrayidx16.1.2, align 4
  %mul.1.2 = mul nsw i32 %39, %40
  %arrayidx20.1.2 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 2
  %41 = load i32* %arrayidx20.1.2, align 4
  %add.1.2 = add nsw i32 %41, %mul.1.2
  store i32 %add.1.2, i32* %arrayidx20.1.2, align 4
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %for.inc.222
  %arrayidx12.2.2 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 2
  %42 = load i32* %arrayidx12.2.2, align 4
  %arrayidx15.2.2 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.2 = getelementptr inbounds [6 x i32]* %arrayidx15.2.2, i32 0, i64 2
  %43 = load i32* %arrayidx16.2.2, align 4
  %mul.2.2 = mul nsw i32 %42, %43
  %arrayidx20.2.2 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 2
  %44 = load i32* %arrayidx20.2.2, align 4
  %add.2.2 = add nsw i32 %44, %mul.2.2
  store i32 %add.2.2, i32* %arrayidx20.2.2, align 4
  br label %for.inc.2.2

for.inc.2.2:                                      ; preds = %for.inc.1.2
  %arrayidx12.3.2 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 3
  %45 = load i32* %arrayidx12.3.2, align 4
  %arrayidx15.3.2 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.2 = getelementptr inbounds [6 x i32]* %arrayidx15.3.2, i32 0, i64 2
  %46 = load i32* %arrayidx16.3.2, align 4
  %mul.3.2 = mul nsw i32 %45, %46
  %arrayidx20.3.2 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 2
  %47 = load i32* %arrayidx20.3.2, align 4
  %add.3.2 = add nsw i32 %47, %mul.3.2
  store i32 %add.3.2, i32* %arrayidx20.3.2, align 4
  br label %for.inc.3.2

for.inc.3.2:                                      ; preds = %for.inc.2.2
  %arrayidx12.4.2 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 4
  %48 = load i32* %arrayidx12.4.2, align 4
  %arrayidx15.4.2 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.2 = getelementptr inbounds [6 x i32]* %arrayidx15.4.2, i32 0, i64 2
  %49 = load i32* %arrayidx16.4.2, align 4
  %mul.4.2 = mul nsw i32 %48, %49
  %arrayidx20.4.2 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 2
  %50 = load i32* %arrayidx20.4.2, align 4
  %add.4.2 = add nsw i32 %50, %mul.4.2
  store i32 %add.4.2, i32* %arrayidx20.4.2, align 4
  br label %for.inc.4.2

for.inc.4.2:                                      ; preds = %for.inc.3.2
  %arrayidx12.5.2 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 5
  %51 = load i32* %arrayidx12.5.2, align 4
  %arrayidx15.5.2 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.2 = getelementptr inbounds [6 x i32]* %arrayidx15.5.2, i32 0, i64 2
  %52 = load i32* %arrayidx16.5.2, align 4
  %mul.5.2 = mul nsw i32 %51, %52
  %arrayidx20.5.2 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 2
  %53 = load i32* %arrayidx20.5.2, align 4
  %add.5.2 = add nsw i32 %53, %mul.5.2
  store i32 %add.5.2, i32* %arrayidx20.5.2, align 4
  br label %for.inc.5.2

for.inc.5.2:                                      ; preds = %for.inc.4.2
  br label %for.inc21.2

for.inc21.2:                                      ; preds = %for.inc.5.2
  %arrayidx5.3 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3, align 4
  br label %for.body8.3

for.body8.3:                                      ; preds = %for.inc21.2
  %arrayidx12.325 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 0
  %54 = load i32* %arrayidx12.325, align 4
  %arrayidx16.326 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 3
  %55 = load i32* %arrayidx16.326, align 4
  %mul.327 = mul nsw i32 %54, %55
  %arrayidx20.330 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 3
  %56 = load i32* %arrayidx20.330, align 4
  %add.331 = add nsw i32 %56, %mul.327
  store i32 %add.331, i32* %arrayidx20.330, align 4
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.body8.3
  %arrayidx12.1.3 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 1
  %57 = load i32* %arrayidx12.1.3, align 4
  %arrayidx15.1.3 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.3 = getelementptr inbounds [6 x i32]* %arrayidx15.1.3, i32 0, i64 3
  %58 = load i32* %arrayidx16.1.3, align 4
  %mul.1.3 = mul nsw i32 %57, %58
  %arrayidx20.1.3 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 3
  %59 = load i32* %arrayidx20.1.3, align 4
  %add.1.3 = add nsw i32 %59, %mul.1.3
  store i32 %add.1.3, i32* %arrayidx20.1.3, align 4
  br label %for.inc.1.3

for.inc.1.3:                                      ; preds = %for.inc.332
  %arrayidx12.2.3 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 2
  %60 = load i32* %arrayidx12.2.3, align 4
  %arrayidx15.2.3 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.3 = getelementptr inbounds [6 x i32]* %arrayidx15.2.3, i32 0, i64 3
  %61 = load i32* %arrayidx16.2.3, align 4
  %mul.2.3 = mul nsw i32 %60, %61
  %arrayidx20.2.3 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 3
  %62 = load i32* %arrayidx20.2.3, align 4
  %add.2.3 = add nsw i32 %62, %mul.2.3
  store i32 %add.2.3, i32* %arrayidx20.2.3, align 4
  br label %for.inc.2.3

for.inc.2.3:                                      ; preds = %for.inc.1.3
  %arrayidx12.3.3 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 3
  %63 = load i32* %arrayidx12.3.3, align 4
  %arrayidx15.3.3 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.3 = getelementptr inbounds [6 x i32]* %arrayidx15.3.3, i32 0, i64 3
  %64 = load i32* %arrayidx16.3.3, align 4
  %mul.3.3 = mul nsw i32 %63, %64
  %arrayidx20.3.3 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 3
  %65 = load i32* %arrayidx20.3.3, align 4
  %add.3.3 = add nsw i32 %65, %mul.3.3
  store i32 %add.3.3, i32* %arrayidx20.3.3, align 4
  br label %for.inc.3.3

for.inc.3.3:                                      ; preds = %for.inc.2.3
  %arrayidx12.4.3 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 4
  %66 = load i32* %arrayidx12.4.3, align 4
  %arrayidx15.4.3 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.3 = getelementptr inbounds [6 x i32]* %arrayidx15.4.3, i32 0, i64 3
  %67 = load i32* %arrayidx16.4.3, align 4
  %mul.4.3 = mul nsw i32 %66, %67
  %arrayidx20.4.3 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 3
  %68 = load i32* %arrayidx20.4.3, align 4
  %add.4.3 = add nsw i32 %68, %mul.4.3
  store i32 %add.4.3, i32* %arrayidx20.4.3, align 4
  br label %for.inc.4.3

for.inc.4.3:                                      ; preds = %for.inc.3.3
  %arrayidx12.5.3 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 5
  %69 = load i32* %arrayidx12.5.3, align 4
  %arrayidx15.5.3 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.3 = getelementptr inbounds [6 x i32]* %arrayidx15.5.3, i32 0, i64 3
  %70 = load i32* %arrayidx16.5.3, align 4
  %mul.5.3 = mul nsw i32 %69, %70
  %arrayidx20.5.3 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 3
  %71 = load i32* %arrayidx20.5.3, align 4
  %add.5.3 = add nsw i32 %71, %mul.5.3
  store i32 %add.5.3, i32* %arrayidx20.5.3, align 4
  br label %for.inc.5.3

for.inc.5.3:                                      ; preds = %for.inc.4.3
  br label %for.inc21.3

for.inc21.3:                                      ; preds = %for.inc.5.3
  %arrayidx5.4 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4, align 4
  br label %for.body8.4

for.body8.4:                                      ; preds = %for.inc21.3
  %arrayidx12.435 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 0
  %72 = load i32* %arrayidx12.435, align 4
  %arrayidx16.436 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 4
  %73 = load i32* %arrayidx16.436, align 4
  %mul.437 = mul nsw i32 %72, %73
  %arrayidx20.440 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 4
  %74 = load i32* %arrayidx20.440, align 4
  %add.441 = add nsw i32 %74, %mul.437
  store i32 %add.441, i32* %arrayidx20.440, align 4
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.body8.4
  %arrayidx12.1.4 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 1
  %75 = load i32* %arrayidx12.1.4, align 4
  %arrayidx15.1.4 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.4 = getelementptr inbounds [6 x i32]* %arrayidx15.1.4, i32 0, i64 4
  %76 = load i32* %arrayidx16.1.4, align 4
  %mul.1.4 = mul nsw i32 %75, %76
  %arrayidx20.1.4 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 4
  %77 = load i32* %arrayidx20.1.4, align 4
  %add.1.4 = add nsw i32 %77, %mul.1.4
  store i32 %add.1.4, i32* %arrayidx20.1.4, align 4
  br label %for.inc.1.4

for.inc.1.4:                                      ; preds = %for.inc.442
  %arrayidx12.2.4 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 2
  %78 = load i32* %arrayidx12.2.4, align 4
  %arrayidx15.2.4 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.4 = getelementptr inbounds [6 x i32]* %arrayidx15.2.4, i32 0, i64 4
  %79 = load i32* %arrayidx16.2.4, align 4
  %mul.2.4 = mul nsw i32 %78, %79
  %arrayidx20.2.4 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 4
  %80 = load i32* %arrayidx20.2.4, align 4
  %add.2.4 = add nsw i32 %80, %mul.2.4
  store i32 %add.2.4, i32* %arrayidx20.2.4, align 4
  br label %for.inc.2.4

for.inc.2.4:                                      ; preds = %for.inc.1.4
  %arrayidx12.3.4 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 3
  %81 = load i32* %arrayidx12.3.4, align 4
  %arrayidx15.3.4 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.4 = getelementptr inbounds [6 x i32]* %arrayidx15.3.4, i32 0, i64 4
  %82 = load i32* %arrayidx16.3.4, align 4
  %mul.3.4 = mul nsw i32 %81, %82
  %arrayidx20.3.4 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 4
  %83 = load i32* %arrayidx20.3.4, align 4
  %add.3.4 = add nsw i32 %83, %mul.3.4
  store i32 %add.3.4, i32* %arrayidx20.3.4, align 4
  br label %for.inc.3.4

for.inc.3.4:                                      ; preds = %for.inc.2.4
  %arrayidx12.4.4 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 4
  %84 = load i32* %arrayidx12.4.4, align 4
  %arrayidx15.4.4 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.4 = getelementptr inbounds [6 x i32]* %arrayidx15.4.4, i32 0, i64 4
  %85 = load i32* %arrayidx16.4.4, align 4
  %mul.4.4 = mul nsw i32 %84, %85
  %arrayidx20.4.4 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 4
  %86 = load i32* %arrayidx20.4.4, align 4
  %add.4.4 = add nsw i32 %86, %mul.4.4
  store i32 %add.4.4, i32* %arrayidx20.4.4, align 4
  br label %for.inc.4.4

for.inc.4.4:                                      ; preds = %for.inc.3.4
  %arrayidx12.5.4 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 5
  %87 = load i32* %arrayidx12.5.4, align 4
  %arrayidx15.5.4 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.4 = getelementptr inbounds [6 x i32]* %arrayidx15.5.4, i32 0, i64 4
  %88 = load i32* %arrayidx16.5.4, align 4
  %mul.5.4 = mul nsw i32 %87, %88
  %arrayidx20.5.4 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 4
  %89 = load i32* %arrayidx20.5.4, align 4
  %add.5.4 = add nsw i32 %89, %mul.5.4
  store i32 %add.5.4, i32* %arrayidx20.5.4, align 4
  br label %for.inc.5.4

for.inc.5.4:                                      ; preds = %for.inc.4.4
  br label %for.inc21.4

for.inc21.4:                                      ; preds = %for.inc.5.4
  %arrayidx5.5 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5, align 4
  br label %for.body8.5

for.body8.5:                                      ; preds = %for.inc21.4
  %arrayidx12.545 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 0
  %90 = load i32* %arrayidx12.545, align 4
  %arrayidx16.546 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 5
  %91 = load i32* %arrayidx16.546, align 4
  %mul.547 = mul nsw i32 %90, %91
  %arrayidx20.550 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 5
  %92 = load i32* %arrayidx20.550, align 4
  %add.551 = add nsw i32 %92, %mul.547
  store i32 %add.551, i32* %arrayidx20.550, align 4
  br label %for.inc.552

for.inc.552:                                      ; preds = %for.body8.5
  %arrayidx12.1.5 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 1
  %93 = load i32* %arrayidx12.1.5, align 4
  %arrayidx15.1.5 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.5 = getelementptr inbounds [6 x i32]* %arrayidx15.1.5, i32 0, i64 5
  %94 = load i32* %arrayidx16.1.5, align 4
  %mul.1.5 = mul nsw i32 %93, %94
  %arrayidx20.1.5 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 5
  %95 = load i32* %arrayidx20.1.5, align 4
  %add.1.5 = add nsw i32 %95, %mul.1.5
  store i32 %add.1.5, i32* %arrayidx20.1.5, align 4
  br label %for.inc.1.5

for.inc.1.5:                                      ; preds = %for.inc.552
  %arrayidx12.2.5 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 2
  %96 = load i32* %arrayidx12.2.5, align 4
  %arrayidx15.2.5 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.5 = getelementptr inbounds [6 x i32]* %arrayidx15.2.5, i32 0, i64 5
  %97 = load i32* %arrayidx16.2.5, align 4
  %mul.2.5 = mul nsw i32 %96, %97
  %arrayidx20.2.5 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 5
  %98 = load i32* %arrayidx20.2.5, align 4
  %add.2.5 = add nsw i32 %98, %mul.2.5
  store i32 %add.2.5, i32* %arrayidx20.2.5, align 4
  br label %for.inc.2.5

for.inc.2.5:                                      ; preds = %for.inc.1.5
  %arrayidx12.3.5 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 3
  %99 = load i32* %arrayidx12.3.5, align 4
  %arrayidx15.3.5 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.5 = getelementptr inbounds [6 x i32]* %arrayidx15.3.5, i32 0, i64 5
  %100 = load i32* %arrayidx16.3.5, align 4
  %mul.3.5 = mul nsw i32 %99, %100
  %arrayidx20.3.5 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 5
  %101 = load i32* %arrayidx20.3.5, align 4
  %add.3.5 = add nsw i32 %101, %mul.3.5
  store i32 %add.3.5, i32* %arrayidx20.3.5, align 4
  br label %for.inc.3.5

for.inc.3.5:                                      ; preds = %for.inc.2.5
  %arrayidx12.4.5 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 4
  %102 = load i32* %arrayidx12.4.5, align 4
  %arrayidx15.4.5 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.5 = getelementptr inbounds [6 x i32]* %arrayidx15.4.5, i32 0, i64 5
  %103 = load i32* %arrayidx16.4.5, align 4
  %mul.4.5 = mul nsw i32 %102, %103
  %arrayidx20.4.5 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 5
  %104 = load i32* %arrayidx20.4.5, align 4
  %add.4.5 = add nsw i32 %104, %mul.4.5
  store i32 %add.4.5, i32* %arrayidx20.4.5, align 4
  br label %for.inc.4.5

for.inc.4.5:                                      ; preds = %for.inc.3.5
  %arrayidx12.5.5 = getelementptr inbounds [6 x i32]* %a, i32 0, i64 5
  %105 = load i32* %arrayidx12.5.5, align 4
  %arrayidx15.5.5 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.5 = getelementptr inbounds [6 x i32]* %arrayidx15.5.5, i32 0, i64 5
  %106 = load i32* %arrayidx16.5.5, align 4
  %mul.5.5 = mul nsw i32 %105, %106
  %arrayidx20.5.5 = getelementptr inbounds [6 x i32]* %c, i32 0, i64 5
  %107 = load i32* %arrayidx20.5.5, align 4
  %add.5.5 = add nsw i32 %107, %mul.5.5
  store i32 %add.5.5, i32* %arrayidx20.5.5, align 4
  br label %for.inc.5.5

for.inc.5.5:                                      ; preds = %for.inc.4.5
  br label %for.inc21.5

for.inc21.5:                                      ; preds = %for.inc.5.5
  br label %for.inc24

for.body3.1:                                      ; preds = %for.inc24
  %arrayidx.154 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx5.155 = getelementptr inbounds [6 x i32]* %arrayidx.154, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.155, align 4
  br label %for.body8.163

for.body8.163:                                    ; preds = %for.body3.1
  %arrayidx11.156 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.157 = getelementptr inbounds [6 x i32]* %arrayidx11.156, i32 0, i64 0
  %108 = load i32* %arrayidx12.157, align 4
  %arrayidx16.158 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 0
  %109 = load i32* %arrayidx16.158, align 4
  %mul.159 = mul nsw i32 %108, %109
  %arrayidx19.160 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.161 = getelementptr inbounds [6 x i32]* %arrayidx19.160, i32 0, i64 0
  %110 = load i32* %arrayidx20.161, align 4
  %add.162 = add nsw i32 %110, %mul.159
  store i32 %add.162, i32* %arrayidx20.161, align 4
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.body8.163
  %arrayidx11.1.164 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.1.165 = getelementptr inbounds [6 x i32]* %arrayidx11.1.164, i32 0, i64 1
  %111 = load i32* %arrayidx12.1.165, align 4
  %arrayidx15.1.166 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.167 = getelementptr inbounds [6 x i32]* %arrayidx15.1.166, i32 0, i64 0
  %112 = load i32* %arrayidx16.1.167, align 4
  %mul.1.168 = mul nsw i32 %111, %112
  %arrayidx19.1.169 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.1.170 = getelementptr inbounds [6 x i32]* %arrayidx19.1.169, i32 0, i64 0
  %113 = load i32* %arrayidx20.1.170, align 4
  %add.1.171 = add nsw i32 %113, %mul.1.168
  store i32 %add.1.171, i32* %arrayidx20.1.170, align 4
  br label %for.inc.1.181

for.inc.1.181:                                    ; preds = %for.inc.172
  %arrayidx11.2.173 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.2.174 = getelementptr inbounds [6 x i32]* %arrayidx11.2.173, i32 0, i64 2
  %114 = load i32* %arrayidx12.2.174, align 4
  %arrayidx15.2.175 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.176 = getelementptr inbounds [6 x i32]* %arrayidx15.2.175, i32 0, i64 0
  %115 = load i32* %arrayidx16.2.176, align 4
  %mul.2.177 = mul nsw i32 %114, %115
  %arrayidx19.2.178 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.2.179 = getelementptr inbounds [6 x i32]* %arrayidx19.2.178, i32 0, i64 0
  %116 = load i32* %arrayidx20.2.179, align 4
  %add.2.180 = add nsw i32 %116, %mul.2.177
  store i32 %add.2.180, i32* %arrayidx20.2.179, align 4
  br label %for.inc.2.190

for.inc.2.190:                                    ; preds = %for.inc.1.181
  %arrayidx11.3.182 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.3.183 = getelementptr inbounds [6 x i32]* %arrayidx11.3.182, i32 0, i64 3
  %117 = load i32* %arrayidx12.3.183, align 4
  %arrayidx15.3.184 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.185 = getelementptr inbounds [6 x i32]* %arrayidx15.3.184, i32 0, i64 0
  %118 = load i32* %arrayidx16.3.185, align 4
  %mul.3.186 = mul nsw i32 %117, %118
  %arrayidx19.3.187 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.3.188 = getelementptr inbounds [6 x i32]* %arrayidx19.3.187, i32 0, i64 0
  %119 = load i32* %arrayidx20.3.188, align 4
  %add.3.189 = add nsw i32 %119, %mul.3.186
  store i32 %add.3.189, i32* %arrayidx20.3.188, align 4
  br label %for.inc.3.199

for.inc.3.199:                                    ; preds = %for.inc.2.190
  %arrayidx11.4.191 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.4.192 = getelementptr inbounds [6 x i32]* %arrayidx11.4.191, i32 0, i64 4
  %120 = load i32* %arrayidx12.4.192, align 4
  %arrayidx15.4.193 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.194 = getelementptr inbounds [6 x i32]* %arrayidx15.4.193, i32 0, i64 0
  %121 = load i32* %arrayidx16.4.194, align 4
  %mul.4.195 = mul nsw i32 %120, %121
  %arrayidx19.4.196 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.4.197 = getelementptr inbounds [6 x i32]* %arrayidx19.4.196, i32 0, i64 0
  %122 = load i32* %arrayidx20.4.197, align 4
  %add.4.198 = add nsw i32 %122, %mul.4.195
  store i32 %add.4.198, i32* %arrayidx20.4.197, align 4
  br label %for.inc.4.1108

for.inc.4.1108:                                   ; preds = %for.inc.3.199
  %arrayidx11.5.1100 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.5.1101 = getelementptr inbounds [6 x i32]* %arrayidx11.5.1100, i32 0, i64 5
  %123 = load i32* %arrayidx12.5.1101, align 4
  %arrayidx15.5.1102 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.1103 = getelementptr inbounds [6 x i32]* %arrayidx15.5.1102, i32 0, i64 0
  %124 = load i32* %arrayidx16.5.1103, align 4
  %mul.5.1104 = mul nsw i32 %123, %124
  %arrayidx19.5.1105 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.5.1106 = getelementptr inbounds [6 x i32]* %arrayidx19.5.1105, i32 0, i64 0
  %125 = load i32* %arrayidx20.5.1106, align 4
  %add.5.1107 = add nsw i32 %125, %mul.5.1104
  store i32 %add.5.1107, i32* %arrayidx20.5.1106, align 4
  br label %for.inc.5.1109

for.inc.5.1109:                                   ; preds = %for.inc.4.1108
  br label %for.inc21.1110

for.inc21.1110:                                   ; preds = %for.inc.5.1109
  %arrayidx.1.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx5.1.1 = getelementptr inbounds [6 x i32]* %arrayidx.1.1, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.1, align 4
  br label %for.body8.1.1

for.body8.1.1:                                    ; preds = %for.inc21.1110
  %arrayidx11.14.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.15.1 = getelementptr inbounds [6 x i32]* %arrayidx11.14.1, i32 0, i64 0
  %126 = load i32* %arrayidx12.15.1, align 4
  %arrayidx16.16.1 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 1
  %127 = load i32* %arrayidx16.16.1, align 4
  %mul.17.1 = mul nsw i32 %126, %127
  %arrayidx19.19.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.110.1 = getelementptr inbounds [6 x i32]* %arrayidx19.19.1, i32 0, i64 1
  %128 = load i32* %arrayidx20.110.1, align 4
  %add.111.1 = add nsw i32 %128, %mul.17.1
  store i32 %add.111.1, i32* %arrayidx20.110.1, align 4
  br label %for.inc.112.1

for.inc.112.1:                                    ; preds = %for.body8.1.1
  %arrayidx11.1.1.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.1.1.1 = getelementptr inbounds [6 x i32]* %arrayidx11.1.1.1, i32 0, i64 1
  %129 = load i32* %arrayidx12.1.1.1, align 4
  %arrayidx15.1.1.1 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.1.1 = getelementptr inbounds [6 x i32]* %arrayidx15.1.1.1, i32 0, i64 1
  %130 = load i32* %arrayidx16.1.1.1, align 4
  %mul.1.1.1 = mul nsw i32 %129, %130
  %arrayidx19.1.1.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.1.1.1 = getelementptr inbounds [6 x i32]* %arrayidx19.1.1.1, i32 0, i64 1
  %131 = load i32* %arrayidx20.1.1.1, align 4
  %add.1.1.1 = add nsw i32 %131, %mul.1.1.1
  store i32 %add.1.1.1, i32* %arrayidx20.1.1.1, align 4
  br label %for.inc.1.1.1

for.inc.1.1.1:                                    ; preds = %for.inc.112.1
  %arrayidx11.2.1.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.2.1.1 = getelementptr inbounds [6 x i32]* %arrayidx11.2.1.1, i32 0, i64 2
  %132 = load i32* %arrayidx12.2.1.1, align 4
  %arrayidx15.2.1.1 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.1.1 = getelementptr inbounds [6 x i32]* %arrayidx15.2.1.1, i32 0, i64 1
  %133 = load i32* %arrayidx16.2.1.1, align 4
  %mul.2.1.1 = mul nsw i32 %132, %133
  %arrayidx19.2.1.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.2.1.1 = getelementptr inbounds [6 x i32]* %arrayidx19.2.1.1, i32 0, i64 1
  %134 = load i32* %arrayidx20.2.1.1, align 4
  %add.2.1.1 = add nsw i32 %134, %mul.2.1.1
  store i32 %add.2.1.1, i32* %arrayidx20.2.1.1, align 4
  br label %for.inc.2.1.1

for.inc.2.1.1:                                    ; preds = %for.inc.1.1.1
  %arrayidx11.3.1.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.3.1.1 = getelementptr inbounds [6 x i32]* %arrayidx11.3.1.1, i32 0, i64 3
  %135 = load i32* %arrayidx12.3.1.1, align 4
  %arrayidx15.3.1.1 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.1.1 = getelementptr inbounds [6 x i32]* %arrayidx15.3.1.1, i32 0, i64 1
  %136 = load i32* %arrayidx16.3.1.1, align 4
  %mul.3.1.1 = mul nsw i32 %135, %136
  %arrayidx19.3.1.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.3.1.1 = getelementptr inbounds [6 x i32]* %arrayidx19.3.1.1, i32 0, i64 1
  %137 = load i32* %arrayidx20.3.1.1, align 4
  %add.3.1.1 = add nsw i32 %137, %mul.3.1.1
  store i32 %add.3.1.1, i32* %arrayidx20.3.1.1, align 4
  br label %for.inc.3.1.1

for.inc.3.1.1:                                    ; preds = %for.inc.2.1.1
  %arrayidx11.4.1.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.4.1.1 = getelementptr inbounds [6 x i32]* %arrayidx11.4.1.1, i32 0, i64 4
  %138 = load i32* %arrayidx12.4.1.1, align 4
  %arrayidx15.4.1.1 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.1.1 = getelementptr inbounds [6 x i32]* %arrayidx15.4.1.1, i32 0, i64 1
  %139 = load i32* %arrayidx16.4.1.1, align 4
  %mul.4.1.1 = mul nsw i32 %138, %139
  %arrayidx19.4.1.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.4.1.1 = getelementptr inbounds [6 x i32]* %arrayidx19.4.1.1, i32 0, i64 1
  %140 = load i32* %arrayidx20.4.1.1, align 4
  %add.4.1.1 = add nsw i32 %140, %mul.4.1.1
  store i32 %add.4.1.1, i32* %arrayidx20.4.1.1, align 4
  br label %for.inc.4.1.1

for.inc.4.1.1:                                    ; preds = %for.inc.3.1.1
  %arrayidx11.5.1.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.5.1.1 = getelementptr inbounds [6 x i32]* %arrayidx11.5.1.1, i32 0, i64 5
  %141 = load i32* %arrayidx12.5.1.1, align 4
  %arrayidx15.5.1.1 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.1.1 = getelementptr inbounds [6 x i32]* %arrayidx15.5.1.1, i32 0, i64 1
  %142 = load i32* %arrayidx16.5.1.1, align 4
  %mul.5.1.1 = mul nsw i32 %141, %142
  %arrayidx19.5.1.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.5.1.1 = getelementptr inbounds [6 x i32]* %arrayidx19.5.1.1, i32 0, i64 1
  %143 = load i32* %arrayidx20.5.1.1, align 4
  %add.5.1.1 = add nsw i32 %143, %mul.5.1.1
  store i32 %add.5.1.1, i32* %arrayidx20.5.1.1, align 4
  br label %for.inc.5.1.1

for.inc.5.1.1:                                    ; preds = %for.inc.4.1.1
  br label %for.inc21.1.1

for.inc21.1.1:                                    ; preds = %for.inc.5.1.1
  %arrayidx.2.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx5.2.1 = getelementptr inbounds [6 x i32]* %arrayidx.2.1, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.1, align 4
  br label %for.body8.2.1

for.body8.2.1:                                    ; preds = %for.inc21.1.1
  %arrayidx11.214.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.215.1 = getelementptr inbounds [6 x i32]* %arrayidx11.214.1, i32 0, i64 0
  %144 = load i32* %arrayidx12.215.1, align 4
  %arrayidx16.216.1 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 2
  %145 = load i32* %arrayidx16.216.1, align 4
  %mul.217.1 = mul nsw i32 %144, %145
  %arrayidx19.219.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.220.1 = getelementptr inbounds [6 x i32]* %arrayidx19.219.1, i32 0, i64 2
  %146 = load i32* %arrayidx20.220.1, align 4
  %add.221.1 = add nsw i32 %146, %mul.217.1
  store i32 %add.221.1, i32* %arrayidx20.220.1, align 4
  br label %for.inc.222.1

for.inc.222.1:                                    ; preds = %for.body8.2.1
  %arrayidx11.1.2.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.1.2.1 = getelementptr inbounds [6 x i32]* %arrayidx11.1.2.1, i32 0, i64 1
  %147 = load i32* %arrayidx12.1.2.1, align 4
  %arrayidx15.1.2.1 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.2.1 = getelementptr inbounds [6 x i32]* %arrayidx15.1.2.1, i32 0, i64 2
  %148 = load i32* %arrayidx16.1.2.1, align 4
  %mul.1.2.1 = mul nsw i32 %147, %148
  %arrayidx19.1.2.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.1.2.1 = getelementptr inbounds [6 x i32]* %arrayidx19.1.2.1, i32 0, i64 2
  %149 = load i32* %arrayidx20.1.2.1, align 4
  %add.1.2.1 = add nsw i32 %149, %mul.1.2.1
  store i32 %add.1.2.1, i32* %arrayidx20.1.2.1, align 4
  br label %for.inc.1.2.1

for.inc.1.2.1:                                    ; preds = %for.inc.222.1
  %arrayidx11.2.2.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.2.2.1 = getelementptr inbounds [6 x i32]* %arrayidx11.2.2.1, i32 0, i64 2
  %150 = load i32* %arrayidx12.2.2.1, align 4
  %arrayidx15.2.2.1 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.2.1 = getelementptr inbounds [6 x i32]* %arrayidx15.2.2.1, i32 0, i64 2
  %151 = load i32* %arrayidx16.2.2.1, align 4
  %mul.2.2.1 = mul nsw i32 %150, %151
  %arrayidx19.2.2.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.2.2.1 = getelementptr inbounds [6 x i32]* %arrayidx19.2.2.1, i32 0, i64 2
  %152 = load i32* %arrayidx20.2.2.1, align 4
  %add.2.2.1 = add nsw i32 %152, %mul.2.2.1
  store i32 %add.2.2.1, i32* %arrayidx20.2.2.1, align 4
  br label %for.inc.2.2.1

for.inc.2.2.1:                                    ; preds = %for.inc.1.2.1
  %arrayidx11.3.2.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.3.2.1 = getelementptr inbounds [6 x i32]* %arrayidx11.3.2.1, i32 0, i64 3
  %153 = load i32* %arrayidx12.3.2.1, align 4
  %arrayidx15.3.2.1 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.2.1 = getelementptr inbounds [6 x i32]* %arrayidx15.3.2.1, i32 0, i64 2
  %154 = load i32* %arrayidx16.3.2.1, align 4
  %mul.3.2.1 = mul nsw i32 %153, %154
  %arrayidx19.3.2.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.3.2.1 = getelementptr inbounds [6 x i32]* %arrayidx19.3.2.1, i32 0, i64 2
  %155 = load i32* %arrayidx20.3.2.1, align 4
  %add.3.2.1 = add nsw i32 %155, %mul.3.2.1
  store i32 %add.3.2.1, i32* %arrayidx20.3.2.1, align 4
  br label %for.inc.3.2.1

for.inc.3.2.1:                                    ; preds = %for.inc.2.2.1
  %arrayidx11.4.2.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.4.2.1 = getelementptr inbounds [6 x i32]* %arrayidx11.4.2.1, i32 0, i64 4
  %156 = load i32* %arrayidx12.4.2.1, align 4
  %arrayidx15.4.2.1 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.2.1 = getelementptr inbounds [6 x i32]* %arrayidx15.4.2.1, i32 0, i64 2
  %157 = load i32* %arrayidx16.4.2.1, align 4
  %mul.4.2.1 = mul nsw i32 %156, %157
  %arrayidx19.4.2.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.4.2.1 = getelementptr inbounds [6 x i32]* %arrayidx19.4.2.1, i32 0, i64 2
  %158 = load i32* %arrayidx20.4.2.1, align 4
  %add.4.2.1 = add nsw i32 %158, %mul.4.2.1
  store i32 %add.4.2.1, i32* %arrayidx20.4.2.1, align 4
  br label %for.inc.4.2.1

for.inc.4.2.1:                                    ; preds = %for.inc.3.2.1
  %arrayidx11.5.2.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.5.2.1 = getelementptr inbounds [6 x i32]* %arrayidx11.5.2.1, i32 0, i64 5
  %159 = load i32* %arrayidx12.5.2.1, align 4
  %arrayidx15.5.2.1 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.2.1 = getelementptr inbounds [6 x i32]* %arrayidx15.5.2.1, i32 0, i64 2
  %160 = load i32* %arrayidx16.5.2.1, align 4
  %mul.5.2.1 = mul nsw i32 %159, %160
  %arrayidx19.5.2.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.5.2.1 = getelementptr inbounds [6 x i32]* %arrayidx19.5.2.1, i32 0, i64 2
  %161 = load i32* %arrayidx20.5.2.1, align 4
  %add.5.2.1 = add nsw i32 %161, %mul.5.2.1
  store i32 %add.5.2.1, i32* %arrayidx20.5.2.1, align 4
  br label %for.inc.5.2.1

for.inc.5.2.1:                                    ; preds = %for.inc.4.2.1
  br label %for.inc21.2.1

for.inc21.2.1:                                    ; preds = %for.inc.5.2.1
  %arrayidx.3.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx5.3.1 = getelementptr inbounds [6 x i32]* %arrayidx.3.1, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.1, align 4
  br label %for.body8.3.1

for.body8.3.1:                                    ; preds = %for.inc21.2.1
  %arrayidx11.324.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.325.1 = getelementptr inbounds [6 x i32]* %arrayidx11.324.1, i32 0, i64 0
  %162 = load i32* %arrayidx12.325.1, align 4
  %arrayidx16.326.1 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 3
  %163 = load i32* %arrayidx16.326.1, align 4
  %mul.327.1 = mul nsw i32 %162, %163
  %arrayidx19.329.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.330.1 = getelementptr inbounds [6 x i32]* %arrayidx19.329.1, i32 0, i64 3
  %164 = load i32* %arrayidx20.330.1, align 4
  %add.331.1 = add nsw i32 %164, %mul.327.1
  store i32 %add.331.1, i32* %arrayidx20.330.1, align 4
  br label %for.inc.332.1

for.inc.332.1:                                    ; preds = %for.body8.3.1
  %arrayidx11.1.3.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.1.3.1 = getelementptr inbounds [6 x i32]* %arrayidx11.1.3.1, i32 0, i64 1
  %165 = load i32* %arrayidx12.1.3.1, align 4
  %arrayidx15.1.3.1 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.3.1 = getelementptr inbounds [6 x i32]* %arrayidx15.1.3.1, i32 0, i64 3
  %166 = load i32* %arrayidx16.1.3.1, align 4
  %mul.1.3.1 = mul nsw i32 %165, %166
  %arrayidx19.1.3.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.1.3.1 = getelementptr inbounds [6 x i32]* %arrayidx19.1.3.1, i32 0, i64 3
  %167 = load i32* %arrayidx20.1.3.1, align 4
  %add.1.3.1 = add nsw i32 %167, %mul.1.3.1
  store i32 %add.1.3.1, i32* %arrayidx20.1.3.1, align 4
  br label %for.inc.1.3.1

for.inc.1.3.1:                                    ; preds = %for.inc.332.1
  %arrayidx11.2.3.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.2.3.1 = getelementptr inbounds [6 x i32]* %arrayidx11.2.3.1, i32 0, i64 2
  %168 = load i32* %arrayidx12.2.3.1, align 4
  %arrayidx15.2.3.1 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.3.1 = getelementptr inbounds [6 x i32]* %arrayidx15.2.3.1, i32 0, i64 3
  %169 = load i32* %arrayidx16.2.3.1, align 4
  %mul.2.3.1 = mul nsw i32 %168, %169
  %arrayidx19.2.3.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.2.3.1 = getelementptr inbounds [6 x i32]* %arrayidx19.2.3.1, i32 0, i64 3
  %170 = load i32* %arrayidx20.2.3.1, align 4
  %add.2.3.1 = add nsw i32 %170, %mul.2.3.1
  store i32 %add.2.3.1, i32* %arrayidx20.2.3.1, align 4
  br label %for.inc.2.3.1

for.inc.2.3.1:                                    ; preds = %for.inc.1.3.1
  %arrayidx11.3.3.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.3.3.1 = getelementptr inbounds [6 x i32]* %arrayidx11.3.3.1, i32 0, i64 3
  %171 = load i32* %arrayidx12.3.3.1, align 4
  %arrayidx15.3.3.1 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.3.1 = getelementptr inbounds [6 x i32]* %arrayidx15.3.3.1, i32 0, i64 3
  %172 = load i32* %arrayidx16.3.3.1, align 4
  %mul.3.3.1 = mul nsw i32 %171, %172
  %arrayidx19.3.3.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.3.3.1 = getelementptr inbounds [6 x i32]* %arrayidx19.3.3.1, i32 0, i64 3
  %173 = load i32* %arrayidx20.3.3.1, align 4
  %add.3.3.1 = add nsw i32 %173, %mul.3.3.1
  store i32 %add.3.3.1, i32* %arrayidx20.3.3.1, align 4
  br label %for.inc.3.3.1

for.inc.3.3.1:                                    ; preds = %for.inc.2.3.1
  %arrayidx11.4.3.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.4.3.1 = getelementptr inbounds [6 x i32]* %arrayidx11.4.3.1, i32 0, i64 4
  %174 = load i32* %arrayidx12.4.3.1, align 4
  %arrayidx15.4.3.1 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.3.1 = getelementptr inbounds [6 x i32]* %arrayidx15.4.3.1, i32 0, i64 3
  %175 = load i32* %arrayidx16.4.3.1, align 4
  %mul.4.3.1 = mul nsw i32 %174, %175
  %arrayidx19.4.3.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.4.3.1 = getelementptr inbounds [6 x i32]* %arrayidx19.4.3.1, i32 0, i64 3
  %176 = load i32* %arrayidx20.4.3.1, align 4
  %add.4.3.1 = add nsw i32 %176, %mul.4.3.1
  store i32 %add.4.3.1, i32* %arrayidx20.4.3.1, align 4
  br label %for.inc.4.3.1

for.inc.4.3.1:                                    ; preds = %for.inc.3.3.1
  %arrayidx11.5.3.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.5.3.1 = getelementptr inbounds [6 x i32]* %arrayidx11.5.3.1, i32 0, i64 5
  %177 = load i32* %arrayidx12.5.3.1, align 4
  %arrayidx15.5.3.1 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.3.1 = getelementptr inbounds [6 x i32]* %arrayidx15.5.3.1, i32 0, i64 3
  %178 = load i32* %arrayidx16.5.3.1, align 4
  %mul.5.3.1 = mul nsw i32 %177, %178
  %arrayidx19.5.3.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.5.3.1 = getelementptr inbounds [6 x i32]* %arrayidx19.5.3.1, i32 0, i64 3
  %179 = load i32* %arrayidx20.5.3.1, align 4
  %add.5.3.1 = add nsw i32 %179, %mul.5.3.1
  store i32 %add.5.3.1, i32* %arrayidx20.5.3.1, align 4
  br label %for.inc.5.3.1

for.inc.5.3.1:                                    ; preds = %for.inc.4.3.1
  br label %for.inc21.3.1

for.inc21.3.1:                                    ; preds = %for.inc.5.3.1
  %arrayidx.4.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx5.4.1 = getelementptr inbounds [6 x i32]* %arrayidx.4.1, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.1, align 4
  br label %for.body8.4.1

for.body8.4.1:                                    ; preds = %for.inc21.3.1
  %arrayidx11.434.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.435.1 = getelementptr inbounds [6 x i32]* %arrayidx11.434.1, i32 0, i64 0
  %180 = load i32* %arrayidx12.435.1, align 4
  %arrayidx16.436.1 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 4
  %181 = load i32* %arrayidx16.436.1, align 4
  %mul.437.1 = mul nsw i32 %180, %181
  %arrayidx19.439.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.440.1 = getelementptr inbounds [6 x i32]* %arrayidx19.439.1, i32 0, i64 4
  %182 = load i32* %arrayidx20.440.1, align 4
  %add.441.1 = add nsw i32 %182, %mul.437.1
  store i32 %add.441.1, i32* %arrayidx20.440.1, align 4
  br label %for.inc.442.1

for.inc.442.1:                                    ; preds = %for.body8.4.1
  %arrayidx11.1.4.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.1.4.1 = getelementptr inbounds [6 x i32]* %arrayidx11.1.4.1, i32 0, i64 1
  %183 = load i32* %arrayidx12.1.4.1, align 4
  %arrayidx15.1.4.1 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.4.1 = getelementptr inbounds [6 x i32]* %arrayidx15.1.4.1, i32 0, i64 4
  %184 = load i32* %arrayidx16.1.4.1, align 4
  %mul.1.4.1 = mul nsw i32 %183, %184
  %arrayidx19.1.4.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.1.4.1 = getelementptr inbounds [6 x i32]* %arrayidx19.1.4.1, i32 0, i64 4
  %185 = load i32* %arrayidx20.1.4.1, align 4
  %add.1.4.1 = add nsw i32 %185, %mul.1.4.1
  store i32 %add.1.4.1, i32* %arrayidx20.1.4.1, align 4
  br label %for.inc.1.4.1

for.inc.1.4.1:                                    ; preds = %for.inc.442.1
  %arrayidx11.2.4.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.2.4.1 = getelementptr inbounds [6 x i32]* %arrayidx11.2.4.1, i32 0, i64 2
  %186 = load i32* %arrayidx12.2.4.1, align 4
  %arrayidx15.2.4.1 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.4.1 = getelementptr inbounds [6 x i32]* %arrayidx15.2.4.1, i32 0, i64 4
  %187 = load i32* %arrayidx16.2.4.1, align 4
  %mul.2.4.1 = mul nsw i32 %186, %187
  %arrayidx19.2.4.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.2.4.1 = getelementptr inbounds [6 x i32]* %arrayidx19.2.4.1, i32 0, i64 4
  %188 = load i32* %arrayidx20.2.4.1, align 4
  %add.2.4.1 = add nsw i32 %188, %mul.2.4.1
  store i32 %add.2.4.1, i32* %arrayidx20.2.4.1, align 4
  br label %for.inc.2.4.1

for.inc.2.4.1:                                    ; preds = %for.inc.1.4.1
  %arrayidx11.3.4.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.3.4.1 = getelementptr inbounds [6 x i32]* %arrayidx11.3.4.1, i32 0, i64 3
  %189 = load i32* %arrayidx12.3.4.1, align 4
  %arrayidx15.3.4.1 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.4.1 = getelementptr inbounds [6 x i32]* %arrayidx15.3.4.1, i32 0, i64 4
  %190 = load i32* %arrayidx16.3.4.1, align 4
  %mul.3.4.1 = mul nsw i32 %189, %190
  %arrayidx19.3.4.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.3.4.1 = getelementptr inbounds [6 x i32]* %arrayidx19.3.4.1, i32 0, i64 4
  %191 = load i32* %arrayidx20.3.4.1, align 4
  %add.3.4.1 = add nsw i32 %191, %mul.3.4.1
  store i32 %add.3.4.1, i32* %arrayidx20.3.4.1, align 4
  br label %for.inc.3.4.1

for.inc.3.4.1:                                    ; preds = %for.inc.2.4.1
  %arrayidx11.4.4.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.4.4.1 = getelementptr inbounds [6 x i32]* %arrayidx11.4.4.1, i32 0, i64 4
  %192 = load i32* %arrayidx12.4.4.1, align 4
  %arrayidx15.4.4.1 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.4.1 = getelementptr inbounds [6 x i32]* %arrayidx15.4.4.1, i32 0, i64 4
  %193 = load i32* %arrayidx16.4.4.1, align 4
  %mul.4.4.1 = mul nsw i32 %192, %193
  %arrayidx19.4.4.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.4.4.1 = getelementptr inbounds [6 x i32]* %arrayidx19.4.4.1, i32 0, i64 4
  %194 = load i32* %arrayidx20.4.4.1, align 4
  %add.4.4.1 = add nsw i32 %194, %mul.4.4.1
  store i32 %add.4.4.1, i32* %arrayidx20.4.4.1, align 4
  br label %for.inc.4.4.1

for.inc.4.4.1:                                    ; preds = %for.inc.3.4.1
  %arrayidx11.5.4.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.5.4.1 = getelementptr inbounds [6 x i32]* %arrayidx11.5.4.1, i32 0, i64 5
  %195 = load i32* %arrayidx12.5.4.1, align 4
  %arrayidx15.5.4.1 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.4.1 = getelementptr inbounds [6 x i32]* %arrayidx15.5.4.1, i32 0, i64 4
  %196 = load i32* %arrayidx16.5.4.1, align 4
  %mul.5.4.1 = mul nsw i32 %195, %196
  %arrayidx19.5.4.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.5.4.1 = getelementptr inbounds [6 x i32]* %arrayidx19.5.4.1, i32 0, i64 4
  %197 = load i32* %arrayidx20.5.4.1, align 4
  %add.5.4.1 = add nsw i32 %197, %mul.5.4.1
  store i32 %add.5.4.1, i32* %arrayidx20.5.4.1, align 4
  br label %for.inc.5.4.1

for.inc.5.4.1:                                    ; preds = %for.inc.4.4.1
  br label %for.inc21.4.1

for.inc21.4.1:                                    ; preds = %for.inc.5.4.1
  %arrayidx.5.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx5.5.1 = getelementptr inbounds [6 x i32]* %arrayidx.5.1, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.1, align 4
  br label %for.body8.5.1

for.body8.5.1:                                    ; preds = %for.inc21.4.1
  %arrayidx11.544.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.545.1 = getelementptr inbounds [6 x i32]* %arrayidx11.544.1, i32 0, i64 0
  %198 = load i32* %arrayidx12.545.1, align 4
  %arrayidx16.546.1 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 5
  %199 = load i32* %arrayidx16.546.1, align 4
  %mul.547.1 = mul nsw i32 %198, %199
  %arrayidx19.549.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.550.1 = getelementptr inbounds [6 x i32]* %arrayidx19.549.1, i32 0, i64 5
  %200 = load i32* %arrayidx20.550.1, align 4
  %add.551.1 = add nsw i32 %200, %mul.547.1
  store i32 %add.551.1, i32* %arrayidx20.550.1, align 4
  br label %for.inc.552.1

for.inc.552.1:                                    ; preds = %for.body8.5.1
  %arrayidx11.1.5.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.1.5.1 = getelementptr inbounds [6 x i32]* %arrayidx11.1.5.1, i32 0, i64 1
  %201 = load i32* %arrayidx12.1.5.1, align 4
  %arrayidx15.1.5.1 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.5.1 = getelementptr inbounds [6 x i32]* %arrayidx15.1.5.1, i32 0, i64 5
  %202 = load i32* %arrayidx16.1.5.1, align 4
  %mul.1.5.1 = mul nsw i32 %201, %202
  %arrayidx19.1.5.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.1.5.1 = getelementptr inbounds [6 x i32]* %arrayidx19.1.5.1, i32 0, i64 5
  %203 = load i32* %arrayidx20.1.5.1, align 4
  %add.1.5.1 = add nsw i32 %203, %mul.1.5.1
  store i32 %add.1.5.1, i32* %arrayidx20.1.5.1, align 4
  br label %for.inc.1.5.1

for.inc.1.5.1:                                    ; preds = %for.inc.552.1
  %arrayidx11.2.5.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.2.5.1 = getelementptr inbounds [6 x i32]* %arrayidx11.2.5.1, i32 0, i64 2
  %204 = load i32* %arrayidx12.2.5.1, align 4
  %arrayidx15.2.5.1 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.5.1 = getelementptr inbounds [6 x i32]* %arrayidx15.2.5.1, i32 0, i64 5
  %205 = load i32* %arrayidx16.2.5.1, align 4
  %mul.2.5.1 = mul nsw i32 %204, %205
  %arrayidx19.2.5.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.2.5.1 = getelementptr inbounds [6 x i32]* %arrayidx19.2.5.1, i32 0, i64 5
  %206 = load i32* %arrayidx20.2.5.1, align 4
  %add.2.5.1 = add nsw i32 %206, %mul.2.5.1
  store i32 %add.2.5.1, i32* %arrayidx20.2.5.1, align 4
  br label %for.inc.2.5.1

for.inc.2.5.1:                                    ; preds = %for.inc.1.5.1
  %arrayidx11.3.5.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.3.5.1 = getelementptr inbounds [6 x i32]* %arrayidx11.3.5.1, i32 0, i64 3
  %207 = load i32* %arrayidx12.3.5.1, align 4
  %arrayidx15.3.5.1 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.5.1 = getelementptr inbounds [6 x i32]* %arrayidx15.3.5.1, i32 0, i64 5
  %208 = load i32* %arrayidx16.3.5.1, align 4
  %mul.3.5.1 = mul nsw i32 %207, %208
  %arrayidx19.3.5.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.3.5.1 = getelementptr inbounds [6 x i32]* %arrayidx19.3.5.1, i32 0, i64 5
  %209 = load i32* %arrayidx20.3.5.1, align 4
  %add.3.5.1 = add nsw i32 %209, %mul.3.5.1
  store i32 %add.3.5.1, i32* %arrayidx20.3.5.1, align 4
  br label %for.inc.3.5.1

for.inc.3.5.1:                                    ; preds = %for.inc.2.5.1
  %arrayidx11.4.5.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.4.5.1 = getelementptr inbounds [6 x i32]* %arrayidx11.4.5.1, i32 0, i64 4
  %210 = load i32* %arrayidx12.4.5.1, align 4
  %arrayidx15.4.5.1 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.5.1 = getelementptr inbounds [6 x i32]* %arrayidx15.4.5.1, i32 0, i64 5
  %211 = load i32* %arrayidx16.4.5.1, align 4
  %mul.4.5.1 = mul nsw i32 %210, %211
  %arrayidx19.4.5.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.4.5.1 = getelementptr inbounds [6 x i32]* %arrayidx19.4.5.1, i32 0, i64 5
  %212 = load i32* %arrayidx20.4.5.1, align 4
  %add.4.5.1 = add nsw i32 %212, %mul.4.5.1
  store i32 %add.4.5.1, i32* %arrayidx20.4.5.1, align 4
  br label %for.inc.4.5.1

for.inc.4.5.1:                                    ; preds = %for.inc.3.5.1
  %arrayidx11.5.5.1 = getelementptr inbounds [6 x i32]* %a, i64 1
  %arrayidx12.5.5.1 = getelementptr inbounds [6 x i32]* %arrayidx11.5.5.1, i32 0, i64 5
  %213 = load i32* %arrayidx12.5.5.1, align 4
  %arrayidx15.5.5.1 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.5.1 = getelementptr inbounds [6 x i32]* %arrayidx15.5.5.1, i32 0, i64 5
  %214 = load i32* %arrayidx16.5.5.1, align 4
  %mul.5.5.1 = mul nsw i32 %213, %214
  %arrayidx19.5.5.1 = getelementptr inbounds [6 x i32]* %c, i64 1
  %arrayidx20.5.5.1 = getelementptr inbounds [6 x i32]* %arrayidx19.5.5.1, i32 0, i64 5
  %215 = load i32* %arrayidx20.5.5.1, align 4
  %add.5.5.1 = add nsw i32 %215, %mul.5.5.1
  store i32 %add.5.5.1, i32* %arrayidx20.5.5.1, align 4
  br label %for.inc.5.5.1

for.inc.5.5.1:                                    ; preds = %for.inc.4.5.1
  br label %for.inc21.5.1

for.inc21.5.1:                                    ; preds = %for.inc.5.5.1
  br label %for.inc24.1

for.inc24.1:                                      ; preds = %for.inc21.5.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc24.1
  %arrayidx.2111 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx5.2112 = getelementptr inbounds [6 x i32]* %arrayidx.2111, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.2112, align 4
  br label %for.body8.2120

for.body8.2120:                                   ; preds = %for.body3.2
  %arrayidx11.2113 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.2114 = getelementptr inbounds [6 x i32]* %arrayidx11.2113, i32 0, i64 0
  %216 = load i32* %arrayidx12.2114, align 4
  %arrayidx16.2115 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 0
  %217 = load i32* %arrayidx16.2115, align 4
  %mul.2116 = mul nsw i32 %216, %217
  %arrayidx19.2117 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.2118 = getelementptr inbounds [6 x i32]* %arrayidx19.2117, i32 0, i64 0
  %218 = load i32* %arrayidx20.2118, align 4
  %add.2119 = add nsw i32 %218, %mul.2116
  store i32 %add.2119, i32* %arrayidx20.2118, align 4
  br label %for.inc.2129

for.inc.2129:                                     ; preds = %for.body8.2120
  %arrayidx11.1.2121 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.1.2122 = getelementptr inbounds [6 x i32]* %arrayidx11.1.2121, i32 0, i64 1
  %219 = load i32* %arrayidx12.1.2122, align 4
  %arrayidx15.1.2123 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.2124 = getelementptr inbounds [6 x i32]* %arrayidx15.1.2123, i32 0, i64 0
  %220 = load i32* %arrayidx16.1.2124, align 4
  %mul.1.2125 = mul nsw i32 %219, %220
  %arrayidx19.1.2126 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.1.2127 = getelementptr inbounds [6 x i32]* %arrayidx19.1.2126, i32 0, i64 0
  %221 = load i32* %arrayidx20.1.2127, align 4
  %add.1.2128 = add nsw i32 %221, %mul.1.2125
  store i32 %add.1.2128, i32* %arrayidx20.1.2127, align 4
  br label %for.inc.1.2138

for.inc.1.2138:                                   ; preds = %for.inc.2129
  %arrayidx11.2.2130 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.2.2131 = getelementptr inbounds [6 x i32]* %arrayidx11.2.2130, i32 0, i64 2
  %222 = load i32* %arrayidx12.2.2131, align 4
  %arrayidx15.2.2132 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.2133 = getelementptr inbounds [6 x i32]* %arrayidx15.2.2132, i32 0, i64 0
  %223 = load i32* %arrayidx16.2.2133, align 4
  %mul.2.2134 = mul nsw i32 %222, %223
  %arrayidx19.2.2135 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.2.2136 = getelementptr inbounds [6 x i32]* %arrayidx19.2.2135, i32 0, i64 0
  %224 = load i32* %arrayidx20.2.2136, align 4
  %add.2.2137 = add nsw i32 %224, %mul.2.2134
  store i32 %add.2.2137, i32* %arrayidx20.2.2136, align 4
  br label %for.inc.2.2147

for.inc.2.2147:                                   ; preds = %for.inc.1.2138
  %arrayidx11.3.2139 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.3.2140 = getelementptr inbounds [6 x i32]* %arrayidx11.3.2139, i32 0, i64 3
  %225 = load i32* %arrayidx12.3.2140, align 4
  %arrayidx15.3.2141 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.2142 = getelementptr inbounds [6 x i32]* %arrayidx15.3.2141, i32 0, i64 0
  %226 = load i32* %arrayidx16.3.2142, align 4
  %mul.3.2143 = mul nsw i32 %225, %226
  %arrayidx19.3.2144 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.3.2145 = getelementptr inbounds [6 x i32]* %arrayidx19.3.2144, i32 0, i64 0
  %227 = load i32* %arrayidx20.3.2145, align 4
  %add.3.2146 = add nsw i32 %227, %mul.3.2143
  store i32 %add.3.2146, i32* %arrayidx20.3.2145, align 4
  br label %for.inc.3.2156

for.inc.3.2156:                                   ; preds = %for.inc.2.2147
  %arrayidx11.4.2148 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.4.2149 = getelementptr inbounds [6 x i32]* %arrayidx11.4.2148, i32 0, i64 4
  %228 = load i32* %arrayidx12.4.2149, align 4
  %arrayidx15.4.2150 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.2151 = getelementptr inbounds [6 x i32]* %arrayidx15.4.2150, i32 0, i64 0
  %229 = load i32* %arrayidx16.4.2151, align 4
  %mul.4.2152 = mul nsw i32 %228, %229
  %arrayidx19.4.2153 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.4.2154 = getelementptr inbounds [6 x i32]* %arrayidx19.4.2153, i32 0, i64 0
  %230 = load i32* %arrayidx20.4.2154, align 4
  %add.4.2155 = add nsw i32 %230, %mul.4.2152
  store i32 %add.4.2155, i32* %arrayidx20.4.2154, align 4
  br label %for.inc.4.2165

for.inc.4.2165:                                   ; preds = %for.inc.3.2156
  %arrayidx11.5.2157 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.5.2158 = getelementptr inbounds [6 x i32]* %arrayidx11.5.2157, i32 0, i64 5
  %231 = load i32* %arrayidx12.5.2158, align 4
  %arrayidx15.5.2159 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.2160 = getelementptr inbounds [6 x i32]* %arrayidx15.5.2159, i32 0, i64 0
  %232 = load i32* %arrayidx16.5.2160, align 4
  %mul.5.2161 = mul nsw i32 %231, %232
  %arrayidx19.5.2162 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.5.2163 = getelementptr inbounds [6 x i32]* %arrayidx19.5.2162, i32 0, i64 0
  %233 = load i32* %arrayidx20.5.2163, align 4
  %add.5.2164 = add nsw i32 %233, %mul.5.2161
  store i32 %add.5.2164, i32* %arrayidx20.5.2163, align 4
  br label %for.inc.5.2166

for.inc.5.2166:                                   ; preds = %for.inc.4.2165
  br label %for.inc21.2167

for.inc21.2167:                                   ; preds = %for.inc.5.2166
  %arrayidx.1.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx5.1.2 = getelementptr inbounds [6 x i32]* %arrayidx.1.2, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.2, align 4
  br label %for.body8.1.2

for.body8.1.2:                                    ; preds = %for.inc21.2167
  %arrayidx11.14.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.15.2 = getelementptr inbounds [6 x i32]* %arrayidx11.14.2, i32 0, i64 0
  %234 = load i32* %arrayidx12.15.2, align 4
  %arrayidx16.16.2 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 1
  %235 = load i32* %arrayidx16.16.2, align 4
  %mul.17.2 = mul nsw i32 %234, %235
  %arrayidx19.19.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.110.2 = getelementptr inbounds [6 x i32]* %arrayidx19.19.2, i32 0, i64 1
  %236 = load i32* %arrayidx20.110.2, align 4
  %add.111.2 = add nsw i32 %236, %mul.17.2
  store i32 %add.111.2, i32* %arrayidx20.110.2, align 4
  br label %for.inc.112.2

for.inc.112.2:                                    ; preds = %for.body8.1.2
  %arrayidx11.1.1.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.1.1.2 = getelementptr inbounds [6 x i32]* %arrayidx11.1.1.2, i32 0, i64 1
  %237 = load i32* %arrayidx12.1.1.2, align 4
  %arrayidx15.1.1.2 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.1.2 = getelementptr inbounds [6 x i32]* %arrayidx15.1.1.2, i32 0, i64 1
  %238 = load i32* %arrayidx16.1.1.2, align 4
  %mul.1.1.2 = mul nsw i32 %237, %238
  %arrayidx19.1.1.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.1.1.2 = getelementptr inbounds [6 x i32]* %arrayidx19.1.1.2, i32 0, i64 1
  %239 = load i32* %arrayidx20.1.1.2, align 4
  %add.1.1.2 = add nsw i32 %239, %mul.1.1.2
  store i32 %add.1.1.2, i32* %arrayidx20.1.1.2, align 4
  br label %for.inc.1.1.2

for.inc.1.1.2:                                    ; preds = %for.inc.112.2
  %arrayidx11.2.1.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.2.1.2 = getelementptr inbounds [6 x i32]* %arrayidx11.2.1.2, i32 0, i64 2
  %240 = load i32* %arrayidx12.2.1.2, align 4
  %arrayidx15.2.1.2 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.1.2 = getelementptr inbounds [6 x i32]* %arrayidx15.2.1.2, i32 0, i64 1
  %241 = load i32* %arrayidx16.2.1.2, align 4
  %mul.2.1.2 = mul nsw i32 %240, %241
  %arrayidx19.2.1.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.2.1.2 = getelementptr inbounds [6 x i32]* %arrayidx19.2.1.2, i32 0, i64 1
  %242 = load i32* %arrayidx20.2.1.2, align 4
  %add.2.1.2 = add nsw i32 %242, %mul.2.1.2
  store i32 %add.2.1.2, i32* %arrayidx20.2.1.2, align 4
  br label %for.inc.2.1.2

for.inc.2.1.2:                                    ; preds = %for.inc.1.1.2
  %arrayidx11.3.1.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.3.1.2 = getelementptr inbounds [6 x i32]* %arrayidx11.3.1.2, i32 0, i64 3
  %243 = load i32* %arrayidx12.3.1.2, align 4
  %arrayidx15.3.1.2 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.1.2 = getelementptr inbounds [6 x i32]* %arrayidx15.3.1.2, i32 0, i64 1
  %244 = load i32* %arrayidx16.3.1.2, align 4
  %mul.3.1.2 = mul nsw i32 %243, %244
  %arrayidx19.3.1.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.3.1.2 = getelementptr inbounds [6 x i32]* %arrayidx19.3.1.2, i32 0, i64 1
  %245 = load i32* %arrayidx20.3.1.2, align 4
  %add.3.1.2 = add nsw i32 %245, %mul.3.1.2
  store i32 %add.3.1.2, i32* %arrayidx20.3.1.2, align 4
  br label %for.inc.3.1.2

for.inc.3.1.2:                                    ; preds = %for.inc.2.1.2
  %arrayidx11.4.1.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.4.1.2 = getelementptr inbounds [6 x i32]* %arrayidx11.4.1.2, i32 0, i64 4
  %246 = load i32* %arrayidx12.4.1.2, align 4
  %arrayidx15.4.1.2 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.1.2 = getelementptr inbounds [6 x i32]* %arrayidx15.4.1.2, i32 0, i64 1
  %247 = load i32* %arrayidx16.4.1.2, align 4
  %mul.4.1.2 = mul nsw i32 %246, %247
  %arrayidx19.4.1.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.4.1.2 = getelementptr inbounds [6 x i32]* %arrayidx19.4.1.2, i32 0, i64 1
  %248 = load i32* %arrayidx20.4.1.2, align 4
  %add.4.1.2 = add nsw i32 %248, %mul.4.1.2
  store i32 %add.4.1.2, i32* %arrayidx20.4.1.2, align 4
  br label %for.inc.4.1.2

for.inc.4.1.2:                                    ; preds = %for.inc.3.1.2
  %arrayidx11.5.1.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.5.1.2 = getelementptr inbounds [6 x i32]* %arrayidx11.5.1.2, i32 0, i64 5
  %249 = load i32* %arrayidx12.5.1.2, align 4
  %arrayidx15.5.1.2 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.1.2 = getelementptr inbounds [6 x i32]* %arrayidx15.5.1.2, i32 0, i64 1
  %250 = load i32* %arrayidx16.5.1.2, align 4
  %mul.5.1.2 = mul nsw i32 %249, %250
  %arrayidx19.5.1.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.5.1.2 = getelementptr inbounds [6 x i32]* %arrayidx19.5.1.2, i32 0, i64 1
  %251 = load i32* %arrayidx20.5.1.2, align 4
  %add.5.1.2 = add nsw i32 %251, %mul.5.1.2
  store i32 %add.5.1.2, i32* %arrayidx20.5.1.2, align 4
  br label %for.inc.5.1.2

for.inc.5.1.2:                                    ; preds = %for.inc.4.1.2
  br label %for.inc21.1.2

for.inc21.1.2:                                    ; preds = %for.inc.5.1.2
  %arrayidx.2.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx5.2.2 = getelementptr inbounds [6 x i32]* %arrayidx.2.2, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.2, align 4
  br label %for.body8.2.2

for.body8.2.2:                                    ; preds = %for.inc21.1.2
  %arrayidx11.214.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.215.2 = getelementptr inbounds [6 x i32]* %arrayidx11.214.2, i32 0, i64 0
  %252 = load i32* %arrayidx12.215.2, align 4
  %arrayidx16.216.2 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 2
  %253 = load i32* %arrayidx16.216.2, align 4
  %mul.217.2 = mul nsw i32 %252, %253
  %arrayidx19.219.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.220.2 = getelementptr inbounds [6 x i32]* %arrayidx19.219.2, i32 0, i64 2
  %254 = load i32* %arrayidx20.220.2, align 4
  %add.221.2 = add nsw i32 %254, %mul.217.2
  store i32 %add.221.2, i32* %arrayidx20.220.2, align 4
  br label %for.inc.222.2

for.inc.222.2:                                    ; preds = %for.body8.2.2
  %arrayidx11.1.2.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.1.2.2 = getelementptr inbounds [6 x i32]* %arrayidx11.1.2.2, i32 0, i64 1
  %255 = load i32* %arrayidx12.1.2.2, align 4
  %arrayidx15.1.2.2 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.2.2 = getelementptr inbounds [6 x i32]* %arrayidx15.1.2.2, i32 0, i64 2
  %256 = load i32* %arrayidx16.1.2.2, align 4
  %mul.1.2.2 = mul nsw i32 %255, %256
  %arrayidx19.1.2.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.1.2.2 = getelementptr inbounds [6 x i32]* %arrayidx19.1.2.2, i32 0, i64 2
  %257 = load i32* %arrayidx20.1.2.2, align 4
  %add.1.2.2 = add nsw i32 %257, %mul.1.2.2
  store i32 %add.1.2.2, i32* %arrayidx20.1.2.2, align 4
  br label %for.inc.1.2.2

for.inc.1.2.2:                                    ; preds = %for.inc.222.2
  %arrayidx11.2.2.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.2.2.2 = getelementptr inbounds [6 x i32]* %arrayidx11.2.2.2, i32 0, i64 2
  %258 = load i32* %arrayidx12.2.2.2, align 4
  %arrayidx15.2.2.2 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.2.2 = getelementptr inbounds [6 x i32]* %arrayidx15.2.2.2, i32 0, i64 2
  %259 = load i32* %arrayidx16.2.2.2, align 4
  %mul.2.2.2 = mul nsw i32 %258, %259
  %arrayidx19.2.2.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.2.2.2 = getelementptr inbounds [6 x i32]* %arrayidx19.2.2.2, i32 0, i64 2
  %260 = load i32* %arrayidx20.2.2.2, align 4
  %add.2.2.2 = add nsw i32 %260, %mul.2.2.2
  store i32 %add.2.2.2, i32* %arrayidx20.2.2.2, align 4
  br label %for.inc.2.2.2

for.inc.2.2.2:                                    ; preds = %for.inc.1.2.2
  %arrayidx11.3.2.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.3.2.2 = getelementptr inbounds [6 x i32]* %arrayidx11.3.2.2, i32 0, i64 3
  %261 = load i32* %arrayidx12.3.2.2, align 4
  %arrayidx15.3.2.2 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.2.2 = getelementptr inbounds [6 x i32]* %arrayidx15.3.2.2, i32 0, i64 2
  %262 = load i32* %arrayidx16.3.2.2, align 4
  %mul.3.2.2 = mul nsw i32 %261, %262
  %arrayidx19.3.2.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.3.2.2 = getelementptr inbounds [6 x i32]* %arrayidx19.3.2.2, i32 0, i64 2
  %263 = load i32* %arrayidx20.3.2.2, align 4
  %add.3.2.2 = add nsw i32 %263, %mul.3.2.2
  store i32 %add.3.2.2, i32* %arrayidx20.3.2.2, align 4
  br label %for.inc.3.2.2

for.inc.3.2.2:                                    ; preds = %for.inc.2.2.2
  %arrayidx11.4.2.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.4.2.2 = getelementptr inbounds [6 x i32]* %arrayidx11.4.2.2, i32 0, i64 4
  %264 = load i32* %arrayidx12.4.2.2, align 4
  %arrayidx15.4.2.2 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.2.2 = getelementptr inbounds [6 x i32]* %arrayidx15.4.2.2, i32 0, i64 2
  %265 = load i32* %arrayidx16.4.2.2, align 4
  %mul.4.2.2 = mul nsw i32 %264, %265
  %arrayidx19.4.2.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.4.2.2 = getelementptr inbounds [6 x i32]* %arrayidx19.4.2.2, i32 0, i64 2
  %266 = load i32* %arrayidx20.4.2.2, align 4
  %add.4.2.2 = add nsw i32 %266, %mul.4.2.2
  store i32 %add.4.2.2, i32* %arrayidx20.4.2.2, align 4
  br label %for.inc.4.2.2

for.inc.4.2.2:                                    ; preds = %for.inc.3.2.2
  %arrayidx11.5.2.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.5.2.2 = getelementptr inbounds [6 x i32]* %arrayidx11.5.2.2, i32 0, i64 5
  %267 = load i32* %arrayidx12.5.2.2, align 4
  %arrayidx15.5.2.2 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.2.2 = getelementptr inbounds [6 x i32]* %arrayidx15.5.2.2, i32 0, i64 2
  %268 = load i32* %arrayidx16.5.2.2, align 4
  %mul.5.2.2 = mul nsw i32 %267, %268
  %arrayidx19.5.2.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.5.2.2 = getelementptr inbounds [6 x i32]* %arrayidx19.5.2.2, i32 0, i64 2
  %269 = load i32* %arrayidx20.5.2.2, align 4
  %add.5.2.2 = add nsw i32 %269, %mul.5.2.2
  store i32 %add.5.2.2, i32* %arrayidx20.5.2.2, align 4
  br label %for.inc.5.2.2

for.inc.5.2.2:                                    ; preds = %for.inc.4.2.2
  br label %for.inc21.2.2

for.inc21.2.2:                                    ; preds = %for.inc.5.2.2
  %arrayidx.3.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx5.3.2 = getelementptr inbounds [6 x i32]* %arrayidx.3.2, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.2, align 4
  br label %for.body8.3.2

for.body8.3.2:                                    ; preds = %for.inc21.2.2
  %arrayidx11.324.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.325.2 = getelementptr inbounds [6 x i32]* %arrayidx11.324.2, i32 0, i64 0
  %270 = load i32* %arrayidx12.325.2, align 4
  %arrayidx16.326.2 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 3
  %271 = load i32* %arrayidx16.326.2, align 4
  %mul.327.2 = mul nsw i32 %270, %271
  %arrayidx19.329.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.330.2 = getelementptr inbounds [6 x i32]* %arrayidx19.329.2, i32 0, i64 3
  %272 = load i32* %arrayidx20.330.2, align 4
  %add.331.2 = add nsw i32 %272, %mul.327.2
  store i32 %add.331.2, i32* %arrayidx20.330.2, align 4
  br label %for.inc.332.2

for.inc.332.2:                                    ; preds = %for.body8.3.2
  %arrayidx11.1.3.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.1.3.2 = getelementptr inbounds [6 x i32]* %arrayidx11.1.3.2, i32 0, i64 1
  %273 = load i32* %arrayidx12.1.3.2, align 4
  %arrayidx15.1.3.2 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.3.2 = getelementptr inbounds [6 x i32]* %arrayidx15.1.3.2, i32 0, i64 3
  %274 = load i32* %arrayidx16.1.3.2, align 4
  %mul.1.3.2 = mul nsw i32 %273, %274
  %arrayidx19.1.3.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.1.3.2 = getelementptr inbounds [6 x i32]* %arrayidx19.1.3.2, i32 0, i64 3
  %275 = load i32* %arrayidx20.1.3.2, align 4
  %add.1.3.2 = add nsw i32 %275, %mul.1.3.2
  store i32 %add.1.3.2, i32* %arrayidx20.1.3.2, align 4
  br label %for.inc.1.3.2

for.inc.1.3.2:                                    ; preds = %for.inc.332.2
  %arrayidx11.2.3.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.2.3.2 = getelementptr inbounds [6 x i32]* %arrayidx11.2.3.2, i32 0, i64 2
  %276 = load i32* %arrayidx12.2.3.2, align 4
  %arrayidx15.2.3.2 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.3.2 = getelementptr inbounds [6 x i32]* %arrayidx15.2.3.2, i32 0, i64 3
  %277 = load i32* %arrayidx16.2.3.2, align 4
  %mul.2.3.2 = mul nsw i32 %276, %277
  %arrayidx19.2.3.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.2.3.2 = getelementptr inbounds [6 x i32]* %arrayidx19.2.3.2, i32 0, i64 3
  %278 = load i32* %arrayidx20.2.3.2, align 4
  %add.2.3.2 = add nsw i32 %278, %mul.2.3.2
  store i32 %add.2.3.2, i32* %arrayidx20.2.3.2, align 4
  br label %for.inc.2.3.2

for.inc.2.3.2:                                    ; preds = %for.inc.1.3.2
  %arrayidx11.3.3.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.3.3.2 = getelementptr inbounds [6 x i32]* %arrayidx11.3.3.2, i32 0, i64 3
  %279 = load i32* %arrayidx12.3.3.2, align 4
  %arrayidx15.3.3.2 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.3.2 = getelementptr inbounds [6 x i32]* %arrayidx15.3.3.2, i32 0, i64 3
  %280 = load i32* %arrayidx16.3.3.2, align 4
  %mul.3.3.2 = mul nsw i32 %279, %280
  %arrayidx19.3.3.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.3.3.2 = getelementptr inbounds [6 x i32]* %arrayidx19.3.3.2, i32 0, i64 3
  %281 = load i32* %arrayidx20.3.3.2, align 4
  %add.3.3.2 = add nsw i32 %281, %mul.3.3.2
  store i32 %add.3.3.2, i32* %arrayidx20.3.3.2, align 4
  br label %for.inc.3.3.2

for.inc.3.3.2:                                    ; preds = %for.inc.2.3.2
  %arrayidx11.4.3.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.4.3.2 = getelementptr inbounds [6 x i32]* %arrayidx11.4.3.2, i32 0, i64 4
  %282 = load i32* %arrayidx12.4.3.2, align 4
  %arrayidx15.4.3.2 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.3.2 = getelementptr inbounds [6 x i32]* %arrayidx15.4.3.2, i32 0, i64 3
  %283 = load i32* %arrayidx16.4.3.2, align 4
  %mul.4.3.2 = mul nsw i32 %282, %283
  %arrayidx19.4.3.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.4.3.2 = getelementptr inbounds [6 x i32]* %arrayidx19.4.3.2, i32 0, i64 3
  %284 = load i32* %arrayidx20.4.3.2, align 4
  %add.4.3.2 = add nsw i32 %284, %mul.4.3.2
  store i32 %add.4.3.2, i32* %arrayidx20.4.3.2, align 4
  br label %for.inc.4.3.2

for.inc.4.3.2:                                    ; preds = %for.inc.3.3.2
  %arrayidx11.5.3.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.5.3.2 = getelementptr inbounds [6 x i32]* %arrayidx11.5.3.2, i32 0, i64 5
  %285 = load i32* %arrayidx12.5.3.2, align 4
  %arrayidx15.5.3.2 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.3.2 = getelementptr inbounds [6 x i32]* %arrayidx15.5.3.2, i32 0, i64 3
  %286 = load i32* %arrayidx16.5.3.2, align 4
  %mul.5.3.2 = mul nsw i32 %285, %286
  %arrayidx19.5.3.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.5.3.2 = getelementptr inbounds [6 x i32]* %arrayidx19.5.3.2, i32 0, i64 3
  %287 = load i32* %arrayidx20.5.3.2, align 4
  %add.5.3.2 = add nsw i32 %287, %mul.5.3.2
  store i32 %add.5.3.2, i32* %arrayidx20.5.3.2, align 4
  br label %for.inc.5.3.2

for.inc.5.3.2:                                    ; preds = %for.inc.4.3.2
  br label %for.inc21.3.2

for.inc21.3.2:                                    ; preds = %for.inc.5.3.2
  %arrayidx.4.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx5.4.2 = getelementptr inbounds [6 x i32]* %arrayidx.4.2, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.2, align 4
  br label %for.body8.4.2

for.body8.4.2:                                    ; preds = %for.inc21.3.2
  %arrayidx11.434.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.435.2 = getelementptr inbounds [6 x i32]* %arrayidx11.434.2, i32 0, i64 0
  %288 = load i32* %arrayidx12.435.2, align 4
  %arrayidx16.436.2 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 4
  %289 = load i32* %arrayidx16.436.2, align 4
  %mul.437.2 = mul nsw i32 %288, %289
  %arrayidx19.439.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.440.2 = getelementptr inbounds [6 x i32]* %arrayidx19.439.2, i32 0, i64 4
  %290 = load i32* %arrayidx20.440.2, align 4
  %add.441.2 = add nsw i32 %290, %mul.437.2
  store i32 %add.441.2, i32* %arrayidx20.440.2, align 4
  br label %for.inc.442.2

for.inc.442.2:                                    ; preds = %for.body8.4.2
  %arrayidx11.1.4.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.1.4.2 = getelementptr inbounds [6 x i32]* %arrayidx11.1.4.2, i32 0, i64 1
  %291 = load i32* %arrayidx12.1.4.2, align 4
  %arrayidx15.1.4.2 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.4.2 = getelementptr inbounds [6 x i32]* %arrayidx15.1.4.2, i32 0, i64 4
  %292 = load i32* %arrayidx16.1.4.2, align 4
  %mul.1.4.2 = mul nsw i32 %291, %292
  %arrayidx19.1.4.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.1.4.2 = getelementptr inbounds [6 x i32]* %arrayidx19.1.4.2, i32 0, i64 4
  %293 = load i32* %arrayidx20.1.4.2, align 4
  %add.1.4.2 = add nsw i32 %293, %mul.1.4.2
  store i32 %add.1.4.2, i32* %arrayidx20.1.4.2, align 4
  br label %for.inc.1.4.2

for.inc.1.4.2:                                    ; preds = %for.inc.442.2
  %arrayidx11.2.4.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.2.4.2 = getelementptr inbounds [6 x i32]* %arrayidx11.2.4.2, i32 0, i64 2
  %294 = load i32* %arrayidx12.2.4.2, align 4
  %arrayidx15.2.4.2 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.4.2 = getelementptr inbounds [6 x i32]* %arrayidx15.2.4.2, i32 0, i64 4
  %295 = load i32* %arrayidx16.2.4.2, align 4
  %mul.2.4.2 = mul nsw i32 %294, %295
  %arrayidx19.2.4.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.2.4.2 = getelementptr inbounds [6 x i32]* %arrayidx19.2.4.2, i32 0, i64 4
  %296 = load i32* %arrayidx20.2.4.2, align 4
  %add.2.4.2 = add nsw i32 %296, %mul.2.4.2
  store i32 %add.2.4.2, i32* %arrayidx20.2.4.2, align 4
  br label %for.inc.2.4.2

for.inc.2.4.2:                                    ; preds = %for.inc.1.4.2
  %arrayidx11.3.4.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.3.4.2 = getelementptr inbounds [6 x i32]* %arrayidx11.3.4.2, i32 0, i64 3
  %297 = load i32* %arrayidx12.3.4.2, align 4
  %arrayidx15.3.4.2 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.4.2 = getelementptr inbounds [6 x i32]* %arrayidx15.3.4.2, i32 0, i64 4
  %298 = load i32* %arrayidx16.3.4.2, align 4
  %mul.3.4.2 = mul nsw i32 %297, %298
  %arrayidx19.3.4.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.3.4.2 = getelementptr inbounds [6 x i32]* %arrayidx19.3.4.2, i32 0, i64 4
  %299 = load i32* %arrayidx20.3.4.2, align 4
  %add.3.4.2 = add nsw i32 %299, %mul.3.4.2
  store i32 %add.3.4.2, i32* %arrayidx20.3.4.2, align 4
  br label %for.inc.3.4.2

for.inc.3.4.2:                                    ; preds = %for.inc.2.4.2
  %arrayidx11.4.4.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.4.4.2 = getelementptr inbounds [6 x i32]* %arrayidx11.4.4.2, i32 0, i64 4
  %300 = load i32* %arrayidx12.4.4.2, align 4
  %arrayidx15.4.4.2 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.4.2 = getelementptr inbounds [6 x i32]* %arrayidx15.4.4.2, i32 0, i64 4
  %301 = load i32* %arrayidx16.4.4.2, align 4
  %mul.4.4.2 = mul nsw i32 %300, %301
  %arrayidx19.4.4.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.4.4.2 = getelementptr inbounds [6 x i32]* %arrayidx19.4.4.2, i32 0, i64 4
  %302 = load i32* %arrayidx20.4.4.2, align 4
  %add.4.4.2 = add nsw i32 %302, %mul.4.4.2
  store i32 %add.4.4.2, i32* %arrayidx20.4.4.2, align 4
  br label %for.inc.4.4.2

for.inc.4.4.2:                                    ; preds = %for.inc.3.4.2
  %arrayidx11.5.4.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.5.4.2 = getelementptr inbounds [6 x i32]* %arrayidx11.5.4.2, i32 0, i64 5
  %303 = load i32* %arrayidx12.5.4.2, align 4
  %arrayidx15.5.4.2 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.4.2 = getelementptr inbounds [6 x i32]* %arrayidx15.5.4.2, i32 0, i64 4
  %304 = load i32* %arrayidx16.5.4.2, align 4
  %mul.5.4.2 = mul nsw i32 %303, %304
  %arrayidx19.5.4.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.5.4.2 = getelementptr inbounds [6 x i32]* %arrayidx19.5.4.2, i32 0, i64 4
  %305 = load i32* %arrayidx20.5.4.2, align 4
  %add.5.4.2 = add nsw i32 %305, %mul.5.4.2
  store i32 %add.5.4.2, i32* %arrayidx20.5.4.2, align 4
  br label %for.inc.5.4.2

for.inc.5.4.2:                                    ; preds = %for.inc.4.4.2
  br label %for.inc21.4.2

for.inc21.4.2:                                    ; preds = %for.inc.5.4.2
  %arrayidx.5.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx5.5.2 = getelementptr inbounds [6 x i32]* %arrayidx.5.2, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.2, align 4
  br label %for.body8.5.2

for.body8.5.2:                                    ; preds = %for.inc21.4.2
  %arrayidx11.544.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.545.2 = getelementptr inbounds [6 x i32]* %arrayidx11.544.2, i32 0, i64 0
  %306 = load i32* %arrayidx12.545.2, align 4
  %arrayidx16.546.2 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 5
  %307 = load i32* %arrayidx16.546.2, align 4
  %mul.547.2 = mul nsw i32 %306, %307
  %arrayidx19.549.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.550.2 = getelementptr inbounds [6 x i32]* %arrayidx19.549.2, i32 0, i64 5
  %308 = load i32* %arrayidx20.550.2, align 4
  %add.551.2 = add nsw i32 %308, %mul.547.2
  store i32 %add.551.2, i32* %arrayidx20.550.2, align 4
  br label %for.inc.552.2

for.inc.552.2:                                    ; preds = %for.body8.5.2
  %arrayidx11.1.5.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.1.5.2 = getelementptr inbounds [6 x i32]* %arrayidx11.1.5.2, i32 0, i64 1
  %309 = load i32* %arrayidx12.1.5.2, align 4
  %arrayidx15.1.5.2 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.5.2 = getelementptr inbounds [6 x i32]* %arrayidx15.1.5.2, i32 0, i64 5
  %310 = load i32* %arrayidx16.1.5.2, align 4
  %mul.1.5.2 = mul nsw i32 %309, %310
  %arrayidx19.1.5.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.1.5.2 = getelementptr inbounds [6 x i32]* %arrayidx19.1.5.2, i32 0, i64 5
  %311 = load i32* %arrayidx20.1.5.2, align 4
  %add.1.5.2 = add nsw i32 %311, %mul.1.5.2
  store i32 %add.1.5.2, i32* %arrayidx20.1.5.2, align 4
  br label %for.inc.1.5.2

for.inc.1.5.2:                                    ; preds = %for.inc.552.2
  %arrayidx11.2.5.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.2.5.2 = getelementptr inbounds [6 x i32]* %arrayidx11.2.5.2, i32 0, i64 2
  %312 = load i32* %arrayidx12.2.5.2, align 4
  %arrayidx15.2.5.2 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.5.2 = getelementptr inbounds [6 x i32]* %arrayidx15.2.5.2, i32 0, i64 5
  %313 = load i32* %arrayidx16.2.5.2, align 4
  %mul.2.5.2 = mul nsw i32 %312, %313
  %arrayidx19.2.5.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.2.5.2 = getelementptr inbounds [6 x i32]* %arrayidx19.2.5.2, i32 0, i64 5
  %314 = load i32* %arrayidx20.2.5.2, align 4
  %add.2.5.2 = add nsw i32 %314, %mul.2.5.2
  store i32 %add.2.5.2, i32* %arrayidx20.2.5.2, align 4
  br label %for.inc.2.5.2

for.inc.2.5.2:                                    ; preds = %for.inc.1.5.2
  %arrayidx11.3.5.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.3.5.2 = getelementptr inbounds [6 x i32]* %arrayidx11.3.5.2, i32 0, i64 3
  %315 = load i32* %arrayidx12.3.5.2, align 4
  %arrayidx15.3.5.2 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.5.2 = getelementptr inbounds [6 x i32]* %arrayidx15.3.5.2, i32 0, i64 5
  %316 = load i32* %arrayidx16.3.5.2, align 4
  %mul.3.5.2 = mul nsw i32 %315, %316
  %arrayidx19.3.5.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.3.5.2 = getelementptr inbounds [6 x i32]* %arrayidx19.3.5.2, i32 0, i64 5
  %317 = load i32* %arrayidx20.3.5.2, align 4
  %add.3.5.2 = add nsw i32 %317, %mul.3.5.2
  store i32 %add.3.5.2, i32* %arrayidx20.3.5.2, align 4
  br label %for.inc.3.5.2

for.inc.3.5.2:                                    ; preds = %for.inc.2.5.2
  %arrayidx11.4.5.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.4.5.2 = getelementptr inbounds [6 x i32]* %arrayidx11.4.5.2, i32 0, i64 4
  %318 = load i32* %arrayidx12.4.5.2, align 4
  %arrayidx15.4.5.2 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.5.2 = getelementptr inbounds [6 x i32]* %arrayidx15.4.5.2, i32 0, i64 5
  %319 = load i32* %arrayidx16.4.5.2, align 4
  %mul.4.5.2 = mul nsw i32 %318, %319
  %arrayidx19.4.5.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.4.5.2 = getelementptr inbounds [6 x i32]* %arrayidx19.4.5.2, i32 0, i64 5
  %320 = load i32* %arrayidx20.4.5.2, align 4
  %add.4.5.2 = add nsw i32 %320, %mul.4.5.2
  store i32 %add.4.5.2, i32* %arrayidx20.4.5.2, align 4
  br label %for.inc.4.5.2

for.inc.4.5.2:                                    ; preds = %for.inc.3.5.2
  %arrayidx11.5.5.2 = getelementptr inbounds [6 x i32]* %a, i64 2
  %arrayidx12.5.5.2 = getelementptr inbounds [6 x i32]* %arrayidx11.5.5.2, i32 0, i64 5
  %321 = load i32* %arrayidx12.5.5.2, align 4
  %arrayidx15.5.5.2 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.5.2 = getelementptr inbounds [6 x i32]* %arrayidx15.5.5.2, i32 0, i64 5
  %322 = load i32* %arrayidx16.5.5.2, align 4
  %mul.5.5.2 = mul nsw i32 %321, %322
  %arrayidx19.5.5.2 = getelementptr inbounds [6 x i32]* %c, i64 2
  %arrayidx20.5.5.2 = getelementptr inbounds [6 x i32]* %arrayidx19.5.5.2, i32 0, i64 5
  %323 = load i32* %arrayidx20.5.5.2, align 4
  %add.5.5.2 = add nsw i32 %323, %mul.5.5.2
  store i32 %add.5.5.2, i32* %arrayidx20.5.5.2, align 4
  br label %for.inc.5.5.2

for.inc.5.5.2:                                    ; preds = %for.inc.4.5.2
  br label %for.inc21.5.2

for.inc21.5.2:                                    ; preds = %for.inc.5.5.2
  br label %for.inc24.2

for.inc24.2:                                      ; preds = %for.inc21.5.2
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.inc24.2
  %arrayidx.3168 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx5.3169 = getelementptr inbounds [6 x i32]* %arrayidx.3168, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.3169, align 4
  br label %for.body8.3177

for.body8.3177:                                   ; preds = %for.body3.3
  %arrayidx11.3170 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.3171 = getelementptr inbounds [6 x i32]* %arrayidx11.3170, i32 0, i64 0
  %324 = load i32* %arrayidx12.3171, align 4
  %arrayidx16.3172 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 0
  %325 = load i32* %arrayidx16.3172, align 4
  %mul.3173 = mul nsw i32 %324, %325
  %arrayidx19.3174 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.3175 = getelementptr inbounds [6 x i32]* %arrayidx19.3174, i32 0, i64 0
  %326 = load i32* %arrayidx20.3175, align 4
  %add.3176 = add nsw i32 %326, %mul.3173
  store i32 %add.3176, i32* %arrayidx20.3175, align 4
  br label %for.inc.3186

for.inc.3186:                                     ; preds = %for.body8.3177
  %arrayidx11.1.3178 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.1.3179 = getelementptr inbounds [6 x i32]* %arrayidx11.1.3178, i32 0, i64 1
  %327 = load i32* %arrayidx12.1.3179, align 4
  %arrayidx15.1.3180 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.3181 = getelementptr inbounds [6 x i32]* %arrayidx15.1.3180, i32 0, i64 0
  %328 = load i32* %arrayidx16.1.3181, align 4
  %mul.1.3182 = mul nsw i32 %327, %328
  %arrayidx19.1.3183 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.1.3184 = getelementptr inbounds [6 x i32]* %arrayidx19.1.3183, i32 0, i64 0
  %329 = load i32* %arrayidx20.1.3184, align 4
  %add.1.3185 = add nsw i32 %329, %mul.1.3182
  store i32 %add.1.3185, i32* %arrayidx20.1.3184, align 4
  br label %for.inc.1.3195

for.inc.1.3195:                                   ; preds = %for.inc.3186
  %arrayidx11.2.3187 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.2.3188 = getelementptr inbounds [6 x i32]* %arrayidx11.2.3187, i32 0, i64 2
  %330 = load i32* %arrayidx12.2.3188, align 4
  %arrayidx15.2.3189 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.3190 = getelementptr inbounds [6 x i32]* %arrayidx15.2.3189, i32 0, i64 0
  %331 = load i32* %arrayidx16.2.3190, align 4
  %mul.2.3191 = mul nsw i32 %330, %331
  %arrayidx19.2.3192 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.2.3193 = getelementptr inbounds [6 x i32]* %arrayidx19.2.3192, i32 0, i64 0
  %332 = load i32* %arrayidx20.2.3193, align 4
  %add.2.3194 = add nsw i32 %332, %mul.2.3191
  store i32 %add.2.3194, i32* %arrayidx20.2.3193, align 4
  br label %for.inc.2.3204

for.inc.2.3204:                                   ; preds = %for.inc.1.3195
  %arrayidx11.3.3196 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.3.3197 = getelementptr inbounds [6 x i32]* %arrayidx11.3.3196, i32 0, i64 3
  %333 = load i32* %arrayidx12.3.3197, align 4
  %arrayidx15.3.3198 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.3199 = getelementptr inbounds [6 x i32]* %arrayidx15.3.3198, i32 0, i64 0
  %334 = load i32* %arrayidx16.3.3199, align 4
  %mul.3.3200 = mul nsw i32 %333, %334
  %arrayidx19.3.3201 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.3.3202 = getelementptr inbounds [6 x i32]* %arrayidx19.3.3201, i32 0, i64 0
  %335 = load i32* %arrayidx20.3.3202, align 4
  %add.3.3203 = add nsw i32 %335, %mul.3.3200
  store i32 %add.3.3203, i32* %arrayidx20.3.3202, align 4
  br label %for.inc.3.3213

for.inc.3.3213:                                   ; preds = %for.inc.2.3204
  %arrayidx11.4.3205 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.4.3206 = getelementptr inbounds [6 x i32]* %arrayidx11.4.3205, i32 0, i64 4
  %336 = load i32* %arrayidx12.4.3206, align 4
  %arrayidx15.4.3207 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.3208 = getelementptr inbounds [6 x i32]* %arrayidx15.4.3207, i32 0, i64 0
  %337 = load i32* %arrayidx16.4.3208, align 4
  %mul.4.3209 = mul nsw i32 %336, %337
  %arrayidx19.4.3210 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.4.3211 = getelementptr inbounds [6 x i32]* %arrayidx19.4.3210, i32 0, i64 0
  %338 = load i32* %arrayidx20.4.3211, align 4
  %add.4.3212 = add nsw i32 %338, %mul.4.3209
  store i32 %add.4.3212, i32* %arrayidx20.4.3211, align 4
  br label %for.inc.4.3222

for.inc.4.3222:                                   ; preds = %for.inc.3.3213
  %arrayidx11.5.3214 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.5.3215 = getelementptr inbounds [6 x i32]* %arrayidx11.5.3214, i32 0, i64 5
  %339 = load i32* %arrayidx12.5.3215, align 4
  %arrayidx15.5.3216 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.3217 = getelementptr inbounds [6 x i32]* %arrayidx15.5.3216, i32 0, i64 0
  %340 = load i32* %arrayidx16.5.3217, align 4
  %mul.5.3218 = mul nsw i32 %339, %340
  %arrayidx19.5.3219 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.5.3220 = getelementptr inbounds [6 x i32]* %arrayidx19.5.3219, i32 0, i64 0
  %341 = load i32* %arrayidx20.5.3220, align 4
  %add.5.3221 = add nsw i32 %341, %mul.5.3218
  store i32 %add.5.3221, i32* %arrayidx20.5.3220, align 4
  br label %for.inc.5.3223

for.inc.5.3223:                                   ; preds = %for.inc.4.3222
  br label %for.inc21.3224

for.inc21.3224:                                   ; preds = %for.inc.5.3223
  %arrayidx.1.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx5.1.3 = getelementptr inbounds [6 x i32]* %arrayidx.1.3, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.3, align 4
  br label %for.body8.1.3

for.body8.1.3:                                    ; preds = %for.inc21.3224
  %arrayidx11.14.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.15.3 = getelementptr inbounds [6 x i32]* %arrayidx11.14.3, i32 0, i64 0
  %342 = load i32* %arrayidx12.15.3, align 4
  %arrayidx16.16.3 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 1
  %343 = load i32* %arrayidx16.16.3, align 4
  %mul.17.3 = mul nsw i32 %342, %343
  %arrayidx19.19.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.110.3 = getelementptr inbounds [6 x i32]* %arrayidx19.19.3, i32 0, i64 1
  %344 = load i32* %arrayidx20.110.3, align 4
  %add.111.3 = add nsw i32 %344, %mul.17.3
  store i32 %add.111.3, i32* %arrayidx20.110.3, align 4
  br label %for.inc.112.3

for.inc.112.3:                                    ; preds = %for.body8.1.3
  %arrayidx11.1.1.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.1.1.3 = getelementptr inbounds [6 x i32]* %arrayidx11.1.1.3, i32 0, i64 1
  %345 = load i32* %arrayidx12.1.1.3, align 4
  %arrayidx15.1.1.3 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.1.3 = getelementptr inbounds [6 x i32]* %arrayidx15.1.1.3, i32 0, i64 1
  %346 = load i32* %arrayidx16.1.1.3, align 4
  %mul.1.1.3 = mul nsw i32 %345, %346
  %arrayidx19.1.1.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.1.1.3 = getelementptr inbounds [6 x i32]* %arrayidx19.1.1.3, i32 0, i64 1
  %347 = load i32* %arrayidx20.1.1.3, align 4
  %add.1.1.3 = add nsw i32 %347, %mul.1.1.3
  store i32 %add.1.1.3, i32* %arrayidx20.1.1.3, align 4
  br label %for.inc.1.1.3

for.inc.1.1.3:                                    ; preds = %for.inc.112.3
  %arrayidx11.2.1.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.2.1.3 = getelementptr inbounds [6 x i32]* %arrayidx11.2.1.3, i32 0, i64 2
  %348 = load i32* %arrayidx12.2.1.3, align 4
  %arrayidx15.2.1.3 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.1.3 = getelementptr inbounds [6 x i32]* %arrayidx15.2.1.3, i32 0, i64 1
  %349 = load i32* %arrayidx16.2.1.3, align 4
  %mul.2.1.3 = mul nsw i32 %348, %349
  %arrayidx19.2.1.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.2.1.3 = getelementptr inbounds [6 x i32]* %arrayidx19.2.1.3, i32 0, i64 1
  %350 = load i32* %arrayidx20.2.1.3, align 4
  %add.2.1.3 = add nsw i32 %350, %mul.2.1.3
  store i32 %add.2.1.3, i32* %arrayidx20.2.1.3, align 4
  br label %for.inc.2.1.3

for.inc.2.1.3:                                    ; preds = %for.inc.1.1.3
  %arrayidx11.3.1.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.3.1.3 = getelementptr inbounds [6 x i32]* %arrayidx11.3.1.3, i32 0, i64 3
  %351 = load i32* %arrayidx12.3.1.3, align 4
  %arrayidx15.3.1.3 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.1.3 = getelementptr inbounds [6 x i32]* %arrayidx15.3.1.3, i32 0, i64 1
  %352 = load i32* %arrayidx16.3.1.3, align 4
  %mul.3.1.3 = mul nsw i32 %351, %352
  %arrayidx19.3.1.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.3.1.3 = getelementptr inbounds [6 x i32]* %arrayidx19.3.1.3, i32 0, i64 1
  %353 = load i32* %arrayidx20.3.1.3, align 4
  %add.3.1.3 = add nsw i32 %353, %mul.3.1.3
  store i32 %add.3.1.3, i32* %arrayidx20.3.1.3, align 4
  br label %for.inc.3.1.3

for.inc.3.1.3:                                    ; preds = %for.inc.2.1.3
  %arrayidx11.4.1.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.4.1.3 = getelementptr inbounds [6 x i32]* %arrayidx11.4.1.3, i32 0, i64 4
  %354 = load i32* %arrayidx12.4.1.3, align 4
  %arrayidx15.4.1.3 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.1.3 = getelementptr inbounds [6 x i32]* %arrayidx15.4.1.3, i32 0, i64 1
  %355 = load i32* %arrayidx16.4.1.3, align 4
  %mul.4.1.3 = mul nsw i32 %354, %355
  %arrayidx19.4.1.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.4.1.3 = getelementptr inbounds [6 x i32]* %arrayidx19.4.1.3, i32 0, i64 1
  %356 = load i32* %arrayidx20.4.1.3, align 4
  %add.4.1.3 = add nsw i32 %356, %mul.4.1.3
  store i32 %add.4.1.3, i32* %arrayidx20.4.1.3, align 4
  br label %for.inc.4.1.3

for.inc.4.1.3:                                    ; preds = %for.inc.3.1.3
  %arrayidx11.5.1.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.5.1.3 = getelementptr inbounds [6 x i32]* %arrayidx11.5.1.3, i32 0, i64 5
  %357 = load i32* %arrayidx12.5.1.3, align 4
  %arrayidx15.5.1.3 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.1.3 = getelementptr inbounds [6 x i32]* %arrayidx15.5.1.3, i32 0, i64 1
  %358 = load i32* %arrayidx16.5.1.3, align 4
  %mul.5.1.3 = mul nsw i32 %357, %358
  %arrayidx19.5.1.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.5.1.3 = getelementptr inbounds [6 x i32]* %arrayidx19.5.1.3, i32 0, i64 1
  %359 = load i32* %arrayidx20.5.1.3, align 4
  %add.5.1.3 = add nsw i32 %359, %mul.5.1.3
  store i32 %add.5.1.3, i32* %arrayidx20.5.1.3, align 4
  br label %for.inc.5.1.3

for.inc.5.1.3:                                    ; preds = %for.inc.4.1.3
  br label %for.inc21.1.3

for.inc21.1.3:                                    ; preds = %for.inc.5.1.3
  %arrayidx.2.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx5.2.3 = getelementptr inbounds [6 x i32]* %arrayidx.2.3, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.3, align 4
  br label %for.body8.2.3

for.body8.2.3:                                    ; preds = %for.inc21.1.3
  %arrayidx11.214.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.215.3 = getelementptr inbounds [6 x i32]* %arrayidx11.214.3, i32 0, i64 0
  %360 = load i32* %arrayidx12.215.3, align 4
  %arrayidx16.216.3 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 2
  %361 = load i32* %arrayidx16.216.3, align 4
  %mul.217.3 = mul nsw i32 %360, %361
  %arrayidx19.219.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.220.3 = getelementptr inbounds [6 x i32]* %arrayidx19.219.3, i32 0, i64 2
  %362 = load i32* %arrayidx20.220.3, align 4
  %add.221.3 = add nsw i32 %362, %mul.217.3
  store i32 %add.221.3, i32* %arrayidx20.220.3, align 4
  br label %for.inc.222.3

for.inc.222.3:                                    ; preds = %for.body8.2.3
  %arrayidx11.1.2.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.1.2.3 = getelementptr inbounds [6 x i32]* %arrayidx11.1.2.3, i32 0, i64 1
  %363 = load i32* %arrayidx12.1.2.3, align 4
  %arrayidx15.1.2.3 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.2.3 = getelementptr inbounds [6 x i32]* %arrayidx15.1.2.3, i32 0, i64 2
  %364 = load i32* %arrayidx16.1.2.3, align 4
  %mul.1.2.3 = mul nsw i32 %363, %364
  %arrayidx19.1.2.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.1.2.3 = getelementptr inbounds [6 x i32]* %arrayidx19.1.2.3, i32 0, i64 2
  %365 = load i32* %arrayidx20.1.2.3, align 4
  %add.1.2.3 = add nsw i32 %365, %mul.1.2.3
  store i32 %add.1.2.3, i32* %arrayidx20.1.2.3, align 4
  br label %for.inc.1.2.3

for.inc.1.2.3:                                    ; preds = %for.inc.222.3
  %arrayidx11.2.2.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.2.2.3 = getelementptr inbounds [6 x i32]* %arrayidx11.2.2.3, i32 0, i64 2
  %366 = load i32* %arrayidx12.2.2.3, align 4
  %arrayidx15.2.2.3 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.2.3 = getelementptr inbounds [6 x i32]* %arrayidx15.2.2.3, i32 0, i64 2
  %367 = load i32* %arrayidx16.2.2.3, align 4
  %mul.2.2.3 = mul nsw i32 %366, %367
  %arrayidx19.2.2.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.2.2.3 = getelementptr inbounds [6 x i32]* %arrayidx19.2.2.3, i32 0, i64 2
  %368 = load i32* %arrayidx20.2.2.3, align 4
  %add.2.2.3 = add nsw i32 %368, %mul.2.2.3
  store i32 %add.2.2.3, i32* %arrayidx20.2.2.3, align 4
  br label %for.inc.2.2.3

for.inc.2.2.3:                                    ; preds = %for.inc.1.2.3
  %arrayidx11.3.2.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.3.2.3 = getelementptr inbounds [6 x i32]* %arrayidx11.3.2.3, i32 0, i64 3
  %369 = load i32* %arrayidx12.3.2.3, align 4
  %arrayidx15.3.2.3 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.2.3 = getelementptr inbounds [6 x i32]* %arrayidx15.3.2.3, i32 0, i64 2
  %370 = load i32* %arrayidx16.3.2.3, align 4
  %mul.3.2.3 = mul nsw i32 %369, %370
  %arrayidx19.3.2.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.3.2.3 = getelementptr inbounds [6 x i32]* %arrayidx19.3.2.3, i32 0, i64 2
  %371 = load i32* %arrayidx20.3.2.3, align 4
  %add.3.2.3 = add nsw i32 %371, %mul.3.2.3
  store i32 %add.3.2.3, i32* %arrayidx20.3.2.3, align 4
  br label %for.inc.3.2.3

for.inc.3.2.3:                                    ; preds = %for.inc.2.2.3
  %arrayidx11.4.2.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.4.2.3 = getelementptr inbounds [6 x i32]* %arrayidx11.4.2.3, i32 0, i64 4
  %372 = load i32* %arrayidx12.4.2.3, align 4
  %arrayidx15.4.2.3 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.2.3 = getelementptr inbounds [6 x i32]* %arrayidx15.4.2.3, i32 0, i64 2
  %373 = load i32* %arrayidx16.4.2.3, align 4
  %mul.4.2.3 = mul nsw i32 %372, %373
  %arrayidx19.4.2.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.4.2.3 = getelementptr inbounds [6 x i32]* %arrayidx19.4.2.3, i32 0, i64 2
  %374 = load i32* %arrayidx20.4.2.3, align 4
  %add.4.2.3 = add nsw i32 %374, %mul.4.2.3
  store i32 %add.4.2.3, i32* %arrayidx20.4.2.3, align 4
  br label %for.inc.4.2.3

for.inc.4.2.3:                                    ; preds = %for.inc.3.2.3
  %arrayidx11.5.2.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.5.2.3 = getelementptr inbounds [6 x i32]* %arrayidx11.5.2.3, i32 0, i64 5
  %375 = load i32* %arrayidx12.5.2.3, align 4
  %arrayidx15.5.2.3 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.2.3 = getelementptr inbounds [6 x i32]* %arrayidx15.5.2.3, i32 0, i64 2
  %376 = load i32* %arrayidx16.5.2.3, align 4
  %mul.5.2.3 = mul nsw i32 %375, %376
  %arrayidx19.5.2.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.5.2.3 = getelementptr inbounds [6 x i32]* %arrayidx19.5.2.3, i32 0, i64 2
  %377 = load i32* %arrayidx20.5.2.3, align 4
  %add.5.2.3 = add nsw i32 %377, %mul.5.2.3
  store i32 %add.5.2.3, i32* %arrayidx20.5.2.3, align 4
  br label %for.inc.5.2.3

for.inc.5.2.3:                                    ; preds = %for.inc.4.2.3
  br label %for.inc21.2.3

for.inc21.2.3:                                    ; preds = %for.inc.5.2.3
  %arrayidx.3.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx5.3.3 = getelementptr inbounds [6 x i32]* %arrayidx.3.3, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.3, align 4
  br label %for.body8.3.3

for.body8.3.3:                                    ; preds = %for.inc21.2.3
  %arrayidx11.324.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.325.3 = getelementptr inbounds [6 x i32]* %arrayidx11.324.3, i32 0, i64 0
  %378 = load i32* %arrayidx12.325.3, align 4
  %arrayidx16.326.3 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 3
  %379 = load i32* %arrayidx16.326.3, align 4
  %mul.327.3 = mul nsw i32 %378, %379
  %arrayidx19.329.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.330.3 = getelementptr inbounds [6 x i32]* %arrayidx19.329.3, i32 0, i64 3
  %380 = load i32* %arrayidx20.330.3, align 4
  %add.331.3 = add nsw i32 %380, %mul.327.3
  store i32 %add.331.3, i32* %arrayidx20.330.3, align 4
  br label %for.inc.332.3

for.inc.332.3:                                    ; preds = %for.body8.3.3
  %arrayidx11.1.3.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.1.3.3 = getelementptr inbounds [6 x i32]* %arrayidx11.1.3.3, i32 0, i64 1
  %381 = load i32* %arrayidx12.1.3.3, align 4
  %arrayidx15.1.3.3 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.3.3 = getelementptr inbounds [6 x i32]* %arrayidx15.1.3.3, i32 0, i64 3
  %382 = load i32* %arrayidx16.1.3.3, align 4
  %mul.1.3.3 = mul nsw i32 %381, %382
  %arrayidx19.1.3.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.1.3.3 = getelementptr inbounds [6 x i32]* %arrayidx19.1.3.3, i32 0, i64 3
  %383 = load i32* %arrayidx20.1.3.3, align 4
  %add.1.3.3 = add nsw i32 %383, %mul.1.3.3
  store i32 %add.1.3.3, i32* %arrayidx20.1.3.3, align 4
  br label %for.inc.1.3.3

for.inc.1.3.3:                                    ; preds = %for.inc.332.3
  %arrayidx11.2.3.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.2.3.3 = getelementptr inbounds [6 x i32]* %arrayidx11.2.3.3, i32 0, i64 2
  %384 = load i32* %arrayidx12.2.3.3, align 4
  %arrayidx15.2.3.3 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.3.3 = getelementptr inbounds [6 x i32]* %arrayidx15.2.3.3, i32 0, i64 3
  %385 = load i32* %arrayidx16.2.3.3, align 4
  %mul.2.3.3 = mul nsw i32 %384, %385
  %arrayidx19.2.3.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.2.3.3 = getelementptr inbounds [6 x i32]* %arrayidx19.2.3.3, i32 0, i64 3
  %386 = load i32* %arrayidx20.2.3.3, align 4
  %add.2.3.3 = add nsw i32 %386, %mul.2.3.3
  store i32 %add.2.3.3, i32* %arrayidx20.2.3.3, align 4
  br label %for.inc.2.3.3

for.inc.2.3.3:                                    ; preds = %for.inc.1.3.3
  %arrayidx11.3.3.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.3.3.3 = getelementptr inbounds [6 x i32]* %arrayidx11.3.3.3, i32 0, i64 3
  %387 = load i32* %arrayidx12.3.3.3, align 4
  %arrayidx15.3.3.3 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.3.3 = getelementptr inbounds [6 x i32]* %arrayidx15.3.3.3, i32 0, i64 3
  %388 = load i32* %arrayidx16.3.3.3, align 4
  %mul.3.3.3 = mul nsw i32 %387, %388
  %arrayidx19.3.3.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.3.3.3 = getelementptr inbounds [6 x i32]* %arrayidx19.3.3.3, i32 0, i64 3
  %389 = load i32* %arrayidx20.3.3.3, align 4
  %add.3.3.3 = add nsw i32 %389, %mul.3.3.3
  store i32 %add.3.3.3, i32* %arrayidx20.3.3.3, align 4
  br label %for.inc.3.3.3

for.inc.3.3.3:                                    ; preds = %for.inc.2.3.3
  %arrayidx11.4.3.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.4.3.3 = getelementptr inbounds [6 x i32]* %arrayidx11.4.3.3, i32 0, i64 4
  %390 = load i32* %arrayidx12.4.3.3, align 4
  %arrayidx15.4.3.3 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.3.3 = getelementptr inbounds [6 x i32]* %arrayidx15.4.3.3, i32 0, i64 3
  %391 = load i32* %arrayidx16.4.3.3, align 4
  %mul.4.3.3 = mul nsw i32 %390, %391
  %arrayidx19.4.3.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.4.3.3 = getelementptr inbounds [6 x i32]* %arrayidx19.4.3.3, i32 0, i64 3
  %392 = load i32* %arrayidx20.4.3.3, align 4
  %add.4.3.3 = add nsw i32 %392, %mul.4.3.3
  store i32 %add.4.3.3, i32* %arrayidx20.4.3.3, align 4
  br label %for.inc.4.3.3

for.inc.4.3.3:                                    ; preds = %for.inc.3.3.3
  %arrayidx11.5.3.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.5.3.3 = getelementptr inbounds [6 x i32]* %arrayidx11.5.3.3, i32 0, i64 5
  %393 = load i32* %arrayidx12.5.3.3, align 4
  %arrayidx15.5.3.3 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.3.3 = getelementptr inbounds [6 x i32]* %arrayidx15.5.3.3, i32 0, i64 3
  %394 = load i32* %arrayidx16.5.3.3, align 4
  %mul.5.3.3 = mul nsw i32 %393, %394
  %arrayidx19.5.3.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.5.3.3 = getelementptr inbounds [6 x i32]* %arrayidx19.5.3.3, i32 0, i64 3
  %395 = load i32* %arrayidx20.5.3.3, align 4
  %add.5.3.3 = add nsw i32 %395, %mul.5.3.3
  store i32 %add.5.3.3, i32* %arrayidx20.5.3.3, align 4
  br label %for.inc.5.3.3

for.inc.5.3.3:                                    ; preds = %for.inc.4.3.3
  br label %for.inc21.3.3

for.inc21.3.3:                                    ; preds = %for.inc.5.3.3
  %arrayidx.4.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx5.4.3 = getelementptr inbounds [6 x i32]* %arrayidx.4.3, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.3, align 4
  br label %for.body8.4.3

for.body8.4.3:                                    ; preds = %for.inc21.3.3
  %arrayidx11.434.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.435.3 = getelementptr inbounds [6 x i32]* %arrayidx11.434.3, i32 0, i64 0
  %396 = load i32* %arrayidx12.435.3, align 4
  %arrayidx16.436.3 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 4
  %397 = load i32* %arrayidx16.436.3, align 4
  %mul.437.3 = mul nsw i32 %396, %397
  %arrayidx19.439.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.440.3 = getelementptr inbounds [6 x i32]* %arrayidx19.439.3, i32 0, i64 4
  %398 = load i32* %arrayidx20.440.3, align 4
  %add.441.3 = add nsw i32 %398, %mul.437.3
  store i32 %add.441.3, i32* %arrayidx20.440.3, align 4
  br label %for.inc.442.3

for.inc.442.3:                                    ; preds = %for.body8.4.3
  %arrayidx11.1.4.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.1.4.3 = getelementptr inbounds [6 x i32]* %arrayidx11.1.4.3, i32 0, i64 1
  %399 = load i32* %arrayidx12.1.4.3, align 4
  %arrayidx15.1.4.3 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.4.3 = getelementptr inbounds [6 x i32]* %arrayidx15.1.4.3, i32 0, i64 4
  %400 = load i32* %arrayidx16.1.4.3, align 4
  %mul.1.4.3 = mul nsw i32 %399, %400
  %arrayidx19.1.4.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.1.4.3 = getelementptr inbounds [6 x i32]* %arrayidx19.1.4.3, i32 0, i64 4
  %401 = load i32* %arrayidx20.1.4.3, align 4
  %add.1.4.3 = add nsw i32 %401, %mul.1.4.3
  store i32 %add.1.4.3, i32* %arrayidx20.1.4.3, align 4
  br label %for.inc.1.4.3

for.inc.1.4.3:                                    ; preds = %for.inc.442.3
  %arrayidx11.2.4.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.2.4.3 = getelementptr inbounds [6 x i32]* %arrayidx11.2.4.3, i32 0, i64 2
  %402 = load i32* %arrayidx12.2.4.3, align 4
  %arrayidx15.2.4.3 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.4.3 = getelementptr inbounds [6 x i32]* %arrayidx15.2.4.3, i32 0, i64 4
  %403 = load i32* %arrayidx16.2.4.3, align 4
  %mul.2.4.3 = mul nsw i32 %402, %403
  %arrayidx19.2.4.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.2.4.3 = getelementptr inbounds [6 x i32]* %arrayidx19.2.4.3, i32 0, i64 4
  %404 = load i32* %arrayidx20.2.4.3, align 4
  %add.2.4.3 = add nsw i32 %404, %mul.2.4.3
  store i32 %add.2.4.3, i32* %arrayidx20.2.4.3, align 4
  br label %for.inc.2.4.3

for.inc.2.4.3:                                    ; preds = %for.inc.1.4.3
  %arrayidx11.3.4.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.3.4.3 = getelementptr inbounds [6 x i32]* %arrayidx11.3.4.3, i32 0, i64 3
  %405 = load i32* %arrayidx12.3.4.3, align 4
  %arrayidx15.3.4.3 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.4.3 = getelementptr inbounds [6 x i32]* %arrayidx15.3.4.3, i32 0, i64 4
  %406 = load i32* %arrayidx16.3.4.3, align 4
  %mul.3.4.3 = mul nsw i32 %405, %406
  %arrayidx19.3.4.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.3.4.3 = getelementptr inbounds [6 x i32]* %arrayidx19.3.4.3, i32 0, i64 4
  %407 = load i32* %arrayidx20.3.4.3, align 4
  %add.3.4.3 = add nsw i32 %407, %mul.3.4.3
  store i32 %add.3.4.3, i32* %arrayidx20.3.4.3, align 4
  br label %for.inc.3.4.3

for.inc.3.4.3:                                    ; preds = %for.inc.2.4.3
  %arrayidx11.4.4.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.4.4.3 = getelementptr inbounds [6 x i32]* %arrayidx11.4.4.3, i32 0, i64 4
  %408 = load i32* %arrayidx12.4.4.3, align 4
  %arrayidx15.4.4.3 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.4.3 = getelementptr inbounds [6 x i32]* %arrayidx15.4.4.3, i32 0, i64 4
  %409 = load i32* %arrayidx16.4.4.3, align 4
  %mul.4.4.3 = mul nsw i32 %408, %409
  %arrayidx19.4.4.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.4.4.3 = getelementptr inbounds [6 x i32]* %arrayidx19.4.4.3, i32 0, i64 4
  %410 = load i32* %arrayidx20.4.4.3, align 4
  %add.4.4.3 = add nsw i32 %410, %mul.4.4.3
  store i32 %add.4.4.3, i32* %arrayidx20.4.4.3, align 4
  br label %for.inc.4.4.3

for.inc.4.4.3:                                    ; preds = %for.inc.3.4.3
  %arrayidx11.5.4.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.5.4.3 = getelementptr inbounds [6 x i32]* %arrayidx11.5.4.3, i32 0, i64 5
  %411 = load i32* %arrayidx12.5.4.3, align 4
  %arrayidx15.5.4.3 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.4.3 = getelementptr inbounds [6 x i32]* %arrayidx15.5.4.3, i32 0, i64 4
  %412 = load i32* %arrayidx16.5.4.3, align 4
  %mul.5.4.3 = mul nsw i32 %411, %412
  %arrayidx19.5.4.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.5.4.3 = getelementptr inbounds [6 x i32]* %arrayidx19.5.4.3, i32 0, i64 4
  %413 = load i32* %arrayidx20.5.4.3, align 4
  %add.5.4.3 = add nsw i32 %413, %mul.5.4.3
  store i32 %add.5.4.3, i32* %arrayidx20.5.4.3, align 4
  br label %for.inc.5.4.3

for.inc.5.4.3:                                    ; preds = %for.inc.4.4.3
  br label %for.inc21.4.3

for.inc21.4.3:                                    ; preds = %for.inc.5.4.3
  %arrayidx.5.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx5.5.3 = getelementptr inbounds [6 x i32]* %arrayidx.5.3, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.3, align 4
  br label %for.body8.5.3

for.body8.5.3:                                    ; preds = %for.inc21.4.3
  %arrayidx11.544.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.545.3 = getelementptr inbounds [6 x i32]* %arrayidx11.544.3, i32 0, i64 0
  %414 = load i32* %arrayidx12.545.3, align 4
  %arrayidx16.546.3 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 5
  %415 = load i32* %arrayidx16.546.3, align 4
  %mul.547.3 = mul nsw i32 %414, %415
  %arrayidx19.549.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.550.3 = getelementptr inbounds [6 x i32]* %arrayidx19.549.3, i32 0, i64 5
  %416 = load i32* %arrayidx20.550.3, align 4
  %add.551.3 = add nsw i32 %416, %mul.547.3
  store i32 %add.551.3, i32* %arrayidx20.550.3, align 4
  br label %for.inc.552.3

for.inc.552.3:                                    ; preds = %for.body8.5.3
  %arrayidx11.1.5.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.1.5.3 = getelementptr inbounds [6 x i32]* %arrayidx11.1.5.3, i32 0, i64 1
  %417 = load i32* %arrayidx12.1.5.3, align 4
  %arrayidx15.1.5.3 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.5.3 = getelementptr inbounds [6 x i32]* %arrayidx15.1.5.3, i32 0, i64 5
  %418 = load i32* %arrayidx16.1.5.3, align 4
  %mul.1.5.3 = mul nsw i32 %417, %418
  %arrayidx19.1.5.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.1.5.3 = getelementptr inbounds [6 x i32]* %arrayidx19.1.5.3, i32 0, i64 5
  %419 = load i32* %arrayidx20.1.5.3, align 4
  %add.1.5.3 = add nsw i32 %419, %mul.1.5.3
  store i32 %add.1.5.3, i32* %arrayidx20.1.5.3, align 4
  br label %for.inc.1.5.3

for.inc.1.5.3:                                    ; preds = %for.inc.552.3
  %arrayidx11.2.5.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.2.5.3 = getelementptr inbounds [6 x i32]* %arrayidx11.2.5.3, i32 0, i64 2
  %420 = load i32* %arrayidx12.2.5.3, align 4
  %arrayidx15.2.5.3 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.5.3 = getelementptr inbounds [6 x i32]* %arrayidx15.2.5.3, i32 0, i64 5
  %421 = load i32* %arrayidx16.2.5.3, align 4
  %mul.2.5.3 = mul nsw i32 %420, %421
  %arrayidx19.2.5.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.2.5.3 = getelementptr inbounds [6 x i32]* %arrayidx19.2.5.3, i32 0, i64 5
  %422 = load i32* %arrayidx20.2.5.3, align 4
  %add.2.5.3 = add nsw i32 %422, %mul.2.5.3
  store i32 %add.2.5.3, i32* %arrayidx20.2.5.3, align 4
  br label %for.inc.2.5.3

for.inc.2.5.3:                                    ; preds = %for.inc.1.5.3
  %arrayidx11.3.5.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.3.5.3 = getelementptr inbounds [6 x i32]* %arrayidx11.3.5.3, i32 0, i64 3
  %423 = load i32* %arrayidx12.3.5.3, align 4
  %arrayidx15.3.5.3 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.5.3 = getelementptr inbounds [6 x i32]* %arrayidx15.3.5.3, i32 0, i64 5
  %424 = load i32* %arrayidx16.3.5.3, align 4
  %mul.3.5.3 = mul nsw i32 %423, %424
  %arrayidx19.3.5.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.3.5.3 = getelementptr inbounds [6 x i32]* %arrayidx19.3.5.3, i32 0, i64 5
  %425 = load i32* %arrayidx20.3.5.3, align 4
  %add.3.5.3 = add nsw i32 %425, %mul.3.5.3
  store i32 %add.3.5.3, i32* %arrayidx20.3.5.3, align 4
  br label %for.inc.3.5.3

for.inc.3.5.3:                                    ; preds = %for.inc.2.5.3
  %arrayidx11.4.5.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.4.5.3 = getelementptr inbounds [6 x i32]* %arrayidx11.4.5.3, i32 0, i64 4
  %426 = load i32* %arrayidx12.4.5.3, align 4
  %arrayidx15.4.5.3 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.5.3 = getelementptr inbounds [6 x i32]* %arrayidx15.4.5.3, i32 0, i64 5
  %427 = load i32* %arrayidx16.4.5.3, align 4
  %mul.4.5.3 = mul nsw i32 %426, %427
  %arrayidx19.4.5.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.4.5.3 = getelementptr inbounds [6 x i32]* %arrayidx19.4.5.3, i32 0, i64 5
  %428 = load i32* %arrayidx20.4.5.3, align 4
  %add.4.5.3 = add nsw i32 %428, %mul.4.5.3
  store i32 %add.4.5.3, i32* %arrayidx20.4.5.3, align 4
  br label %for.inc.4.5.3

for.inc.4.5.3:                                    ; preds = %for.inc.3.5.3
  %arrayidx11.5.5.3 = getelementptr inbounds [6 x i32]* %a, i64 3
  %arrayidx12.5.5.3 = getelementptr inbounds [6 x i32]* %arrayidx11.5.5.3, i32 0, i64 5
  %429 = load i32* %arrayidx12.5.5.3, align 4
  %arrayidx15.5.5.3 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.5.3 = getelementptr inbounds [6 x i32]* %arrayidx15.5.5.3, i32 0, i64 5
  %430 = load i32* %arrayidx16.5.5.3, align 4
  %mul.5.5.3 = mul nsw i32 %429, %430
  %arrayidx19.5.5.3 = getelementptr inbounds [6 x i32]* %c, i64 3
  %arrayidx20.5.5.3 = getelementptr inbounds [6 x i32]* %arrayidx19.5.5.3, i32 0, i64 5
  %431 = load i32* %arrayidx20.5.5.3, align 4
  %add.5.5.3 = add nsw i32 %431, %mul.5.5.3
  store i32 %add.5.5.3, i32* %arrayidx20.5.5.3, align 4
  br label %for.inc.5.5.3

for.inc.5.5.3:                                    ; preds = %for.inc.4.5.3
  br label %for.inc21.5.3

for.inc21.5.3:                                    ; preds = %for.inc.5.5.3
  br label %for.inc24.3

for.inc24.3:                                      ; preds = %for.inc21.5.3
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.inc24.3
  %arrayidx.4225 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx5.4226 = getelementptr inbounds [6 x i32]* %arrayidx.4225, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.4226, align 4
  br label %for.body8.4234

for.body8.4234:                                   ; preds = %for.body3.4
  %arrayidx11.4227 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.4228 = getelementptr inbounds [6 x i32]* %arrayidx11.4227, i32 0, i64 0
  %432 = load i32* %arrayidx12.4228, align 4
  %arrayidx16.4229 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 0
  %433 = load i32* %arrayidx16.4229, align 4
  %mul.4230 = mul nsw i32 %432, %433
  %arrayidx19.4231 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.4232 = getelementptr inbounds [6 x i32]* %arrayidx19.4231, i32 0, i64 0
  %434 = load i32* %arrayidx20.4232, align 4
  %add.4233 = add nsw i32 %434, %mul.4230
  store i32 %add.4233, i32* %arrayidx20.4232, align 4
  br label %for.inc.4243

for.inc.4243:                                     ; preds = %for.body8.4234
  %arrayidx11.1.4235 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.1.4236 = getelementptr inbounds [6 x i32]* %arrayidx11.1.4235, i32 0, i64 1
  %435 = load i32* %arrayidx12.1.4236, align 4
  %arrayidx15.1.4237 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.4238 = getelementptr inbounds [6 x i32]* %arrayidx15.1.4237, i32 0, i64 0
  %436 = load i32* %arrayidx16.1.4238, align 4
  %mul.1.4239 = mul nsw i32 %435, %436
  %arrayidx19.1.4240 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.1.4241 = getelementptr inbounds [6 x i32]* %arrayidx19.1.4240, i32 0, i64 0
  %437 = load i32* %arrayidx20.1.4241, align 4
  %add.1.4242 = add nsw i32 %437, %mul.1.4239
  store i32 %add.1.4242, i32* %arrayidx20.1.4241, align 4
  br label %for.inc.1.4252

for.inc.1.4252:                                   ; preds = %for.inc.4243
  %arrayidx11.2.4244 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.2.4245 = getelementptr inbounds [6 x i32]* %arrayidx11.2.4244, i32 0, i64 2
  %438 = load i32* %arrayidx12.2.4245, align 4
  %arrayidx15.2.4246 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.4247 = getelementptr inbounds [6 x i32]* %arrayidx15.2.4246, i32 0, i64 0
  %439 = load i32* %arrayidx16.2.4247, align 4
  %mul.2.4248 = mul nsw i32 %438, %439
  %arrayidx19.2.4249 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.2.4250 = getelementptr inbounds [6 x i32]* %arrayidx19.2.4249, i32 0, i64 0
  %440 = load i32* %arrayidx20.2.4250, align 4
  %add.2.4251 = add nsw i32 %440, %mul.2.4248
  store i32 %add.2.4251, i32* %arrayidx20.2.4250, align 4
  br label %for.inc.2.4261

for.inc.2.4261:                                   ; preds = %for.inc.1.4252
  %arrayidx11.3.4253 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.3.4254 = getelementptr inbounds [6 x i32]* %arrayidx11.3.4253, i32 0, i64 3
  %441 = load i32* %arrayidx12.3.4254, align 4
  %arrayidx15.3.4255 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.4256 = getelementptr inbounds [6 x i32]* %arrayidx15.3.4255, i32 0, i64 0
  %442 = load i32* %arrayidx16.3.4256, align 4
  %mul.3.4257 = mul nsw i32 %441, %442
  %arrayidx19.3.4258 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.3.4259 = getelementptr inbounds [6 x i32]* %arrayidx19.3.4258, i32 0, i64 0
  %443 = load i32* %arrayidx20.3.4259, align 4
  %add.3.4260 = add nsw i32 %443, %mul.3.4257
  store i32 %add.3.4260, i32* %arrayidx20.3.4259, align 4
  br label %for.inc.3.4270

for.inc.3.4270:                                   ; preds = %for.inc.2.4261
  %arrayidx11.4.4262 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.4.4263 = getelementptr inbounds [6 x i32]* %arrayidx11.4.4262, i32 0, i64 4
  %444 = load i32* %arrayidx12.4.4263, align 4
  %arrayidx15.4.4264 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.4265 = getelementptr inbounds [6 x i32]* %arrayidx15.4.4264, i32 0, i64 0
  %445 = load i32* %arrayidx16.4.4265, align 4
  %mul.4.4266 = mul nsw i32 %444, %445
  %arrayidx19.4.4267 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.4.4268 = getelementptr inbounds [6 x i32]* %arrayidx19.4.4267, i32 0, i64 0
  %446 = load i32* %arrayidx20.4.4268, align 4
  %add.4.4269 = add nsw i32 %446, %mul.4.4266
  store i32 %add.4.4269, i32* %arrayidx20.4.4268, align 4
  br label %for.inc.4.4279

for.inc.4.4279:                                   ; preds = %for.inc.3.4270
  %arrayidx11.5.4271 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.5.4272 = getelementptr inbounds [6 x i32]* %arrayidx11.5.4271, i32 0, i64 5
  %447 = load i32* %arrayidx12.5.4272, align 4
  %arrayidx15.5.4273 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.4274 = getelementptr inbounds [6 x i32]* %arrayidx15.5.4273, i32 0, i64 0
  %448 = load i32* %arrayidx16.5.4274, align 4
  %mul.5.4275 = mul nsw i32 %447, %448
  %arrayidx19.5.4276 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.5.4277 = getelementptr inbounds [6 x i32]* %arrayidx19.5.4276, i32 0, i64 0
  %449 = load i32* %arrayidx20.5.4277, align 4
  %add.5.4278 = add nsw i32 %449, %mul.5.4275
  store i32 %add.5.4278, i32* %arrayidx20.5.4277, align 4
  br label %for.inc.5.4280

for.inc.5.4280:                                   ; preds = %for.inc.4.4279
  br label %for.inc21.4281

for.inc21.4281:                                   ; preds = %for.inc.5.4280
  %arrayidx.1.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx5.1.4 = getelementptr inbounds [6 x i32]* %arrayidx.1.4, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.4, align 4
  br label %for.body8.1.4

for.body8.1.4:                                    ; preds = %for.inc21.4281
  %arrayidx11.14.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.15.4 = getelementptr inbounds [6 x i32]* %arrayidx11.14.4, i32 0, i64 0
  %450 = load i32* %arrayidx12.15.4, align 4
  %arrayidx16.16.4 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 1
  %451 = load i32* %arrayidx16.16.4, align 4
  %mul.17.4 = mul nsw i32 %450, %451
  %arrayidx19.19.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.110.4 = getelementptr inbounds [6 x i32]* %arrayidx19.19.4, i32 0, i64 1
  %452 = load i32* %arrayidx20.110.4, align 4
  %add.111.4 = add nsw i32 %452, %mul.17.4
  store i32 %add.111.4, i32* %arrayidx20.110.4, align 4
  br label %for.inc.112.4

for.inc.112.4:                                    ; preds = %for.body8.1.4
  %arrayidx11.1.1.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.1.1.4 = getelementptr inbounds [6 x i32]* %arrayidx11.1.1.4, i32 0, i64 1
  %453 = load i32* %arrayidx12.1.1.4, align 4
  %arrayidx15.1.1.4 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.1.4 = getelementptr inbounds [6 x i32]* %arrayidx15.1.1.4, i32 0, i64 1
  %454 = load i32* %arrayidx16.1.1.4, align 4
  %mul.1.1.4 = mul nsw i32 %453, %454
  %arrayidx19.1.1.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.1.1.4 = getelementptr inbounds [6 x i32]* %arrayidx19.1.1.4, i32 0, i64 1
  %455 = load i32* %arrayidx20.1.1.4, align 4
  %add.1.1.4 = add nsw i32 %455, %mul.1.1.4
  store i32 %add.1.1.4, i32* %arrayidx20.1.1.4, align 4
  br label %for.inc.1.1.4

for.inc.1.1.4:                                    ; preds = %for.inc.112.4
  %arrayidx11.2.1.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.2.1.4 = getelementptr inbounds [6 x i32]* %arrayidx11.2.1.4, i32 0, i64 2
  %456 = load i32* %arrayidx12.2.1.4, align 4
  %arrayidx15.2.1.4 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.1.4 = getelementptr inbounds [6 x i32]* %arrayidx15.2.1.4, i32 0, i64 1
  %457 = load i32* %arrayidx16.2.1.4, align 4
  %mul.2.1.4 = mul nsw i32 %456, %457
  %arrayidx19.2.1.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.2.1.4 = getelementptr inbounds [6 x i32]* %arrayidx19.2.1.4, i32 0, i64 1
  %458 = load i32* %arrayidx20.2.1.4, align 4
  %add.2.1.4 = add nsw i32 %458, %mul.2.1.4
  store i32 %add.2.1.4, i32* %arrayidx20.2.1.4, align 4
  br label %for.inc.2.1.4

for.inc.2.1.4:                                    ; preds = %for.inc.1.1.4
  %arrayidx11.3.1.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.3.1.4 = getelementptr inbounds [6 x i32]* %arrayidx11.3.1.4, i32 0, i64 3
  %459 = load i32* %arrayidx12.3.1.4, align 4
  %arrayidx15.3.1.4 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.1.4 = getelementptr inbounds [6 x i32]* %arrayidx15.3.1.4, i32 0, i64 1
  %460 = load i32* %arrayidx16.3.1.4, align 4
  %mul.3.1.4 = mul nsw i32 %459, %460
  %arrayidx19.3.1.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.3.1.4 = getelementptr inbounds [6 x i32]* %arrayidx19.3.1.4, i32 0, i64 1
  %461 = load i32* %arrayidx20.3.1.4, align 4
  %add.3.1.4 = add nsw i32 %461, %mul.3.1.4
  store i32 %add.3.1.4, i32* %arrayidx20.3.1.4, align 4
  br label %for.inc.3.1.4

for.inc.3.1.4:                                    ; preds = %for.inc.2.1.4
  %arrayidx11.4.1.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.4.1.4 = getelementptr inbounds [6 x i32]* %arrayidx11.4.1.4, i32 0, i64 4
  %462 = load i32* %arrayidx12.4.1.4, align 4
  %arrayidx15.4.1.4 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.1.4 = getelementptr inbounds [6 x i32]* %arrayidx15.4.1.4, i32 0, i64 1
  %463 = load i32* %arrayidx16.4.1.4, align 4
  %mul.4.1.4 = mul nsw i32 %462, %463
  %arrayidx19.4.1.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.4.1.4 = getelementptr inbounds [6 x i32]* %arrayidx19.4.1.4, i32 0, i64 1
  %464 = load i32* %arrayidx20.4.1.4, align 4
  %add.4.1.4 = add nsw i32 %464, %mul.4.1.4
  store i32 %add.4.1.4, i32* %arrayidx20.4.1.4, align 4
  br label %for.inc.4.1.4

for.inc.4.1.4:                                    ; preds = %for.inc.3.1.4
  %arrayidx11.5.1.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.5.1.4 = getelementptr inbounds [6 x i32]* %arrayidx11.5.1.4, i32 0, i64 5
  %465 = load i32* %arrayidx12.5.1.4, align 4
  %arrayidx15.5.1.4 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.1.4 = getelementptr inbounds [6 x i32]* %arrayidx15.5.1.4, i32 0, i64 1
  %466 = load i32* %arrayidx16.5.1.4, align 4
  %mul.5.1.4 = mul nsw i32 %465, %466
  %arrayidx19.5.1.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.5.1.4 = getelementptr inbounds [6 x i32]* %arrayidx19.5.1.4, i32 0, i64 1
  %467 = load i32* %arrayidx20.5.1.4, align 4
  %add.5.1.4 = add nsw i32 %467, %mul.5.1.4
  store i32 %add.5.1.4, i32* %arrayidx20.5.1.4, align 4
  br label %for.inc.5.1.4

for.inc.5.1.4:                                    ; preds = %for.inc.4.1.4
  br label %for.inc21.1.4

for.inc21.1.4:                                    ; preds = %for.inc.5.1.4
  %arrayidx.2.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx5.2.4 = getelementptr inbounds [6 x i32]* %arrayidx.2.4, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.4, align 4
  br label %for.body8.2.4

for.body8.2.4:                                    ; preds = %for.inc21.1.4
  %arrayidx11.214.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.215.4 = getelementptr inbounds [6 x i32]* %arrayidx11.214.4, i32 0, i64 0
  %468 = load i32* %arrayidx12.215.4, align 4
  %arrayidx16.216.4 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 2
  %469 = load i32* %arrayidx16.216.4, align 4
  %mul.217.4 = mul nsw i32 %468, %469
  %arrayidx19.219.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.220.4 = getelementptr inbounds [6 x i32]* %arrayidx19.219.4, i32 0, i64 2
  %470 = load i32* %arrayidx20.220.4, align 4
  %add.221.4 = add nsw i32 %470, %mul.217.4
  store i32 %add.221.4, i32* %arrayidx20.220.4, align 4
  br label %for.inc.222.4

for.inc.222.4:                                    ; preds = %for.body8.2.4
  %arrayidx11.1.2.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.1.2.4 = getelementptr inbounds [6 x i32]* %arrayidx11.1.2.4, i32 0, i64 1
  %471 = load i32* %arrayidx12.1.2.4, align 4
  %arrayidx15.1.2.4 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.2.4 = getelementptr inbounds [6 x i32]* %arrayidx15.1.2.4, i32 0, i64 2
  %472 = load i32* %arrayidx16.1.2.4, align 4
  %mul.1.2.4 = mul nsw i32 %471, %472
  %arrayidx19.1.2.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.1.2.4 = getelementptr inbounds [6 x i32]* %arrayidx19.1.2.4, i32 0, i64 2
  %473 = load i32* %arrayidx20.1.2.4, align 4
  %add.1.2.4 = add nsw i32 %473, %mul.1.2.4
  store i32 %add.1.2.4, i32* %arrayidx20.1.2.4, align 4
  br label %for.inc.1.2.4

for.inc.1.2.4:                                    ; preds = %for.inc.222.4
  %arrayidx11.2.2.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.2.2.4 = getelementptr inbounds [6 x i32]* %arrayidx11.2.2.4, i32 0, i64 2
  %474 = load i32* %arrayidx12.2.2.4, align 4
  %arrayidx15.2.2.4 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.2.4 = getelementptr inbounds [6 x i32]* %arrayidx15.2.2.4, i32 0, i64 2
  %475 = load i32* %arrayidx16.2.2.4, align 4
  %mul.2.2.4 = mul nsw i32 %474, %475
  %arrayidx19.2.2.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.2.2.4 = getelementptr inbounds [6 x i32]* %arrayidx19.2.2.4, i32 0, i64 2
  %476 = load i32* %arrayidx20.2.2.4, align 4
  %add.2.2.4 = add nsw i32 %476, %mul.2.2.4
  store i32 %add.2.2.4, i32* %arrayidx20.2.2.4, align 4
  br label %for.inc.2.2.4

for.inc.2.2.4:                                    ; preds = %for.inc.1.2.4
  %arrayidx11.3.2.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.3.2.4 = getelementptr inbounds [6 x i32]* %arrayidx11.3.2.4, i32 0, i64 3
  %477 = load i32* %arrayidx12.3.2.4, align 4
  %arrayidx15.3.2.4 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.2.4 = getelementptr inbounds [6 x i32]* %arrayidx15.3.2.4, i32 0, i64 2
  %478 = load i32* %arrayidx16.3.2.4, align 4
  %mul.3.2.4 = mul nsw i32 %477, %478
  %arrayidx19.3.2.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.3.2.4 = getelementptr inbounds [6 x i32]* %arrayidx19.3.2.4, i32 0, i64 2
  %479 = load i32* %arrayidx20.3.2.4, align 4
  %add.3.2.4 = add nsw i32 %479, %mul.3.2.4
  store i32 %add.3.2.4, i32* %arrayidx20.3.2.4, align 4
  br label %for.inc.3.2.4

for.inc.3.2.4:                                    ; preds = %for.inc.2.2.4
  %arrayidx11.4.2.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.4.2.4 = getelementptr inbounds [6 x i32]* %arrayidx11.4.2.4, i32 0, i64 4
  %480 = load i32* %arrayidx12.4.2.4, align 4
  %arrayidx15.4.2.4 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.2.4 = getelementptr inbounds [6 x i32]* %arrayidx15.4.2.4, i32 0, i64 2
  %481 = load i32* %arrayidx16.4.2.4, align 4
  %mul.4.2.4 = mul nsw i32 %480, %481
  %arrayidx19.4.2.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.4.2.4 = getelementptr inbounds [6 x i32]* %arrayidx19.4.2.4, i32 0, i64 2
  %482 = load i32* %arrayidx20.4.2.4, align 4
  %add.4.2.4 = add nsw i32 %482, %mul.4.2.4
  store i32 %add.4.2.4, i32* %arrayidx20.4.2.4, align 4
  br label %for.inc.4.2.4

for.inc.4.2.4:                                    ; preds = %for.inc.3.2.4
  %arrayidx11.5.2.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.5.2.4 = getelementptr inbounds [6 x i32]* %arrayidx11.5.2.4, i32 0, i64 5
  %483 = load i32* %arrayidx12.5.2.4, align 4
  %arrayidx15.5.2.4 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.2.4 = getelementptr inbounds [6 x i32]* %arrayidx15.5.2.4, i32 0, i64 2
  %484 = load i32* %arrayidx16.5.2.4, align 4
  %mul.5.2.4 = mul nsw i32 %483, %484
  %arrayidx19.5.2.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.5.2.4 = getelementptr inbounds [6 x i32]* %arrayidx19.5.2.4, i32 0, i64 2
  %485 = load i32* %arrayidx20.5.2.4, align 4
  %add.5.2.4 = add nsw i32 %485, %mul.5.2.4
  store i32 %add.5.2.4, i32* %arrayidx20.5.2.4, align 4
  br label %for.inc.5.2.4

for.inc.5.2.4:                                    ; preds = %for.inc.4.2.4
  br label %for.inc21.2.4

for.inc21.2.4:                                    ; preds = %for.inc.5.2.4
  %arrayidx.3.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx5.3.4 = getelementptr inbounds [6 x i32]* %arrayidx.3.4, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.4, align 4
  br label %for.body8.3.4

for.body8.3.4:                                    ; preds = %for.inc21.2.4
  %arrayidx11.324.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.325.4 = getelementptr inbounds [6 x i32]* %arrayidx11.324.4, i32 0, i64 0
  %486 = load i32* %arrayidx12.325.4, align 4
  %arrayidx16.326.4 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 3
  %487 = load i32* %arrayidx16.326.4, align 4
  %mul.327.4 = mul nsw i32 %486, %487
  %arrayidx19.329.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.330.4 = getelementptr inbounds [6 x i32]* %arrayidx19.329.4, i32 0, i64 3
  %488 = load i32* %arrayidx20.330.4, align 4
  %add.331.4 = add nsw i32 %488, %mul.327.4
  store i32 %add.331.4, i32* %arrayidx20.330.4, align 4
  br label %for.inc.332.4

for.inc.332.4:                                    ; preds = %for.body8.3.4
  %arrayidx11.1.3.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.1.3.4 = getelementptr inbounds [6 x i32]* %arrayidx11.1.3.4, i32 0, i64 1
  %489 = load i32* %arrayidx12.1.3.4, align 4
  %arrayidx15.1.3.4 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.3.4 = getelementptr inbounds [6 x i32]* %arrayidx15.1.3.4, i32 0, i64 3
  %490 = load i32* %arrayidx16.1.3.4, align 4
  %mul.1.3.4 = mul nsw i32 %489, %490
  %arrayidx19.1.3.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.1.3.4 = getelementptr inbounds [6 x i32]* %arrayidx19.1.3.4, i32 0, i64 3
  %491 = load i32* %arrayidx20.1.3.4, align 4
  %add.1.3.4 = add nsw i32 %491, %mul.1.3.4
  store i32 %add.1.3.4, i32* %arrayidx20.1.3.4, align 4
  br label %for.inc.1.3.4

for.inc.1.3.4:                                    ; preds = %for.inc.332.4
  %arrayidx11.2.3.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.2.3.4 = getelementptr inbounds [6 x i32]* %arrayidx11.2.3.4, i32 0, i64 2
  %492 = load i32* %arrayidx12.2.3.4, align 4
  %arrayidx15.2.3.4 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.3.4 = getelementptr inbounds [6 x i32]* %arrayidx15.2.3.4, i32 0, i64 3
  %493 = load i32* %arrayidx16.2.3.4, align 4
  %mul.2.3.4 = mul nsw i32 %492, %493
  %arrayidx19.2.3.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.2.3.4 = getelementptr inbounds [6 x i32]* %arrayidx19.2.3.4, i32 0, i64 3
  %494 = load i32* %arrayidx20.2.3.4, align 4
  %add.2.3.4 = add nsw i32 %494, %mul.2.3.4
  store i32 %add.2.3.4, i32* %arrayidx20.2.3.4, align 4
  br label %for.inc.2.3.4

for.inc.2.3.4:                                    ; preds = %for.inc.1.3.4
  %arrayidx11.3.3.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.3.3.4 = getelementptr inbounds [6 x i32]* %arrayidx11.3.3.4, i32 0, i64 3
  %495 = load i32* %arrayidx12.3.3.4, align 4
  %arrayidx15.3.3.4 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.3.4 = getelementptr inbounds [6 x i32]* %arrayidx15.3.3.4, i32 0, i64 3
  %496 = load i32* %arrayidx16.3.3.4, align 4
  %mul.3.3.4 = mul nsw i32 %495, %496
  %arrayidx19.3.3.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.3.3.4 = getelementptr inbounds [6 x i32]* %arrayidx19.3.3.4, i32 0, i64 3
  %497 = load i32* %arrayidx20.3.3.4, align 4
  %add.3.3.4 = add nsw i32 %497, %mul.3.3.4
  store i32 %add.3.3.4, i32* %arrayidx20.3.3.4, align 4
  br label %for.inc.3.3.4

for.inc.3.3.4:                                    ; preds = %for.inc.2.3.4
  %arrayidx11.4.3.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.4.3.4 = getelementptr inbounds [6 x i32]* %arrayidx11.4.3.4, i32 0, i64 4
  %498 = load i32* %arrayidx12.4.3.4, align 4
  %arrayidx15.4.3.4 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.3.4 = getelementptr inbounds [6 x i32]* %arrayidx15.4.3.4, i32 0, i64 3
  %499 = load i32* %arrayidx16.4.3.4, align 4
  %mul.4.3.4 = mul nsw i32 %498, %499
  %arrayidx19.4.3.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.4.3.4 = getelementptr inbounds [6 x i32]* %arrayidx19.4.3.4, i32 0, i64 3
  %500 = load i32* %arrayidx20.4.3.4, align 4
  %add.4.3.4 = add nsw i32 %500, %mul.4.3.4
  store i32 %add.4.3.4, i32* %arrayidx20.4.3.4, align 4
  br label %for.inc.4.3.4

for.inc.4.3.4:                                    ; preds = %for.inc.3.3.4
  %arrayidx11.5.3.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.5.3.4 = getelementptr inbounds [6 x i32]* %arrayidx11.5.3.4, i32 0, i64 5
  %501 = load i32* %arrayidx12.5.3.4, align 4
  %arrayidx15.5.3.4 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.3.4 = getelementptr inbounds [6 x i32]* %arrayidx15.5.3.4, i32 0, i64 3
  %502 = load i32* %arrayidx16.5.3.4, align 4
  %mul.5.3.4 = mul nsw i32 %501, %502
  %arrayidx19.5.3.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.5.3.4 = getelementptr inbounds [6 x i32]* %arrayidx19.5.3.4, i32 0, i64 3
  %503 = load i32* %arrayidx20.5.3.4, align 4
  %add.5.3.4 = add nsw i32 %503, %mul.5.3.4
  store i32 %add.5.3.4, i32* %arrayidx20.5.3.4, align 4
  br label %for.inc.5.3.4

for.inc.5.3.4:                                    ; preds = %for.inc.4.3.4
  br label %for.inc21.3.4

for.inc21.3.4:                                    ; preds = %for.inc.5.3.4
  %arrayidx.4.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx5.4.4 = getelementptr inbounds [6 x i32]* %arrayidx.4.4, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.4, align 4
  br label %for.body8.4.4

for.body8.4.4:                                    ; preds = %for.inc21.3.4
  %arrayidx11.434.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.435.4 = getelementptr inbounds [6 x i32]* %arrayidx11.434.4, i32 0, i64 0
  %504 = load i32* %arrayidx12.435.4, align 4
  %arrayidx16.436.4 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 4
  %505 = load i32* %arrayidx16.436.4, align 4
  %mul.437.4 = mul nsw i32 %504, %505
  %arrayidx19.439.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.440.4 = getelementptr inbounds [6 x i32]* %arrayidx19.439.4, i32 0, i64 4
  %506 = load i32* %arrayidx20.440.4, align 4
  %add.441.4 = add nsw i32 %506, %mul.437.4
  store i32 %add.441.4, i32* %arrayidx20.440.4, align 4
  br label %for.inc.442.4

for.inc.442.4:                                    ; preds = %for.body8.4.4
  %arrayidx11.1.4.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.1.4.4 = getelementptr inbounds [6 x i32]* %arrayidx11.1.4.4, i32 0, i64 1
  %507 = load i32* %arrayidx12.1.4.4, align 4
  %arrayidx15.1.4.4 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.4.4 = getelementptr inbounds [6 x i32]* %arrayidx15.1.4.4, i32 0, i64 4
  %508 = load i32* %arrayidx16.1.4.4, align 4
  %mul.1.4.4 = mul nsw i32 %507, %508
  %arrayidx19.1.4.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.1.4.4 = getelementptr inbounds [6 x i32]* %arrayidx19.1.4.4, i32 0, i64 4
  %509 = load i32* %arrayidx20.1.4.4, align 4
  %add.1.4.4 = add nsw i32 %509, %mul.1.4.4
  store i32 %add.1.4.4, i32* %arrayidx20.1.4.4, align 4
  br label %for.inc.1.4.4

for.inc.1.4.4:                                    ; preds = %for.inc.442.4
  %arrayidx11.2.4.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.2.4.4 = getelementptr inbounds [6 x i32]* %arrayidx11.2.4.4, i32 0, i64 2
  %510 = load i32* %arrayidx12.2.4.4, align 4
  %arrayidx15.2.4.4 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.4.4 = getelementptr inbounds [6 x i32]* %arrayidx15.2.4.4, i32 0, i64 4
  %511 = load i32* %arrayidx16.2.4.4, align 4
  %mul.2.4.4 = mul nsw i32 %510, %511
  %arrayidx19.2.4.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.2.4.4 = getelementptr inbounds [6 x i32]* %arrayidx19.2.4.4, i32 0, i64 4
  %512 = load i32* %arrayidx20.2.4.4, align 4
  %add.2.4.4 = add nsw i32 %512, %mul.2.4.4
  store i32 %add.2.4.4, i32* %arrayidx20.2.4.4, align 4
  br label %for.inc.2.4.4

for.inc.2.4.4:                                    ; preds = %for.inc.1.4.4
  %arrayidx11.3.4.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.3.4.4 = getelementptr inbounds [6 x i32]* %arrayidx11.3.4.4, i32 0, i64 3
  %513 = load i32* %arrayidx12.3.4.4, align 4
  %arrayidx15.3.4.4 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.4.4 = getelementptr inbounds [6 x i32]* %arrayidx15.3.4.4, i32 0, i64 4
  %514 = load i32* %arrayidx16.3.4.4, align 4
  %mul.3.4.4 = mul nsw i32 %513, %514
  %arrayidx19.3.4.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.3.4.4 = getelementptr inbounds [6 x i32]* %arrayidx19.3.4.4, i32 0, i64 4
  %515 = load i32* %arrayidx20.3.4.4, align 4
  %add.3.4.4 = add nsw i32 %515, %mul.3.4.4
  store i32 %add.3.4.4, i32* %arrayidx20.3.4.4, align 4
  br label %for.inc.3.4.4

for.inc.3.4.4:                                    ; preds = %for.inc.2.4.4
  %arrayidx11.4.4.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.4.4.4 = getelementptr inbounds [6 x i32]* %arrayidx11.4.4.4, i32 0, i64 4
  %516 = load i32* %arrayidx12.4.4.4, align 4
  %arrayidx15.4.4.4 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.4.4 = getelementptr inbounds [6 x i32]* %arrayidx15.4.4.4, i32 0, i64 4
  %517 = load i32* %arrayidx16.4.4.4, align 4
  %mul.4.4.4 = mul nsw i32 %516, %517
  %arrayidx19.4.4.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.4.4.4 = getelementptr inbounds [6 x i32]* %arrayidx19.4.4.4, i32 0, i64 4
  %518 = load i32* %arrayidx20.4.4.4, align 4
  %add.4.4.4 = add nsw i32 %518, %mul.4.4.4
  store i32 %add.4.4.4, i32* %arrayidx20.4.4.4, align 4
  br label %for.inc.4.4.4

for.inc.4.4.4:                                    ; preds = %for.inc.3.4.4
  %arrayidx11.5.4.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.5.4.4 = getelementptr inbounds [6 x i32]* %arrayidx11.5.4.4, i32 0, i64 5
  %519 = load i32* %arrayidx12.5.4.4, align 4
  %arrayidx15.5.4.4 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.4.4 = getelementptr inbounds [6 x i32]* %arrayidx15.5.4.4, i32 0, i64 4
  %520 = load i32* %arrayidx16.5.4.4, align 4
  %mul.5.4.4 = mul nsw i32 %519, %520
  %arrayidx19.5.4.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.5.4.4 = getelementptr inbounds [6 x i32]* %arrayidx19.5.4.4, i32 0, i64 4
  %521 = load i32* %arrayidx20.5.4.4, align 4
  %add.5.4.4 = add nsw i32 %521, %mul.5.4.4
  store i32 %add.5.4.4, i32* %arrayidx20.5.4.4, align 4
  br label %for.inc.5.4.4

for.inc.5.4.4:                                    ; preds = %for.inc.4.4.4
  br label %for.inc21.4.4

for.inc21.4.4:                                    ; preds = %for.inc.5.4.4
  %arrayidx.5.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx5.5.4 = getelementptr inbounds [6 x i32]* %arrayidx.5.4, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.4, align 4
  br label %for.body8.5.4

for.body8.5.4:                                    ; preds = %for.inc21.4.4
  %arrayidx11.544.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.545.4 = getelementptr inbounds [6 x i32]* %arrayidx11.544.4, i32 0, i64 0
  %522 = load i32* %arrayidx12.545.4, align 4
  %arrayidx16.546.4 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 5
  %523 = load i32* %arrayidx16.546.4, align 4
  %mul.547.4 = mul nsw i32 %522, %523
  %arrayidx19.549.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.550.4 = getelementptr inbounds [6 x i32]* %arrayidx19.549.4, i32 0, i64 5
  %524 = load i32* %arrayidx20.550.4, align 4
  %add.551.4 = add nsw i32 %524, %mul.547.4
  store i32 %add.551.4, i32* %arrayidx20.550.4, align 4
  br label %for.inc.552.4

for.inc.552.4:                                    ; preds = %for.body8.5.4
  %arrayidx11.1.5.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.1.5.4 = getelementptr inbounds [6 x i32]* %arrayidx11.1.5.4, i32 0, i64 1
  %525 = load i32* %arrayidx12.1.5.4, align 4
  %arrayidx15.1.5.4 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.5.4 = getelementptr inbounds [6 x i32]* %arrayidx15.1.5.4, i32 0, i64 5
  %526 = load i32* %arrayidx16.1.5.4, align 4
  %mul.1.5.4 = mul nsw i32 %525, %526
  %arrayidx19.1.5.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.1.5.4 = getelementptr inbounds [6 x i32]* %arrayidx19.1.5.4, i32 0, i64 5
  %527 = load i32* %arrayidx20.1.5.4, align 4
  %add.1.5.4 = add nsw i32 %527, %mul.1.5.4
  store i32 %add.1.5.4, i32* %arrayidx20.1.5.4, align 4
  br label %for.inc.1.5.4

for.inc.1.5.4:                                    ; preds = %for.inc.552.4
  %arrayidx11.2.5.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.2.5.4 = getelementptr inbounds [6 x i32]* %arrayidx11.2.5.4, i32 0, i64 2
  %528 = load i32* %arrayidx12.2.5.4, align 4
  %arrayidx15.2.5.4 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.5.4 = getelementptr inbounds [6 x i32]* %arrayidx15.2.5.4, i32 0, i64 5
  %529 = load i32* %arrayidx16.2.5.4, align 4
  %mul.2.5.4 = mul nsw i32 %528, %529
  %arrayidx19.2.5.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.2.5.4 = getelementptr inbounds [6 x i32]* %arrayidx19.2.5.4, i32 0, i64 5
  %530 = load i32* %arrayidx20.2.5.4, align 4
  %add.2.5.4 = add nsw i32 %530, %mul.2.5.4
  store i32 %add.2.5.4, i32* %arrayidx20.2.5.4, align 4
  br label %for.inc.2.5.4

for.inc.2.5.4:                                    ; preds = %for.inc.1.5.4
  %arrayidx11.3.5.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.3.5.4 = getelementptr inbounds [6 x i32]* %arrayidx11.3.5.4, i32 0, i64 3
  %531 = load i32* %arrayidx12.3.5.4, align 4
  %arrayidx15.3.5.4 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.5.4 = getelementptr inbounds [6 x i32]* %arrayidx15.3.5.4, i32 0, i64 5
  %532 = load i32* %arrayidx16.3.5.4, align 4
  %mul.3.5.4 = mul nsw i32 %531, %532
  %arrayidx19.3.5.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.3.5.4 = getelementptr inbounds [6 x i32]* %arrayidx19.3.5.4, i32 0, i64 5
  %533 = load i32* %arrayidx20.3.5.4, align 4
  %add.3.5.4 = add nsw i32 %533, %mul.3.5.4
  store i32 %add.3.5.4, i32* %arrayidx20.3.5.4, align 4
  br label %for.inc.3.5.4

for.inc.3.5.4:                                    ; preds = %for.inc.2.5.4
  %arrayidx11.4.5.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.4.5.4 = getelementptr inbounds [6 x i32]* %arrayidx11.4.5.4, i32 0, i64 4
  %534 = load i32* %arrayidx12.4.5.4, align 4
  %arrayidx15.4.5.4 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.5.4 = getelementptr inbounds [6 x i32]* %arrayidx15.4.5.4, i32 0, i64 5
  %535 = load i32* %arrayidx16.4.5.4, align 4
  %mul.4.5.4 = mul nsw i32 %534, %535
  %arrayidx19.4.5.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.4.5.4 = getelementptr inbounds [6 x i32]* %arrayidx19.4.5.4, i32 0, i64 5
  %536 = load i32* %arrayidx20.4.5.4, align 4
  %add.4.5.4 = add nsw i32 %536, %mul.4.5.4
  store i32 %add.4.5.4, i32* %arrayidx20.4.5.4, align 4
  br label %for.inc.4.5.4

for.inc.4.5.4:                                    ; preds = %for.inc.3.5.4
  %arrayidx11.5.5.4 = getelementptr inbounds [6 x i32]* %a, i64 4
  %arrayidx12.5.5.4 = getelementptr inbounds [6 x i32]* %arrayidx11.5.5.4, i32 0, i64 5
  %537 = load i32* %arrayidx12.5.5.4, align 4
  %arrayidx15.5.5.4 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.5.4 = getelementptr inbounds [6 x i32]* %arrayidx15.5.5.4, i32 0, i64 5
  %538 = load i32* %arrayidx16.5.5.4, align 4
  %mul.5.5.4 = mul nsw i32 %537, %538
  %arrayidx19.5.5.4 = getelementptr inbounds [6 x i32]* %c, i64 4
  %arrayidx20.5.5.4 = getelementptr inbounds [6 x i32]* %arrayidx19.5.5.4, i32 0, i64 5
  %539 = load i32* %arrayidx20.5.5.4, align 4
  %add.5.5.4 = add nsw i32 %539, %mul.5.5.4
  store i32 %add.5.5.4, i32* %arrayidx20.5.5.4, align 4
  br label %for.inc.5.5.4

for.inc.5.5.4:                                    ; preds = %for.inc.4.5.4
  br label %for.inc21.5.4

for.inc21.5.4:                                    ; preds = %for.inc.5.5.4
  br label %for.inc24.4

for.inc24.4:                                      ; preds = %for.inc21.5.4
  br label %for.body3.5

for.body3.5:                                      ; preds = %for.inc24.4
  %arrayidx.5282 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx5.5283 = getelementptr inbounds [6 x i32]* %arrayidx.5282, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.5283, align 4
  br label %for.body8.5291

for.body8.5291:                                   ; preds = %for.body3.5
  %arrayidx11.5284 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.5285 = getelementptr inbounds [6 x i32]* %arrayidx11.5284, i32 0, i64 0
  %540 = load i32* %arrayidx12.5285, align 4
  %arrayidx16.5286 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 0
  %541 = load i32* %arrayidx16.5286, align 4
  %mul.5287 = mul nsw i32 %540, %541
  %arrayidx19.5288 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.5289 = getelementptr inbounds [6 x i32]* %arrayidx19.5288, i32 0, i64 0
  %542 = load i32* %arrayidx20.5289, align 4
  %add.5290 = add nsw i32 %542, %mul.5287
  store i32 %add.5290, i32* %arrayidx20.5289, align 4
  br label %for.inc.5300

for.inc.5300:                                     ; preds = %for.body8.5291
  %arrayidx11.1.5292 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.1.5293 = getelementptr inbounds [6 x i32]* %arrayidx11.1.5292, i32 0, i64 1
  %543 = load i32* %arrayidx12.1.5293, align 4
  %arrayidx15.1.5294 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.5295 = getelementptr inbounds [6 x i32]* %arrayidx15.1.5294, i32 0, i64 0
  %544 = load i32* %arrayidx16.1.5295, align 4
  %mul.1.5296 = mul nsw i32 %543, %544
  %arrayidx19.1.5297 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.1.5298 = getelementptr inbounds [6 x i32]* %arrayidx19.1.5297, i32 0, i64 0
  %545 = load i32* %arrayidx20.1.5298, align 4
  %add.1.5299 = add nsw i32 %545, %mul.1.5296
  store i32 %add.1.5299, i32* %arrayidx20.1.5298, align 4
  br label %for.inc.1.5309

for.inc.1.5309:                                   ; preds = %for.inc.5300
  %arrayidx11.2.5301 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.2.5302 = getelementptr inbounds [6 x i32]* %arrayidx11.2.5301, i32 0, i64 2
  %546 = load i32* %arrayidx12.2.5302, align 4
  %arrayidx15.2.5303 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.5304 = getelementptr inbounds [6 x i32]* %arrayidx15.2.5303, i32 0, i64 0
  %547 = load i32* %arrayidx16.2.5304, align 4
  %mul.2.5305 = mul nsw i32 %546, %547
  %arrayidx19.2.5306 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.2.5307 = getelementptr inbounds [6 x i32]* %arrayidx19.2.5306, i32 0, i64 0
  %548 = load i32* %arrayidx20.2.5307, align 4
  %add.2.5308 = add nsw i32 %548, %mul.2.5305
  store i32 %add.2.5308, i32* %arrayidx20.2.5307, align 4
  br label %for.inc.2.5318

for.inc.2.5318:                                   ; preds = %for.inc.1.5309
  %arrayidx11.3.5310 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.3.5311 = getelementptr inbounds [6 x i32]* %arrayidx11.3.5310, i32 0, i64 3
  %549 = load i32* %arrayidx12.3.5311, align 4
  %arrayidx15.3.5312 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.5313 = getelementptr inbounds [6 x i32]* %arrayidx15.3.5312, i32 0, i64 0
  %550 = load i32* %arrayidx16.3.5313, align 4
  %mul.3.5314 = mul nsw i32 %549, %550
  %arrayidx19.3.5315 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.3.5316 = getelementptr inbounds [6 x i32]* %arrayidx19.3.5315, i32 0, i64 0
  %551 = load i32* %arrayidx20.3.5316, align 4
  %add.3.5317 = add nsw i32 %551, %mul.3.5314
  store i32 %add.3.5317, i32* %arrayidx20.3.5316, align 4
  br label %for.inc.3.5327

for.inc.3.5327:                                   ; preds = %for.inc.2.5318
  %arrayidx11.4.5319 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.4.5320 = getelementptr inbounds [6 x i32]* %arrayidx11.4.5319, i32 0, i64 4
  %552 = load i32* %arrayidx12.4.5320, align 4
  %arrayidx15.4.5321 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.5322 = getelementptr inbounds [6 x i32]* %arrayidx15.4.5321, i32 0, i64 0
  %553 = load i32* %arrayidx16.4.5322, align 4
  %mul.4.5323 = mul nsw i32 %552, %553
  %arrayidx19.4.5324 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.4.5325 = getelementptr inbounds [6 x i32]* %arrayidx19.4.5324, i32 0, i64 0
  %554 = load i32* %arrayidx20.4.5325, align 4
  %add.4.5326 = add nsw i32 %554, %mul.4.5323
  store i32 %add.4.5326, i32* %arrayidx20.4.5325, align 4
  br label %for.inc.4.5336

for.inc.4.5336:                                   ; preds = %for.inc.3.5327
  %arrayidx11.5.5328 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.5.5329 = getelementptr inbounds [6 x i32]* %arrayidx11.5.5328, i32 0, i64 5
  %555 = load i32* %arrayidx12.5.5329, align 4
  %arrayidx15.5.5330 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.5331 = getelementptr inbounds [6 x i32]* %arrayidx15.5.5330, i32 0, i64 0
  %556 = load i32* %arrayidx16.5.5331, align 4
  %mul.5.5332 = mul nsw i32 %555, %556
  %arrayidx19.5.5333 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.5.5334 = getelementptr inbounds [6 x i32]* %arrayidx19.5.5333, i32 0, i64 0
  %557 = load i32* %arrayidx20.5.5334, align 4
  %add.5.5335 = add nsw i32 %557, %mul.5.5332
  store i32 %add.5.5335, i32* %arrayidx20.5.5334, align 4
  br label %for.inc.5.5337

for.inc.5.5337:                                   ; preds = %for.inc.4.5336
  br label %for.inc21.5338

for.inc21.5338:                                   ; preds = %for.inc.5.5337
  %arrayidx.1.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx5.1.5 = getelementptr inbounds [6 x i32]* %arrayidx.1.5, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.5, align 4
  br label %for.body8.1.5

for.body8.1.5:                                    ; preds = %for.inc21.5338
  %arrayidx11.14.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.15.5 = getelementptr inbounds [6 x i32]* %arrayidx11.14.5, i32 0, i64 0
  %558 = load i32* %arrayidx12.15.5, align 4
  %arrayidx16.16.5 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 1
  %559 = load i32* %arrayidx16.16.5, align 4
  %mul.17.5 = mul nsw i32 %558, %559
  %arrayidx19.19.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.110.5 = getelementptr inbounds [6 x i32]* %arrayidx19.19.5, i32 0, i64 1
  %560 = load i32* %arrayidx20.110.5, align 4
  %add.111.5 = add nsw i32 %560, %mul.17.5
  store i32 %add.111.5, i32* %arrayidx20.110.5, align 4
  br label %for.inc.112.5

for.inc.112.5:                                    ; preds = %for.body8.1.5
  %arrayidx11.1.1.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.1.1.5 = getelementptr inbounds [6 x i32]* %arrayidx11.1.1.5, i32 0, i64 1
  %561 = load i32* %arrayidx12.1.1.5, align 4
  %arrayidx15.1.1.5 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.1.5 = getelementptr inbounds [6 x i32]* %arrayidx15.1.1.5, i32 0, i64 1
  %562 = load i32* %arrayidx16.1.1.5, align 4
  %mul.1.1.5 = mul nsw i32 %561, %562
  %arrayidx19.1.1.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.1.1.5 = getelementptr inbounds [6 x i32]* %arrayidx19.1.1.5, i32 0, i64 1
  %563 = load i32* %arrayidx20.1.1.5, align 4
  %add.1.1.5 = add nsw i32 %563, %mul.1.1.5
  store i32 %add.1.1.5, i32* %arrayidx20.1.1.5, align 4
  br label %for.inc.1.1.5

for.inc.1.1.5:                                    ; preds = %for.inc.112.5
  %arrayidx11.2.1.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.2.1.5 = getelementptr inbounds [6 x i32]* %arrayidx11.2.1.5, i32 0, i64 2
  %564 = load i32* %arrayidx12.2.1.5, align 4
  %arrayidx15.2.1.5 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.1.5 = getelementptr inbounds [6 x i32]* %arrayidx15.2.1.5, i32 0, i64 1
  %565 = load i32* %arrayidx16.2.1.5, align 4
  %mul.2.1.5 = mul nsw i32 %564, %565
  %arrayidx19.2.1.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.2.1.5 = getelementptr inbounds [6 x i32]* %arrayidx19.2.1.5, i32 0, i64 1
  %566 = load i32* %arrayidx20.2.1.5, align 4
  %add.2.1.5 = add nsw i32 %566, %mul.2.1.5
  store i32 %add.2.1.5, i32* %arrayidx20.2.1.5, align 4
  br label %for.inc.2.1.5

for.inc.2.1.5:                                    ; preds = %for.inc.1.1.5
  %arrayidx11.3.1.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.3.1.5 = getelementptr inbounds [6 x i32]* %arrayidx11.3.1.5, i32 0, i64 3
  %567 = load i32* %arrayidx12.3.1.5, align 4
  %arrayidx15.3.1.5 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.1.5 = getelementptr inbounds [6 x i32]* %arrayidx15.3.1.5, i32 0, i64 1
  %568 = load i32* %arrayidx16.3.1.5, align 4
  %mul.3.1.5 = mul nsw i32 %567, %568
  %arrayidx19.3.1.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.3.1.5 = getelementptr inbounds [6 x i32]* %arrayidx19.3.1.5, i32 0, i64 1
  %569 = load i32* %arrayidx20.3.1.5, align 4
  %add.3.1.5 = add nsw i32 %569, %mul.3.1.5
  store i32 %add.3.1.5, i32* %arrayidx20.3.1.5, align 4
  br label %for.inc.3.1.5

for.inc.3.1.5:                                    ; preds = %for.inc.2.1.5
  %arrayidx11.4.1.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.4.1.5 = getelementptr inbounds [6 x i32]* %arrayidx11.4.1.5, i32 0, i64 4
  %570 = load i32* %arrayidx12.4.1.5, align 4
  %arrayidx15.4.1.5 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.1.5 = getelementptr inbounds [6 x i32]* %arrayidx15.4.1.5, i32 0, i64 1
  %571 = load i32* %arrayidx16.4.1.5, align 4
  %mul.4.1.5 = mul nsw i32 %570, %571
  %arrayidx19.4.1.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.4.1.5 = getelementptr inbounds [6 x i32]* %arrayidx19.4.1.5, i32 0, i64 1
  %572 = load i32* %arrayidx20.4.1.5, align 4
  %add.4.1.5 = add nsw i32 %572, %mul.4.1.5
  store i32 %add.4.1.5, i32* %arrayidx20.4.1.5, align 4
  br label %for.inc.4.1.5

for.inc.4.1.5:                                    ; preds = %for.inc.3.1.5
  %arrayidx11.5.1.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.5.1.5 = getelementptr inbounds [6 x i32]* %arrayidx11.5.1.5, i32 0, i64 5
  %573 = load i32* %arrayidx12.5.1.5, align 4
  %arrayidx15.5.1.5 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.1.5 = getelementptr inbounds [6 x i32]* %arrayidx15.5.1.5, i32 0, i64 1
  %574 = load i32* %arrayidx16.5.1.5, align 4
  %mul.5.1.5 = mul nsw i32 %573, %574
  %arrayidx19.5.1.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.5.1.5 = getelementptr inbounds [6 x i32]* %arrayidx19.5.1.5, i32 0, i64 1
  %575 = load i32* %arrayidx20.5.1.5, align 4
  %add.5.1.5 = add nsw i32 %575, %mul.5.1.5
  store i32 %add.5.1.5, i32* %arrayidx20.5.1.5, align 4
  br label %for.inc.5.1.5

for.inc.5.1.5:                                    ; preds = %for.inc.4.1.5
  br label %for.inc21.1.5

for.inc21.1.5:                                    ; preds = %for.inc.5.1.5
  %arrayidx.2.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx5.2.5 = getelementptr inbounds [6 x i32]* %arrayidx.2.5, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.5, align 4
  br label %for.body8.2.5

for.body8.2.5:                                    ; preds = %for.inc21.1.5
  %arrayidx11.214.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.215.5 = getelementptr inbounds [6 x i32]* %arrayidx11.214.5, i32 0, i64 0
  %576 = load i32* %arrayidx12.215.5, align 4
  %arrayidx16.216.5 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 2
  %577 = load i32* %arrayidx16.216.5, align 4
  %mul.217.5 = mul nsw i32 %576, %577
  %arrayidx19.219.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.220.5 = getelementptr inbounds [6 x i32]* %arrayidx19.219.5, i32 0, i64 2
  %578 = load i32* %arrayidx20.220.5, align 4
  %add.221.5 = add nsw i32 %578, %mul.217.5
  store i32 %add.221.5, i32* %arrayidx20.220.5, align 4
  br label %for.inc.222.5

for.inc.222.5:                                    ; preds = %for.body8.2.5
  %arrayidx11.1.2.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.1.2.5 = getelementptr inbounds [6 x i32]* %arrayidx11.1.2.5, i32 0, i64 1
  %579 = load i32* %arrayidx12.1.2.5, align 4
  %arrayidx15.1.2.5 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.2.5 = getelementptr inbounds [6 x i32]* %arrayidx15.1.2.5, i32 0, i64 2
  %580 = load i32* %arrayidx16.1.2.5, align 4
  %mul.1.2.5 = mul nsw i32 %579, %580
  %arrayidx19.1.2.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.1.2.5 = getelementptr inbounds [6 x i32]* %arrayidx19.1.2.5, i32 0, i64 2
  %581 = load i32* %arrayidx20.1.2.5, align 4
  %add.1.2.5 = add nsw i32 %581, %mul.1.2.5
  store i32 %add.1.2.5, i32* %arrayidx20.1.2.5, align 4
  br label %for.inc.1.2.5

for.inc.1.2.5:                                    ; preds = %for.inc.222.5
  %arrayidx11.2.2.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.2.2.5 = getelementptr inbounds [6 x i32]* %arrayidx11.2.2.5, i32 0, i64 2
  %582 = load i32* %arrayidx12.2.2.5, align 4
  %arrayidx15.2.2.5 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.2.5 = getelementptr inbounds [6 x i32]* %arrayidx15.2.2.5, i32 0, i64 2
  %583 = load i32* %arrayidx16.2.2.5, align 4
  %mul.2.2.5 = mul nsw i32 %582, %583
  %arrayidx19.2.2.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.2.2.5 = getelementptr inbounds [6 x i32]* %arrayidx19.2.2.5, i32 0, i64 2
  %584 = load i32* %arrayidx20.2.2.5, align 4
  %add.2.2.5 = add nsw i32 %584, %mul.2.2.5
  store i32 %add.2.2.5, i32* %arrayidx20.2.2.5, align 4
  br label %for.inc.2.2.5

for.inc.2.2.5:                                    ; preds = %for.inc.1.2.5
  %arrayidx11.3.2.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.3.2.5 = getelementptr inbounds [6 x i32]* %arrayidx11.3.2.5, i32 0, i64 3
  %585 = load i32* %arrayidx12.3.2.5, align 4
  %arrayidx15.3.2.5 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.2.5 = getelementptr inbounds [6 x i32]* %arrayidx15.3.2.5, i32 0, i64 2
  %586 = load i32* %arrayidx16.3.2.5, align 4
  %mul.3.2.5 = mul nsw i32 %585, %586
  %arrayidx19.3.2.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.3.2.5 = getelementptr inbounds [6 x i32]* %arrayidx19.3.2.5, i32 0, i64 2
  %587 = load i32* %arrayidx20.3.2.5, align 4
  %add.3.2.5 = add nsw i32 %587, %mul.3.2.5
  store i32 %add.3.2.5, i32* %arrayidx20.3.2.5, align 4
  br label %for.inc.3.2.5

for.inc.3.2.5:                                    ; preds = %for.inc.2.2.5
  %arrayidx11.4.2.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.4.2.5 = getelementptr inbounds [6 x i32]* %arrayidx11.4.2.5, i32 0, i64 4
  %588 = load i32* %arrayidx12.4.2.5, align 4
  %arrayidx15.4.2.5 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.2.5 = getelementptr inbounds [6 x i32]* %arrayidx15.4.2.5, i32 0, i64 2
  %589 = load i32* %arrayidx16.4.2.5, align 4
  %mul.4.2.5 = mul nsw i32 %588, %589
  %arrayidx19.4.2.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.4.2.5 = getelementptr inbounds [6 x i32]* %arrayidx19.4.2.5, i32 0, i64 2
  %590 = load i32* %arrayidx20.4.2.5, align 4
  %add.4.2.5 = add nsw i32 %590, %mul.4.2.5
  store i32 %add.4.2.5, i32* %arrayidx20.4.2.5, align 4
  br label %for.inc.4.2.5

for.inc.4.2.5:                                    ; preds = %for.inc.3.2.5
  %arrayidx11.5.2.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.5.2.5 = getelementptr inbounds [6 x i32]* %arrayidx11.5.2.5, i32 0, i64 5
  %591 = load i32* %arrayidx12.5.2.5, align 4
  %arrayidx15.5.2.5 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.2.5 = getelementptr inbounds [6 x i32]* %arrayidx15.5.2.5, i32 0, i64 2
  %592 = load i32* %arrayidx16.5.2.5, align 4
  %mul.5.2.5 = mul nsw i32 %591, %592
  %arrayidx19.5.2.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.5.2.5 = getelementptr inbounds [6 x i32]* %arrayidx19.5.2.5, i32 0, i64 2
  %593 = load i32* %arrayidx20.5.2.5, align 4
  %add.5.2.5 = add nsw i32 %593, %mul.5.2.5
  store i32 %add.5.2.5, i32* %arrayidx20.5.2.5, align 4
  br label %for.inc.5.2.5

for.inc.5.2.5:                                    ; preds = %for.inc.4.2.5
  br label %for.inc21.2.5

for.inc21.2.5:                                    ; preds = %for.inc.5.2.5
  %arrayidx.3.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx5.3.5 = getelementptr inbounds [6 x i32]* %arrayidx.3.5, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.5, align 4
  br label %for.body8.3.5

for.body8.3.5:                                    ; preds = %for.inc21.2.5
  %arrayidx11.324.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.325.5 = getelementptr inbounds [6 x i32]* %arrayidx11.324.5, i32 0, i64 0
  %594 = load i32* %arrayidx12.325.5, align 4
  %arrayidx16.326.5 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 3
  %595 = load i32* %arrayidx16.326.5, align 4
  %mul.327.5 = mul nsw i32 %594, %595
  %arrayidx19.329.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.330.5 = getelementptr inbounds [6 x i32]* %arrayidx19.329.5, i32 0, i64 3
  %596 = load i32* %arrayidx20.330.5, align 4
  %add.331.5 = add nsw i32 %596, %mul.327.5
  store i32 %add.331.5, i32* %arrayidx20.330.5, align 4
  br label %for.inc.332.5

for.inc.332.5:                                    ; preds = %for.body8.3.5
  %arrayidx11.1.3.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.1.3.5 = getelementptr inbounds [6 x i32]* %arrayidx11.1.3.5, i32 0, i64 1
  %597 = load i32* %arrayidx12.1.3.5, align 4
  %arrayidx15.1.3.5 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.3.5 = getelementptr inbounds [6 x i32]* %arrayidx15.1.3.5, i32 0, i64 3
  %598 = load i32* %arrayidx16.1.3.5, align 4
  %mul.1.3.5 = mul nsw i32 %597, %598
  %arrayidx19.1.3.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.1.3.5 = getelementptr inbounds [6 x i32]* %arrayidx19.1.3.5, i32 0, i64 3
  %599 = load i32* %arrayidx20.1.3.5, align 4
  %add.1.3.5 = add nsw i32 %599, %mul.1.3.5
  store i32 %add.1.3.5, i32* %arrayidx20.1.3.5, align 4
  br label %for.inc.1.3.5

for.inc.1.3.5:                                    ; preds = %for.inc.332.5
  %arrayidx11.2.3.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.2.3.5 = getelementptr inbounds [6 x i32]* %arrayidx11.2.3.5, i32 0, i64 2
  %600 = load i32* %arrayidx12.2.3.5, align 4
  %arrayidx15.2.3.5 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.3.5 = getelementptr inbounds [6 x i32]* %arrayidx15.2.3.5, i32 0, i64 3
  %601 = load i32* %arrayidx16.2.3.5, align 4
  %mul.2.3.5 = mul nsw i32 %600, %601
  %arrayidx19.2.3.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.2.3.5 = getelementptr inbounds [6 x i32]* %arrayidx19.2.3.5, i32 0, i64 3
  %602 = load i32* %arrayidx20.2.3.5, align 4
  %add.2.3.5 = add nsw i32 %602, %mul.2.3.5
  store i32 %add.2.3.5, i32* %arrayidx20.2.3.5, align 4
  br label %for.inc.2.3.5

for.inc.2.3.5:                                    ; preds = %for.inc.1.3.5
  %arrayidx11.3.3.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.3.3.5 = getelementptr inbounds [6 x i32]* %arrayidx11.3.3.5, i32 0, i64 3
  %603 = load i32* %arrayidx12.3.3.5, align 4
  %arrayidx15.3.3.5 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.3.5 = getelementptr inbounds [6 x i32]* %arrayidx15.3.3.5, i32 0, i64 3
  %604 = load i32* %arrayidx16.3.3.5, align 4
  %mul.3.3.5 = mul nsw i32 %603, %604
  %arrayidx19.3.3.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.3.3.5 = getelementptr inbounds [6 x i32]* %arrayidx19.3.3.5, i32 0, i64 3
  %605 = load i32* %arrayidx20.3.3.5, align 4
  %add.3.3.5 = add nsw i32 %605, %mul.3.3.5
  store i32 %add.3.3.5, i32* %arrayidx20.3.3.5, align 4
  br label %for.inc.3.3.5

for.inc.3.3.5:                                    ; preds = %for.inc.2.3.5
  %arrayidx11.4.3.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.4.3.5 = getelementptr inbounds [6 x i32]* %arrayidx11.4.3.5, i32 0, i64 4
  %606 = load i32* %arrayidx12.4.3.5, align 4
  %arrayidx15.4.3.5 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.3.5 = getelementptr inbounds [6 x i32]* %arrayidx15.4.3.5, i32 0, i64 3
  %607 = load i32* %arrayidx16.4.3.5, align 4
  %mul.4.3.5 = mul nsw i32 %606, %607
  %arrayidx19.4.3.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.4.3.5 = getelementptr inbounds [6 x i32]* %arrayidx19.4.3.5, i32 0, i64 3
  %608 = load i32* %arrayidx20.4.3.5, align 4
  %add.4.3.5 = add nsw i32 %608, %mul.4.3.5
  store i32 %add.4.3.5, i32* %arrayidx20.4.3.5, align 4
  br label %for.inc.4.3.5

for.inc.4.3.5:                                    ; preds = %for.inc.3.3.5
  %arrayidx11.5.3.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.5.3.5 = getelementptr inbounds [6 x i32]* %arrayidx11.5.3.5, i32 0, i64 5
  %609 = load i32* %arrayidx12.5.3.5, align 4
  %arrayidx15.5.3.5 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.3.5 = getelementptr inbounds [6 x i32]* %arrayidx15.5.3.5, i32 0, i64 3
  %610 = load i32* %arrayidx16.5.3.5, align 4
  %mul.5.3.5 = mul nsw i32 %609, %610
  %arrayidx19.5.3.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.5.3.5 = getelementptr inbounds [6 x i32]* %arrayidx19.5.3.5, i32 0, i64 3
  %611 = load i32* %arrayidx20.5.3.5, align 4
  %add.5.3.5 = add nsw i32 %611, %mul.5.3.5
  store i32 %add.5.3.5, i32* %arrayidx20.5.3.5, align 4
  br label %for.inc.5.3.5

for.inc.5.3.5:                                    ; preds = %for.inc.4.3.5
  br label %for.inc21.3.5

for.inc21.3.5:                                    ; preds = %for.inc.5.3.5
  %arrayidx.4.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx5.4.5 = getelementptr inbounds [6 x i32]* %arrayidx.4.5, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.5, align 4
  br label %for.body8.4.5

for.body8.4.5:                                    ; preds = %for.inc21.3.5
  %arrayidx11.434.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.435.5 = getelementptr inbounds [6 x i32]* %arrayidx11.434.5, i32 0, i64 0
  %612 = load i32* %arrayidx12.435.5, align 4
  %arrayidx16.436.5 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 4
  %613 = load i32* %arrayidx16.436.5, align 4
  %mul.437.5 = mul nsw i32 %612, %613
  %arrayidx19.439.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.440.5 = getelementptr inbounds [6 x i32]* %arrayidx19.439.5, i32 0, i64 4
  %614 = load i32* %arrayidx20.440.5, align 4
  %add.441.5 = add nsw i32 %614, %mul.437.5
  store i32 %add.441.5, i32* %arrayidx20.440.5, align 4
  br label %for.inc.442.5

for.inc.442.5:                                    ; preds = %for.body8.4.5
  %arrayidx11.1.4.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.1.4.5 = getelementptr inbounds [6 x i32]* %arrayidx11.1.4.5, i32 0, i64 1
  %615 = load i32* %arrayidx12.1.4.5, align 4
  %arrayidx15.1.4.5 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.4.5 = getelementptr inbounds [6 x i32]* %arrayidx15.1.4.5, i32 0, i64 4
  %616 = load i32* %arrayidx16.1.4.5, align 4
  %mul.1.4.5 = mul nsw i32 %615, %616
  %arrayidx19.1.4.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.1.4.5 = getelementptr inbounds [6 x i32]* %arrayidx19.1.4.5, i32 0, i64 4
  %617 = load i32* %arrayidx20.1.4.5, align 4
  %add.1.4.5 = add nsw i32 %617, %mul.1.4.5
  store i32 %add.1.4.5, i32* %arrayidx20.1.4.5, align 4
  br label %for.inc.1.4.5

for.inc.1.4.5:                                    ; preds = %for.inc.442.5
  %arrayidx11.2.4.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.2.4.5 = getelementptr inbounds [6 x i32]* %arrayidx11.2.4.5, i32 0, i64 2
  %618 = load i32* %arrayidx12.2.4.5, align 4
  %arrayidx15.2.4.5 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.4.5 = getelementptr inbounds [6 x i32]* %arrayidx15.2.4.5, i32 0, i64 4
  %619 = load i32* %arrayidx16.2.4.5, align 4
  %mul.2.4.5 = mul nsw i32 %618, %619
  %arrayidx19.2.4.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.2.4.5 = getelementptr inbounds [6 x i32]* %arrayidx19.2.4.5, i32 0, i64 4
  %620 = load i32* %arrayidx20.2.4.5, align 4
  %add.2.4.5 = add nsw i32 %620, %mul.2.4.5
  store i32 %add.2.4.5, i32* %arrayidx20.2.4.5, align 4
  br label %for.inc.2.4.5

for.inc.2.4.5:                                    ; preds = %for.inc.1.4.5
  %arrayidx11.3.4.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.3.4.5 = getelementptr inbounds [6 x i32]* %arrayidx11.3.4.5, i32 0, i64 3
  %621 = load i32* %arrayidx12.3.4.5, align 4
  %arrayidx15.3.4.5 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.4.5 = getelementptr inbounds [6 x i32]* %arrayidx15.3.4.5, i32 0, i64 4
  %622 = load i32* %arrayidx16.3.4.5, align 4
  %mul.3.4.5 = mul nsw i32 %621, %622
  %arrayidx19.3.4.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.3.4.5 = getelementptr inbounds [6 x i32]* %arrayidx19.3.4.5, i32 0, i64 4
  %623 = load i32* %arrayidx20.3.4.5, align 4
  %add.3.4.5 = add nsw i32 %623, %mul.3.4.5
  store i32 %add.3.4.5, i32* %arrayidx20.3.4.5, align 4
  br label %for.inc.3.4.5

for.inc.3.4.5:                                    ; preds = %for.inc.2.4.5
  %arrayidx11.4.4.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.4.4.5 = getelementptr inbounds [6 x i32]* %arrayidx11.4.4.5, i32 0, i64 4
  %624 = load i32* %arrayidx12.4.4.5, align 4
  %arrayidx15.4.4.5 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.4.5 = getelementptr inbounds [6 x i32]* %arrayidx15.4.4.5, i32 0, i64 4
  %625 = load i32* %arrayidx16.4.4.5, align 4
  %mul.4.4.5 = mul nsw i32 %624, %625
  %arrayidx19.4.4.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.4.4.5 = getelementptr inbounds [6 x i32]* %arrayidx19.4.4.5, i32 0, i64 4
  %626 = load i32* %arrayidx20.4.4.5, align 4
  %add.4.4.5 = add nsw i32 %626, %mul.4.4.5
  store i32 %add.4.4.5, i32* %arrayidx20.4.4.5, align 4
  br label %for.inc.4.4.5

for.inc.4.4.5:                                    ; preds = %for.inc.3.4.5
  %arrayidx11.5.4.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.5.4.5 = getelementptr inbounds [6 x i32]* %arrayidx11.5.4.5, i32 0, i64 5
  %627 = load i32* %arrayidx12.5.4.5, align 4
  %arrayidx15.5.4.5 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.4.5 = getelementptr inbounds [6 x i32]* %arrayidx15.5.4.5, i32 0, i64 4
  %628 = load i32* %arrayidx16.5.4.5, align 4
  %mul.5.4.5 = mul nsw i32 %627, %628
  %arrayidx19.5.4.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.5.4.5 = getelementptr inbounds [6 x i32]* %arrayidx19.5.4.5, i32 0, i64 4
  %629 = load i32* %arrayidx20.5.4.5, align 4
  %add.5.4.5 = add nsw i32 %629, %mul.5.4.5
  store i32 %add.5.4.5, i32* %arrayidx20.5.4.5, align 4
  br label %for.inc.5.4.5

for.inc.5.4.5:                                    ; preds = %for.inc.4.4.5
  br label %for.inc21.4.5

for.inc21.4.5:                                    ; preds = %for.inc.5.4.5
  %arrayidx.5.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx5.5.5 = getelementptr inbounds [6 x i32]* %arrayidx.5.5, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.5, align 4
  br label %for.body8.5.5

for.body8.5.5:                                    ; preds = %for.inc21.4.5
  %arrayidx11.544.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.545.5 = getelementptr inbounds [6 x i32]* %arrayidx11.544.5, i32 0, i64 0
  %630 = load i32* %arrayidx12.545.5, align 4
  %arrayidx16.546.5 = getelementptr inbounds [6 x i32]* %b, i32 0, i64 5
  %631 = load i32* %arrayidx16.546.5, align 4
  %mul.547.5 = mul nsw i32 %630, %631
  %arrayidx19.549.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.550.5 = getelementptr inbounds [6 x i32]* %arrayidx19.549.5, i32 0, i64 5
  %632 = load i32* %arrayidx20.550.5, align 4
  %add.551.5 = add nsw i32 %632, %mul.547.5
  store i32 %add.551.5, i32* %arrayidx20.550.5, align 4
  br label %for.inc.552.5

for.inc.552.5:                                    ; preds = %for.body8.5.5
  %arrayidx11.1.5.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.1.5.5 = getelementptr inbounds [6 x i32]* %arrayidx11.1.5.5, i32 0, i64 1
  %633 = load i32* %arrayidx12.1.5.5, align 4
  %arrayidx15.1.5.5 = getelementptr inbounds [6 x i32]* %b, i64 1
  %arrayidx16.1.5.5 = getelementptr inbounds [6 x i32]* %arrayidx15.1.5.5, i32 0, i64 5
  %634 = load i32* %arrayidx16.1.5.5, align 4
  %mul.1.5.5 = mul nsw i32 %633, %634
  %arrayidx19.1.5.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.1.5.5 = getelementptr inbounds [6 x i32]* %arrayidx19.1.5.5, i32 0, i64 5
  %635 = load i32* %arrayidx20.1.5.5, align 4
  %add.1.5.5 = add nsw i32 %635, %mul.1.5.5
  store i32 %add.1.5.5, i32* %arrayidx20.1.5.5, align 4
  br label %for.inc.1.5.5

for.inc.1.5.5:                                    ; preds = %for.inc.552.5
  %arrayidx11.2.5.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.2.5.5 = getelementptr inbounds [6 x i32]* %arrayidx11.2.5.5, i32 0, i64 2
  %636 = load i32* %arrayidx12.2.5.5, align 4
  %arrayidx15.2.5.5 = getelementptr inbounds [6 x i32]* %b, i64 2
  %arrayidx16.2.5.5 = getelementptr inbounds [6 x i32]* %arrayidx15.2.5.5, i32 0, i64 5
  %637 = load i32* %arrayidx16.2.5.5, align 4
  %mul.2.5.5 = mul nsw i32 %636, %637
  %arrayidx19.2.5.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.2.5.5 = getelementptr inbounds [6 x i32]* %arrayidx19.2.5.5, i32 0, i64 5
  %638 = load i32* %arrayidx20.2.5.5, align 4
  %add.2.5.5 = add nsw i32 %638, %mul.2.5.5
  store i32 %add.2.5.5, i32* %arrayidx20.2.5.5, align 4
  br label %for.inc.2.5.5

for.inc.2.5.5:                                    ; preds = %for.inc.1.5.5
  %arrayidx11.3.5.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.3.5.5 = getelementptr inbounds [6 x i32]* %arrayidx11.3.5.5, i32 0, i64 3
  %639 = load i32* %arrayidx12.3.5.5, align 4
  %arrayidx15.3.5.5 = getelementptr inbounds [6 x i32]* %b, i64 3
  %arrayidx16.3.5.5 = getelementptr inbounds [6 x i32]* %arrayidx15.3.5.5, i32 0, i64 5
  %640 = load i32* %arrayidx16.3.5.5, align 4
  %mul.3.5.5 = mul nsw i32 %639, %640
  %arrayidx19.3.5.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.3.5.5 = getelementptr inbounds [6 x i32]* %arrayidx19.3.5.5, i32 0, i64 5
  %641 = load i32* %arrayidx20.3.5.5, align 4
  %add.3.5.5 = add nsw i32 %641, %mul.3.5.5
  store i32 %add.3.5.5, i32* %arrayidx20.3.5.5, align 4
  br label %for.inc.3.5.5

for.inc.3.5.5:                                    ; preds = %for.inc.2.5.5
  %arrayidx11.4.5.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.4.5.5 = getelementptr inbounds [6 x i32]* %arrayidx11.4.5.5, i32 0, i64 4
  %642 = load i32* %arrayidx12.4.5.5, align 4
  %arrayidx15.4.5.5 = getelementptr inbounds [6 x i32]* %b, i64 4
  %arrayidx16.4.5.5 = getelementptr inbounds [6 x i32]* %arrayidx15.4.5.5, i32 0, i64 5
  %643 = load i32* %arrayidx16.4.5.5, align 4
  %mul.4.5.5 = mul nsw i32 %642, %643
  %arrayidx19.4.5.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.4.5.5 = getelementptr inbounds [6 x i32]* %arrayidx19.4.5.5, i32 0, i64 5
  %644 = load i32* %arrayidx20.4.5.5, align 4
  %add.4.5.5 = add nsw i32 %644, %mul.4.5.5
  store i32 %add.4.5.5, i32* %arrayidx20.4.5.5, align 4
  br label %for.inc.4.5.5

for.inc.4.5.5:                                    ; preds = %for.inc.3.5.5
  %arrayidx11.5.5.5 = getelementptr inbounds [6 x i32]* %a, i64 5
  %arrayidx12.5.5.5 = getelementptr inbounds [6 x i32]* %arrayidx11.5.5.5, i32 0, i64 5
  %645 = load i32* %arrayidx12.5.5.5, align 4
  %arrayidx15.5.5.5 = getelementptr inbounds [6 x i32]* %b, i64 5
  %arrayidx16.5.5.5 = getelementptr inbounds [6 x i32]* %arrayidx15.5.5.5, i32 0, i64 5
  %646 = load i32* %arrayidx16.5.5.5, align 4
  %mul.5.5.5 = mul nsw i32 %645, %646
  %arrayidx19.5.5.5 = getelementptr inbounds [6 x i32]* %c, i64 5
  %arrayidx20.5.5.5 = getelementptr inbounds [6 x i32]* %arrayidx19.5.5.5, i32 0, i64 5
  %647 = load i32* %arrayidx20.5.5.5, align 4
  %add.5.5.5 = add nsw i32 %647, %mul.5.5.5
  store i32 %add.5.5.5, i32* %arrayidx20.5.5.5, align 4
  br label %for.inc.5.5.5

for.inc.5.5.5:                                    ; preds = %for.inc.4.5.5
  br label %for.inc21.5.5

for.inc21.5.5:                                    ; preds = %for.inc.5.5.5
  br label %for.inc24.5

for.inc24.5:                                      ; preds = %for.inc21.5.5
  ret void
}
