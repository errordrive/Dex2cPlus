.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseDoubleEncodedValue;
.source "ImmutableDoubleEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseDoubleEncodedValue;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;->value:D

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;
    .locals 3

    .line 44
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public getValue()D
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableDoubleEncodedValue;->value:D

    return-wide v0
.end method
