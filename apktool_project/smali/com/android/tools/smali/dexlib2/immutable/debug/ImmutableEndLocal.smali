.class public Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;
.super Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;
.source "ImmutableEndLocal.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;


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
.method public constructor <init>(II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;-><init>(I)V

    .line 48
    iput p2, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->register:I

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->name:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->type:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->signature:Ljava/lang/String;

    return-void
.end method

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

    .line 59
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableDebugItem;-><init>(I)V

    .line 60
    iput p2, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->register:I

    .line 61
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->name:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->type:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->signature:Ljava/lang/String;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;)Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;
    .locals 6
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 68
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;

    if-eqz v0, :cond_0

    .line 69
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;

    return-object p0

    .line 71
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;

    .line 72
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;->getCodeAddress()I

    move-result v1

    .line 73
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;->getRegister()I

    move-result v2

    .line 74
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;->getType()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;->getName()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDebugItemType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegister()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->register:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/debug/ImmutableEndLocal;->type:Ljava/lang/String;

    return-object v0
.end method
