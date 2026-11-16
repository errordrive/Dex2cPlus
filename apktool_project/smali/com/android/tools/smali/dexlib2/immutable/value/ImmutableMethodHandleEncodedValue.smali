.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodHandleEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseMethodHandleEncodedValue;
.source "ImmutableMethodHandleEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final methodHandleReference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodHandleEncodedValue;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodHandleEncodedValue;->methodHandleReference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodHandleEncodedValue;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 48
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodHandleEncodedValue;

    if-eqz v0, :cond_0

    .line 49
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodHandleEncodedValue;

    return-object p0

    .line 51
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodHandleEncodedValue;

    .line 52
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/MethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodHandleEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodHandleEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableMethodHandleEncodedValue;->methodHandleReference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodHandleReference;

    return-object v0
.end method
