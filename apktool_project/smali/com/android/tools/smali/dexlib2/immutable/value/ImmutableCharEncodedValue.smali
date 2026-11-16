.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseCharEncodedValue;
.source "ImmutableCharEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseCharEncodedValue;-><init>()V

    .line 40
    iput-char p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;->value:C

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;
    .locals 1

    .line 44
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public getValue()C
    .locals 1

    .line 50
    iget-char v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableCharEncodedValue;->value:C

    return v0
.end method
