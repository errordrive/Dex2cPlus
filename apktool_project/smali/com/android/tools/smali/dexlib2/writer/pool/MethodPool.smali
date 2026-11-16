.class public Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;
.super Lcom/android/tools/smali/dexlib2/writer/pool/BaseIndexPool;
.source "MethodPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/MethodSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/pool/BaseIndexPool<",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/writer/MethodSection<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/BaseIndexPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-void
.end method


# virtual methods
.method public getDefiningClass(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 61
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefiningClass(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->getDefiningClass(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getMethodIndex(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getMethodIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 39
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->getMethodIndex(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)I

    move-result p1

    return p1
.end method

.method public getMethodReference(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    return-object p1
.end method

.method public bridge synthetic getMethodReference(Ljava/lang/Object;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->getMethodReference(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    move-result-object p1

    return-object p1
.end method

.method public getName(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 73
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getName(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->getName(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getPrototype(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 65
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethodProto;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethodProto;-><init>(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-object v0
.end method

.method public getPrototype(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 69
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethodProto;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethodProto;-><init>(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    return-object v0
.end method

.method public bridge synthetic getPrototype(Ljava/lang/Object;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->getPrototype(Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object p1

    return-object p1
.end method

.method public intern(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 48
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->internedItems:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypePool;->intern(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/ProtoPool;

    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethodProto;

    invoke-direct {v1, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethodProto;-><init>(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/ProtoPool;->intern(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V

    .line 52
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/MethodPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/StringPool;->intern(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
