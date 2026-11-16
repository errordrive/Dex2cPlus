.class public Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseStringReference;
.source "DexBackedStringReference.java"


# instance fields
.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final stringIndex:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseStringReference;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 48
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;->stringIndex:I

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;->stringIndex:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->getOffset(I)I

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->peekSmallUleb128Size()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 70
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v2

    .line 72
    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->peekStringLength(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;->stringIndex:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public validateReference()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;
        }
    .end annotation

    .line 78
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;->stringIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "string@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;->stringIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
