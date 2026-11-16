.class public Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedCatchAllExceptionHandler;
.super Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedExceptionHandler;
.source "DexBackedCatchAllExceptionHandler.java"


# instance fields
.field private final handlerCodeAddress:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedExceptionHandler;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedCatchAllExceptionHandler;->handlerCodeAddress:I

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

    .line 44
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedCatchAllExceptionHandler;->handlerCodeAddress:I

    return v0
.end method
