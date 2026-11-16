.class Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$2;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;
.source "BuilderExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;->newExceptionHandler(Lcom/android/tools/smali/dexlib2/builder/Label;)Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/builder/Label;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;-><init>(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$1;)V

    return-void
.end method


# virtual methods
.method public getExceptionType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandlerCodeAddress()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$2;->handler:Lcom/android/tools/smali/dexlib2/builder/Label;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/Label;->getCodeAddress()I

    move-result v0

    return v0
.end method
