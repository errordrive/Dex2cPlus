.class Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference$1;
.super Lcom/android/tools/smali/util/ImmutableConverter;
.source "ImmutableTypeReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/ImmutableConverter<",
        "Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/tools/smali/util/ImmutableConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isImmutable(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Z
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 68
    instance-of p1, p1, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;

    return p1
.end method

.method protected bridge synthetic isImmutable(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 65
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference$1;->isImmutable(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Z

    move-result p1

    return p1
.end method

.method protected makeImmutable(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 74
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;->of(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic makeImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 65
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference$1;->makeImmutable(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableTypeReference;

    move-result-object p1

    return-object p1
.end method
