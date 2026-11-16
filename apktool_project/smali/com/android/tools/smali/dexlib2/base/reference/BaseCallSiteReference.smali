.class public abstract Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseReference;
.source "BaseCallSiteReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseReference;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 49
    instance-of v1, p1, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    if-eqz v1, :cond_0

    .line 50
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;->getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;->getMethodProto()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodProto()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;->getExtraArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getExtraArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;->getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;->getMethodProto()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;->getExtraArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->INSTANCE:Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/dexlib2/formatter/DexFormatter;->getCallSite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
