.class public Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;
.super Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;
.source "ImmutableExceptionHandler.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/ImmutableConverter<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final exceptionType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final handlerCodeAddress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;->exceptionType:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;->handlerCodeAddress:I

    return-void
.end method

.method public static immutableListOf(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 66
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;
    .locals 2

    .line 52
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;

    if-eqz v0, :cond_0

    .line 53
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;

    .line 56
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public getExceptionType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;->exceptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerCodeAddress()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableExceptionHandler;->handlerCodeAddress:I

    return v0
.end method
