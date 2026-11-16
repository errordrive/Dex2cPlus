.class public abstract Lcom/android/tools/smali/dexlib2/writer/pool/StringTypeBasePool;
.super Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;
.source "StringTypeBasePool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/NullableIndexSection;
.implements Lcom/android/tools/smali/dexlib2/writer/pool/Markable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/pool/BasePool<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/writer/NullableIndexSection<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/Markable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-void
.end method


# virtual methods
.method public getItemIndex(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 54
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/StringTypeBasePool;->internedItems:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 56
    :cond_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Item not found.: %s"

    invoke-direct {v0, p1, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic getItemIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/StringTypeBasePool;->getItemIndex(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method public getItems()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/StringTypeBasePool;->internedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNullableItemIndex(Ljava/lang/CharSequence;)I
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/StringTypeBasePool;->getItemIndex(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getNullableItemIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/StringTypeBasePool;->getNullableItemIndex(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method
