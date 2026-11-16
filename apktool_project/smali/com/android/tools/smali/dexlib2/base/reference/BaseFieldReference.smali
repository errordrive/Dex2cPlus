.class public abstract Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseReference;
.source "BaseFieldReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseReference;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)I
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 39
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;->compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getFieldDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
