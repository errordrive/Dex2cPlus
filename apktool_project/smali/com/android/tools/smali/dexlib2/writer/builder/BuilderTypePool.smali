.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;
.source "BuilderTypePool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/TypeSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;",
        "Lcom/android/tools/smali/dexlib2/writer/TypeSection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
        ">;"
    }
.end annotation


# instance fields
.field private final internedItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    .line 45
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItemIndex(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)I

    move-result p1

    return p1
.end method

.method public getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 78
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getIndex()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getItemIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)I

    move-result p1

    return p1
.end method

.method public getItems()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 82
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getNullableItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 74
    :cond_0
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->index:I

    return p1
.end method

.method public bridge synthetic getNullableItemIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->getNullableItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)I

    move-result p1

    return p1
.end method

.method public getString(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 70
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->stringReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    return-object p1
.end method

.method public bridge synthetic getString(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->getString(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1
.end method

.method public internNullableType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    if-eqz v0, :cond_0

    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-direct {v1, v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;)V

    .line 58
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method
