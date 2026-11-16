.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderExceptionHandler;
.super Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;
.source "BuilderExceptionHandler.java"


# instance fields
.field final exceptionType:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final handlerCodeAddress:I


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderExceptionHandler;->exceptionType:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    .line 43
    iput p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderExceptionHandler;->handlerCodeAddress:I

    return-void
.end method


# virtual methods
.method public getExceptionType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderExceptionHandler;->exceptionType:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandlerCodeAddress()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderExceptionHandler;->handlerCodeAddress:I

    return v0
.end method
