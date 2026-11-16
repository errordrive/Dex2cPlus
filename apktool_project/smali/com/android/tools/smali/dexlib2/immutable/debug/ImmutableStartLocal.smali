.class public Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;
.super Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;
.source "ImmutableStartLocal.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;


# instance fields
.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final register:I

.field protected final signature:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;-><init>(I)V

    .line 55
    iput p2, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->register:I

    .line 56
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->name:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->type:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->signature:Ljava/lang/String;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;
    .locals 6
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;

    if-eqz v0, :cond_0

    .line 64
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;

    return-object p0

    .line 66
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;

    .line 67
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getCodeAddress()I

    move-result v1

    .line 68
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getRegister()I

    move-result v2

    .line 69
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getName()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getType()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDebugItemType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal$1;-><init>(Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;)V

    return-object v0
.end method

.method public getRegister()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->register:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->signature:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal$3;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal$3;-><init>(Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;)V

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal$2;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal$2;-><init>(Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableStartLocal;)V

    return-object v0
.end method
