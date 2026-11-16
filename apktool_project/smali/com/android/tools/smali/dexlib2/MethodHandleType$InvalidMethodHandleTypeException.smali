.class public Lcom/android/tools/smali/dexlib2/MethodHandleType$InvalidMethodHandleTypeException;
.super Lcom/android/tools/smali/util/ExceptionWithContext;
.source "MethodHandleType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/MethodHandleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidMethodHandleTypeException"
.end annotation


# instance fields
.field private final methodHandleType:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Invalid method handle type: %d"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iput p1, p0, Lcom/android/tools/smali/dexlib2/MethodHandleType$InvalidMethodHandleTypeException;->methodHandleType:I

    return-void
.end method

.method public varargs constructor <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 104
    invoke-direct {p0, p2, p3}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iput p1, p0, Lcom/android/tools/smali/dexlib2/MethodHandleType$InvalidMethodHandleTypeException;->methodHandleType:I

    return-void
.end method


# virtual methods
.method public getMethodHandleType()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/android/tools/smali/dexlib2/MethodHandleType$InvalidMethodHandleTypeException;->methodHandleType:I

    return v0
.end method
