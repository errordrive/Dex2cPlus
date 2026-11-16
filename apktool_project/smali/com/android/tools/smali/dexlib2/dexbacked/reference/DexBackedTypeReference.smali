.class public Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedTypeReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;
.source "DexBackedTypeReference.java"


# instance fields
.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final typeIndex:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedTypeReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 46
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedTypeReference;->typeIndex:I

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedTypeReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedTypeReference;->typeIndex:I

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

    .line 67
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedTypeReference;->typeIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedTypeReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedTypeReference;->typeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
