.class public abstract Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;
.super Ljava/lang/Object;
.source "BaseArrayEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)I
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;->getValueType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/tools/smali/util/CollectionUtils;->compareAsList(Ljava/util/Collection;Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;->compareTo(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getValueType()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
