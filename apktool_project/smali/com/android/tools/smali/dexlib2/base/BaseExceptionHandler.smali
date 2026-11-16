.class public abstract Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;
.super Ljava/lang/Object;
.source "BaseExceptionHandler.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;


# static fields
.field public static final BY_EXCEPTION:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler$2;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler$2;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;->BY_EXCEPTION:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)I
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 82
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 86
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;->getHandlerCodeAddress()I

    move-result v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;->compareTo(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    instance-of v0, p1, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    .line 67
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;->getHandlerCodeAddress()I

    move-result v0

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getExceptionTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    new-instance v1, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler$1;-><init>(Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;Ljava/lang/String;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 60
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;->getHandlerCodeAddress()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
