.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseFloatEncodedValue;
.source "ImmutableFloatEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseFloatEncodedValue;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;->value:F

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;
    .locals 1

    .line 44
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .line 50
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableFloatEncodedValue;->value:F

    return v0
.end method
