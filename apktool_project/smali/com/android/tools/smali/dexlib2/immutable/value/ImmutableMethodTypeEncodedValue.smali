.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodTypeEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseMethodTypeEncodedValue;
.source "ImmutableMethodTypeEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final methodProtoReference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodTypeEncodedValue;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodTypeEncodedValue;->methodProtoReference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodTypeEncodedValue;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 48
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodTypeEncodedValue;

    if-eqz v0, :cond_0

    .line 49
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodTypeEncodedValue;

    return-object p0

    .line 51
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodTypeEncodedValue;

    .line 52
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/MethodTypeEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodTypeEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodTypeEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodTypeEncodedValue;->methodProtoReference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    return-object v0
.end method
