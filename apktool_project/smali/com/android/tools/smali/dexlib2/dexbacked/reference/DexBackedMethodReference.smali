.class public Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.source "DexBackedMethodReference.java"


# instance fields
.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodIndex:I

.field private protoIdItemOffset:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 52
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->methodIndex:I

    return-void
.end method

.method private getProtoIdItemOffset()I
    .locals 4

    .line 100
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->protoIdItemOffset:I

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getProtoSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 102
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMethodSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v2

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->methodIndex:I

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    .line 101
    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->protoIdItemOffset:I

    .line 104
    :cond_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->protoIdItemOffset:I

    return v0
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 59
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMethodSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v2

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->methodIndex:I

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 66
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMethodSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v2

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->methodIndex:I

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    .line 65
    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 72
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->getProtoIdItemOffset()I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 77
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    .line 79
    new-instance v2, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;II)V

    return-object v2

    .line 88
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->getProtoIdItemOffset()I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 96
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v2

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    .line 95
    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public validateReference()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;
        }
    .end annotation

    .line 120
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->methodIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMethodSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->methodIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/iface/reference/Reference$InvalidReferenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
