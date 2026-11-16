.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseShortEncodedValue;
.source "ImmutableShortEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseShortEncodedValue;-><init>()V

    .line 40
    iput-short p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;->value:S

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;
    .locals 1

    .line 44
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public getValue()S
    .locals 1

    .line 50
    iget-short v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableShortEncodedValue;->value:S

    return v0
.end method
