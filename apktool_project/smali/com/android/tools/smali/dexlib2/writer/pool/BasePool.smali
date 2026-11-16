.class public Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;
.super Ljava/lang/Object;
.source "BasePool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/pool/Markable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/writer/pool/Markable;"
    }
.end annotation


# instance fields
.field protected final dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final internedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TKey;TValue;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private markedItemCount:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;->internedItems:Ljava/util/Map;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;->markedItemCount:I

    .line 44
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;->internedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public mark()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;->internedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;->markedItemCount:I

    return-void
.end method

.method public reset()V
    .locals 3

    .line 52
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;->markedItemCount:I

    if-ltz v0, :cond_3

    .line 56
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;->internedItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;->internedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    :goto_0
    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/pool/BasePool;->markedItemCount:I

    if-ge v1, v2, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    .line 53
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mark() must be called before calling reset()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
