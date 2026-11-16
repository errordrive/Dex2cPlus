.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;
.source "BuilderTypeListPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/TypeListSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;",
        "Lcom/android/tools/smali/dexlib2/writer/TypeListSection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;",
        ">;"
    }
.end annotation


# instance fields
.field private final internedItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;",
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

    .line 52
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    .line 48
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 85
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->offset:I

    return p1
.end method

.method public bridge synthetic getItemOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 46
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;->getItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;)I

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
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 89
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getNullableItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;)I
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->offset:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getNullableItemOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;->getNullableItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;)I

    move-result p1

    return p1
.end method

.method public getTypes(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    .line 81
    sget-object p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->EMPTY:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->types:Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic getTypes(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 46
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;->getTypes(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public internTypeList(Ljava/util/List;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-eqz p1, :cond_3

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    if-eqz v0, :cond_1

    return-object v0

    .line 65
    :cond_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    .line 67
    invoke-static {p1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool$$ExternalSyntheticLambda0;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;)V

    .line 68
    invoke-static {p1, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 69
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 66
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;-><init>(Ljava/util/List;)V

    .line 71
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p1

    .line 57
    :cond_3
    :goto_0
    sget-object p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->EMPTY:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    return-object p1
.end method

.method synthetic lambda$internTypeList$0$com-android-tools-smali-dexlib2-writer-builder-BuilderTypeListPool(Ljava/lang/CharSequence;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method
