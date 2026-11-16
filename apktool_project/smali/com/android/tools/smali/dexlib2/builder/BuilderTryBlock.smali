.class public Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;
.super Lcom/android/tools/smali/dexlib2/base/BaseTryBlock;
.source "BuilderTryBlock.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/base/BaseTryBlock<",
        "Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;",
        ">;"
    }
.end annotation


# instance fields
.field public final end:Lcom/android/tools/smali/dexlib2/builder/Label;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final exceptionHandler:Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final start:Lcom/android/tools/smali/dexlib2/builder/Label;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseTryBlock;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->start:Lcom/android/tools/smali/dexlib2/builder/Label;

    .line 66
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->end:Lcom/android/tools/smali/dexlib2/builder/Label;

    .line 67
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;->newExceptionHandler(Lcom/android/tools/smali/dexlib2/builder/Label;)Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->exceptionHandler:Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseTryBlock;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->start:Lcom/android/tools/smali/dexlib2/builder/Label;

    .line 60
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->end:Lcom/android/tools/smali/dexlib2/builder/Label;

    .line 61
    invoke-static {p3, p4}, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;->newExceptionHandler(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/builder/Label;)Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->exceptionHandler:Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/Label;Ljava/lang/String;Lcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseTryBlock;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->start:Lcom/android/tools/smali/dexlib2/builder/Label;

    .line 53
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->end:Lcom/android/tools/smali/dexlib2/builder/Label;

    .line 54
    invoke-static {p3, p4}, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;->newExceptionHandler(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/builder/Label;)Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->exceptionHandler:Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;

    return-void
.end method


# virtual methods
.method public getCodeUnitCount()I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->end:Lcom/android/tools/smali/dexlib2/builder/Label;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/Label;->getCodeAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->start:Lcom/android/tools/smali/dexlib2/builder/Label;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/builder/Label;->getCodeAddress()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getExceptionHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->exceptionHandler:Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartCodeAddress()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderTryBlock;->start:Lcom/android/tools/smali/dexlib2/builder/Label;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/Label;->getCodeAddress()I

    move-result v0

    return v0
.end method
