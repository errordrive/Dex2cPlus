.class public abstract Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseReference;
.source "BaseMethodReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseReference;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 71
    :cond_2
    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->usingToStringOrdering()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object p1

    .line 70
    invoke-static {v0, v1, p1}, Lcom/android/tools/smali/util/CollectionUtils;->compareAsIterable(Ljava/util/Comparator;Ljava/lang/Iterable;Ljava/lang/Iterable;)I

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
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 52
    instance-of v1, p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/tools/smali/util/CharSequenceUtils;->listEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getMethodDescriptor(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
