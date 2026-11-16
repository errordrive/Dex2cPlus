.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableArrayEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;
.source "ImmutableArrayEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValueFactory;->immutableListOf(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableArrayEncodedValue;->value:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableArrayEncodedValue;->value:Ljava/util/List;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableArrayEncodedValue;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 53
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableArrayEncodedValue;

    if-eqz v0, :cond_0

    .line 54
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableArrayEncodedValue;

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableArrayEncodedValue;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableArrayEncodedValue;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableArrayEncodedValue;->value:Ljava/util/List;

    return-object v0
.end method
