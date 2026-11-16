.class public Lcom/android/tools/smali/dexlib2/writer/pool/CallSitePool;
.super Lcom/android/tools/smali/dexlib2/writer/pool/BaseIndexPool;
.source "CallSitePool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/CallSiteSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/pool/BaseIndexPool<",
        "Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/writer/CallSiteSection<",
        "Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;",
        "Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;",
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
.method public getEncodedCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;
    .locals 0

    .line 56
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/writer/util/CallSiteUtil;->getEncodedCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getEncodedCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/CallSitePool;->getEncodedCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    move-result-object p1

    return-object p1
.end method

.method public intern(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/CallSitePool;->internedItems:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/CallSitePool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->encodedArraySection:Lcom/android/tools/smali/dexlib2/writer/EncodedArraySection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/CallSitePool;->getEncodedCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/EncodedArrayPool;->intern(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)V

    :cond_0
    return-void
.end method
