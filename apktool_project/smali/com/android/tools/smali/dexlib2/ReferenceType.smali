.class public final Lcom/android/tools/smali/dexlib2/ReferenceType;
.super Ljava/lang/Object;
.source "ReferenceType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;
    }
.end annotation


# static fields
.field public static final CALL_SITE:I = 0x5

.field public static final FIELD:I = 0x2

.field public static final METHOD:I = 0x3

.field public static final METHOD_HANDLE:I = 0x6

.field public static final METHOD_PROTO:I = 0x4

.field public static final NONE:I = 0x7

.field public static final STRING:I = 0x0

.field public static final TYPE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReferenceType(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)I
    .locals 1

    .line 54
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 56
    :cond_0
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 58
    :cond_1
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 60
    :cond_2
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 62
    :cond_3
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 64
    :cond_4
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    if-eqz v0, :cond_5

    const/4 p0, 0x5

    return p0

    .line 66
    :cond_5
    instance-of p0, p0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    if-eqz p0, :cond_6

    const/4 p0, 0x6

    return p0

    .line 69
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid reference"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateReferenceType(I)V
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;-><init>(I)V

    throw v0
.end method
