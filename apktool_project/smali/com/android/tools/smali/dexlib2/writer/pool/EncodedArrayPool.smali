.class public Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;
.super Lcom/android/tools/smali/dexlib2/writer/pool/BaseOffsetPool;
.source "EncodedArrayPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/pool/BaseOffsetPool<",
        "Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection<",
        "Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;",
        "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
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
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/BaseOffsetPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-void
.end method


# virtual methods
.method public getEncodedValueList(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getEncodedValueList(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 40
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;->getEncodedValueList(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public intern(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 48
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;->internedItems:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    .line 51
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->internEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    goto :goto_0

    :cond_0
    return-void
.end method
