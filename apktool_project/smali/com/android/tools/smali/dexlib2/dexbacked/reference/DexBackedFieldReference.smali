.class public Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;
.source "DexBackedFieldReference.java"


# instance fields
.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final fieldIndex:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 45
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->fieldIndex:I

    return-void
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 52
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 53
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getFieldSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v2

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->fieldIndex:I

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result v2

    .line 52
    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 60
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getFieldSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v2

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->fieldIndex:I

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    .line 59
    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 67
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getFieldSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v2

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->fieldIndex:I

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    .line 66
    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v1

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

    .line 83
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->fieldIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getFieldSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "field@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;->fieldIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
