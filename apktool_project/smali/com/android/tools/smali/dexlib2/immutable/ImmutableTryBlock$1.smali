.class Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock$1;
.super Lcom/android/tools/smali/util/ImmutableConverter;
.source "ImmutableTryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/ImmutableConverter<",
        "Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;",
        "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
        "+",
        "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/tools/smali/util/ImmutableConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isImmutable(Lcom/android/tools/smali/dexlib2/iface/TryBlock;)Z
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/TryBlock;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 82
    instance-of p1, p1, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;

    return p1
.end method

.method protected bridge synthetic isImmutable(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 79
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock$1;->isImmutable(Lcom/android/tools/smali/dexlib2/iface/TryBlock;)Z

    move-result p1

    return p1
.end method

.method protected makeImmutable(Lcom/android/tools/smali/dexlib2/iface/TryBlock;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/TryBlock;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 88
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;->of(Lcom/android/tools/smali/dexlib2/iface/TryBlock;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;

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

    .line 79
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock$1;->makeImmutable(Lcom/android/tools/smali/dexlib2/iface/TryBlock;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;

    move-result-object p1

    return-object p1
.end method
