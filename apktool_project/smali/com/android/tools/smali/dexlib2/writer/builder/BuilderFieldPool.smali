.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;
.source "BuilderFieldPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/FieldSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;",
        "Lcom/android/tools/smali/dexlib2/writer/FieldSection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
        ">;"
    }
.end annotation


# instance fields
.field private final internedItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;",
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

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getDefiningClass(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 74
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;->definingClass:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    return-object p1
.end method

.method public bridge synthetic getDefiningClass(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->getDefiningClass(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public getFieldIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 86
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;->fieldReference:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;->getIndex()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getFieldIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->getFieldIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;)I

    move-result p1

    return p1
.end method

.method public getFieldType(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 78
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;->fieldType:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    return-object p1
.end method

.method public bridge synthetic getFieldType(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->getFieldType(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;->index:I

    return p1
.end method

.method public bridge synthetic getItemIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;)I

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
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 94
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getName(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 82
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;->name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    return-object p1
.end method

.method public bridge synthetic getName(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->getName(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1
.end method

.method public internField(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    if-eqz v0, :cond_0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    .line 65
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->stringSection:Lcom/android/tools/smali/dexlib2/writer/StringSection;

    check-cast v2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;

    .line 66
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v3, v3, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v3, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    .line 67
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)V

    .line 68
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method internField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 54
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldPool;->internField(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p1

    return-object p1
.end method
