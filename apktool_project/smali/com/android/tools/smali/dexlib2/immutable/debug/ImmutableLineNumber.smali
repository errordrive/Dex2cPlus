.class public Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableLineNumber;
.super Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;
.source "ImmutableLineNumber.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;


# instance fields
.field protected final lineNumber:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;-><init>(I)V

    .line 44
    iput p2, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableLineNumber;->lineNumber:I

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableLineNumber;
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 49
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableLineNumber;

    if-eqz v0, :cond_0

    .line 50
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableLineNumber;

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableLineNumber;

    .line 53
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;->getCodeAddress()I

    move-result v1

    .line 54
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/LineNumber;->getLineNumber()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableLineNumber;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getDebugItemType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableLineNumber;->lineNumber:I

    return v0
.end method
