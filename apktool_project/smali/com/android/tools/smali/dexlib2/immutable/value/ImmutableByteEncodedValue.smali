.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseByteEncodedValue;
.source "ImmutableByteEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseByteEncodedValue;-><init>()V

    .line 40
    iput-byte p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;->value:B

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;
    .locals 1

    .line 44
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/ByteEncodedValue;->getValue()B

    move-result p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 50
    iget-byte v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableByteEncodedValue;->value:B

    return v0
.end method
