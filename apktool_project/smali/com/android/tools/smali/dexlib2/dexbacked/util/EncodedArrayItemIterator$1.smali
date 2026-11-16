.class Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;
.source "EncodedArrayItemIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/EncodedArrayItemIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNextOrNull()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReaderOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public skipNext()V
    .locals 0

    return-void
.end method
