.class public Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;
.super Lcom/android/tools/smali/dexlib2/base/BaseTryBlock;
.source "DexBackedTryBlock.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/base/BaseTryBlock<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedExceptionHandler;",
        ">;"
    }
.end annotation


# instance fields
.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final handlersStartOffset:I

.field private final tryItemOffset:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;II)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseTryBlock;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 49
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->tryItemOffset:I

    .line 50
    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->handlersStartOffset:I

    return-void
.end method


# virtual methods
.method public getCodeUnitCount()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->tryItemOffset:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v0

    return v0
.end method

.method public getExceptionHandlers()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedExceptionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->handlersStartOffset:I

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 65
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v2

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->tryItemOffset:I

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSleb128()I

    move-result v1

    if-lez v1, :cond_0

    .line 70
    new-instance v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$1;

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 71
    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-object v2

    :cond_0
    mul-int/lit8 v1, v1, -0x1

    add-int/lit8 v6, v1, 0x1

    .line 81
    new-instance v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$2;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 82
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v5

    move v7, v6

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$2;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;III)V

    return-object v2
.end method

.method public getStartCodeAddress()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->tryItemOffset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    return v0
.end method
