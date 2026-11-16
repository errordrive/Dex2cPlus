.class public Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;
.super Lcom/android/tools/smali/util/ExceptionWithContext;
.source "ReferenceType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/ReferenceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidReferenceTypeException"
.end annotation


# instance fields
.field private final referenceType:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Invalid reference type: %d"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iput p1, p0, Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;->referenceType:I

    return-void
.end method

.method public varargs constructor <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 93
    invoke-direct {p0, p2, p3}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iput p1, p0, Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;->referenceType:I

    return-void
.end method


# virtual methods
.method public getReferenceType()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/android/tools/smali/dexlib2/ReferenceType$InvalidReferenceTypeException;->referenceType:I

    return v0
.end method
