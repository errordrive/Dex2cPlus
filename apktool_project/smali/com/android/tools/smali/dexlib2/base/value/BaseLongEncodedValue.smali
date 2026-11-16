.class public abstract Lcom/android/tools/smali/dexlib2/base/value/BaseLongEncodedValue;
.super Ljava/lang/Object;
.source "BaseLongEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)I
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseLongEncodedValue;->getValueType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseLongEncodedValue;->getValue()J

    move-result-wide v0

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 41
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/base/value/BaseLongEncodedValue;->compareTo(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseLongEncodedValue;->getValue()J

    move-result-wide v2

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getValueType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseLongEncodedValue;->getValue()J

    move-result-wide v0

    long-to-int v2, v0

    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v1, v0

    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
