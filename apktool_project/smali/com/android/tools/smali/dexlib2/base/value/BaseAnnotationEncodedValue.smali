.class public abstract Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;
.super Ljava/lang/Object;
.source "BaseAnnotationEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;


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

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;->getValueType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 63
    :cond_0
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/tools/smali/util/CollectionUtils;->compareAsSet(Ljava/util/Collection;Ljava/util/Collection;)I

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

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;->compareTo(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getValueType()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getEncodedValue(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
