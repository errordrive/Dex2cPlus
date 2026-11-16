.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseLongEncodedValue;
.source "ImmutableLongEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseLongEncodedValue;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;->value:J

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;
    .locals 3

    .line 44
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableLongEncodedValue;->value:J

    return-wide v0
.end method
