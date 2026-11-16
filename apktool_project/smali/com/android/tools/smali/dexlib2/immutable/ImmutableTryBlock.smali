.class public Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;
.super Lcom/android/tools/smali/dexlib2/base/BaseTryBlock;
.source "ImmutableTryBlock.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/base/BaseTryBlock<",
        "Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
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
.end field


# instance fields
.field protected final codeUnitCount:I

.field protected final exceptionHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final startCodeAddress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseTryBlock;-><init>()V

    .line 50
    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;->startCodeAddress:I

    .line 51
    iput p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;->codeUnitCount:I

    .line 52
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;->immutableListOf(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;->exceptionHandlers:Ljava/util/List;

    return-void
.end method

.method public static immutableListOf(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 75
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/TryBlock;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;
    .locals 3
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

    .line 56
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;

    if-eqz v0, :cond_0

    .line 57
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;

    .line 60
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v1

    .line 61
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v2

    .line 62
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;-><init>(IILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getCodeUnitCount()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;->codeUnitCount:I

    return v0
.end method

.method public getExceptionHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;->exceptionHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getStartCodeAddress()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableTryBlock;->startCodeAddress:I

    return v0
.end method
