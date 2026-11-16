.class public abstract Lcom/android/tools/smali/dexlib2/base/value/BaseMethodHandleEncodedValue;
.super Ljava/lang/Object;
.source "BaseMethodHandleEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
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

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodHandleEncodedValue;->getValueType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v0

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 40
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodHandleEncodedValue;->compareTo(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 48
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v0

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getValueType()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
