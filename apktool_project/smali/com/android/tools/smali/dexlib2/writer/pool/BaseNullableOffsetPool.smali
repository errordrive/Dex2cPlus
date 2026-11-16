.class public abstract Lcom/android/tools/smali/dexlib2/writer/pool/BaseNullableOffsetPool;
.super Lcom/android/tools/smali/dexlib2/writer/pool/BaseOffsetPool;
.source "BaseNullableOffsetPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/NullableOffsetSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/tools/smali/dexlib2/writer/pool/BaseOffsetPool<",
        "TKey;>;",
        "Lcom/android/tools/smali/dexlib2/writer/NullableOffsetSection<",
        "TKey;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/BaseOffsetPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-void
.end method


# virtual methods
.method public getNullableItemOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/BaseNullableOffsetPool;->getItemOffset(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
