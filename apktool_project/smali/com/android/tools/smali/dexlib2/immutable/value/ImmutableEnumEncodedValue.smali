.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEnumEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseEnumEncodedValue;
.source "ImmutableEnumEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseEnumEncodedValue;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEnumEncodedValue;->value:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEnumEncodedValue;
    .locals 1

    .line 47
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEnumEncodedValue;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEnumEncodedValue;

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEnumEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEnumEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEnumEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEnumEncodedValue;->value:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableFieldReference;

    return-object v0
.end method
