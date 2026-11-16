.class public Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;
.super Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedExceptionHandler;
.source "DexBackedTypedExceptionHandler.java"


# instance fields
.field private final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final handlerCodeAddress:I

.field private final typeId:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedExceptionHandler;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 42
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;->typeId:I

    .line 43
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;->handlerCodeAddress:I

    return-void
.end method


# virtual methods
.method public getExceptionType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;->typeId:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerCodeAddress()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;->handlerCodeAddress:I

    return v0
.end method
