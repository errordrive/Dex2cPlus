.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;
.source "BuilderProtoPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/ProtoSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;",
        "Lcom/android/tools/smali/dexlib2/writer/ProtoSection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;",
        ">;"
    }
.end annotation


# instance fields
.field private final internedItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;",
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

    .line 53
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    .line 49
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 89
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->getIndex()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getItemIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 46
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;)I

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
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 93
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getParameters(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 85
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->parameterTypes:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    return-object p1
.end method

.method public bridge synthetic getParameters(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 46
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->getParameters(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    move-result-object p1

    return-object p1
.end method

.method public getReturnType(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 81
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->returnType:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    return-object p1
.end method

.method public bridge synthetic getReturnType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 46
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->getReturnType(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public getShorty(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 77
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;->shorty:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    return-object p1
.end method

.method public bridge synthetic getShorty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 46
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->getShorty(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1
.end method

.method public internMethodProto(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    if-eqz v0, :cond_0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;

    .line 64
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->getReturnType()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v2, v3}, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->getShorty(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeListSection:Lcom/android/tools/smali/dexlib2/writer/TypeListSection;

    check-cast v2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;

    .line 65
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeListPool;->internTypeList(Ljava/util/List;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v3, v3, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v3, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    .line 66
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->getReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)V

    .line 67
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public internMethodProto(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 72
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    .line 73
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;-><init>(Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->internMethodProto(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    return-object p1
.end method
