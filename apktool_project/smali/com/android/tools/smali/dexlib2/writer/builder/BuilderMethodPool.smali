.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;
.source "BuilderMethodPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/MethodSection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$MethodKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;",
        "Lcom/android/tools/smali/dexlib2/writer/MethodSection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private final internedItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;",
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

    .line 50
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    .line 46
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getDefiningClass(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 79
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->definingClass:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

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

    .line 44
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->getDefiningClass(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 100
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->index:I

    return p1
.end method

.method public bridge synthetic getItemIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 44
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;)I

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
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 104
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMethodIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 96
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->index:I

    return p1
.end method

.method public bridge synthetic getMethodIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 44
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->getMethodIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getMethodReference(Ljava/lang/Object;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 44
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->getMethodReference(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object p1

    return-object p1
.end method

.method public getMethodReference(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 74
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    return-object p1
.end method

.method public getName(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 92
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

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

    .line 44
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->getName(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPrototype(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 44
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->getPrototype(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPrototype(Ljava/lang/Object;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 44
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->getPrototype(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    return-object p1
.end method

.method public getPrototype(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 88
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;->methodReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->proto:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    return-object p1
.end method

.method public getPrototype(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 84
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;->proto:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    return-object p1
.end method

.method public internMethod(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    if-eqz v0, :cond_0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    .line 60
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;

    .line 61
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v3, v3, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->protoSection:Lcom/android/tools/smali/dexlib2/writer/ProtoSection;

    check-cast v3, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;

    .line 62
    invoke-virtual {v3, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderProtoPool;->internMethodProto(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodProtoReference;)V

    .line 63
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public internMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 70
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$MethodKey;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$MethodKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;->internMethod(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object p1

    return-object p1
.end method
