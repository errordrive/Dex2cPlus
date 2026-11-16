.class Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$3;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;
.source "BuilderExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;->newExceptionHandler(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/builder/Label;)Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$exceptionType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/builder/Label;Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$3;->val$exceptionType:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler;-><init>(Lcom/android/tools/smali/dexlib2/builder/Label;Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$1;)V

    return-void
.end method


# virtual methods
.method public getExceptionType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$3;->val$exceptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerCodeAddress()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderExceptionHandler$3;->handler:Lcom/android/tools/smali/dexlib2/builder/Label;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/builder/Label;->getCodeAddress()I

    move-result v0

    return v0
.end method
