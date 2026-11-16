.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;
.source "BuilderEncodedArrayPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;",
        "Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final internedItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;",
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

    .line 51
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    .line 47
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getEncodedValueList(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;->elements:Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic getEncodedValueList(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 45
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;->getEncodedValueList(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 68
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;->offset:I

    return p1
.end method

.method public bridge synthetic getItemOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 45
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;->getItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;)I

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
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 74
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public internArrayEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    if-eqz v0, :cond_0

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    .line 61
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method
