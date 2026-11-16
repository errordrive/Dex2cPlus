.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;
.source "BuilderCallSitePool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;",
        "Lcom/android/tools/smali/dexlib2/writer/CallSiteSection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final internedItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;",
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

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getEncodedCallSite(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;
    .locals 0

    .line 67
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->encodedCallSite:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    return-object p1
.end method

.method public bridge synthetic getEncodedCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;->getEncodedCallSite(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 72
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;->index:I

    return p1
.end method

.method public bridge synthetic getItemIndex(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 44
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;->getItemIndex(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;)I

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
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 78
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public internCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;

    if-eqz v0, :cond_0

    return-object v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;

    .line 59
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil;->getEncodedCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedArrayPool;->internArrayEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;-><init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;)V

    .line 61
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSitePool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderCallSiteReference;

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method
