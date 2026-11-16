.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableStringEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseStringEncodedValue;
.source "ImmutableStringEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseStringEncodedValue;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableStringEncodedValue;->value:Ljava/lang/String;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableStringEncodedValue;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 46
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableStringEncodedValue;

    if-eqz v0, :cond_0

    .line 47
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableStringEncodedValue;

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableStringEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableStringEncodedValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableStringEncodedValue;->value:Ljava/lang/String;

    return-object v0
.end method
