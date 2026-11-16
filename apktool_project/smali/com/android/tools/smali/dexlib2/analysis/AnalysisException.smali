.class public Lcom/android/tools/smali/dexlib2/analysis/AnalysisException;
.super Lcom/android/tools/smali/util/ExceptionWithContext;
.source "AnalysisException.java"


# instance fields
.field public codeAddress:I


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
