.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseMethodEncodedValue;
.source "ImmutableMethodEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodEncodedValue;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodEncodedValue;->value:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodEncodedValue;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 47
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodEncodedValue;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodEncodedValue;

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodEncodedValue;->value:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    return-object v0
.end method
