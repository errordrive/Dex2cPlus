.class public abstract Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;
.super Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;
.source "BuilderExceptionHandler.java"


# instance fields
.field protected final handler:Lcom/android/tools/smali/dexlib2/builder/Label;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;->handler:Lcom/android/tools/smali/dexlib2/builder/Label;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;-><init>(Lcom/android/tools/smali/dexlib2/builder/Label;)V

    return-void
.end method

.method static newExceptionHandler(Lcom/android/tools/smali/dexlib2/builder/Label;)Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 72
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$2;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$2;-><init>(Lcom/android/tools/smali/dexlib2/builder/Label;)V

    return-object v0
.end method

.method static newExceptionHandler(Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;Lcom/android/tools/smali/dexlib2/builder/Label;)Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 54
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;->newExceptionHandler(Lcom/android/tools/smali/dexlib2/builder/Label;)Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;

    move-result-object p0

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$1;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$1;-><init>(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)V

    return-object v0
.end method

.method static newExceptionHandler(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/builder/Label;)Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 86
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;->newExceptionHandler(Lcom/android/tools/smali/dexlib2/builder/Label;)Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;

    move-result-object p0

    return-object p0

    .line 88
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$3;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$3;-><init>(Lcom/android/tools/smali/dexlib2/builder/Label;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getHandler()Lcom/android/tools/smali/dexlib2/builder/Label;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;->handler:Lcom/android/tools/smali/dexlib2/builder/Label;

    return-object v0
.end method
