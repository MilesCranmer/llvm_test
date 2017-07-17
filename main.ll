; ModuleID = 'main.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@str = private unnamed_addr constant [13 x i8] c"Hello world!\00"

define f32 @sum(i32 %x) {
entry:
    %tmp1 = f32 %x
}

define i32 @main(i32 %argc, i8** nocapture %argv) nounwind optsize ssp uwtable {
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str, i64 0, i64 0))
  ret i32 1
}

declare i32 @puts(i8* nocapture) nounwind
