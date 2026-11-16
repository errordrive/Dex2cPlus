.class public Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap;
.super Ljava/lang/Object;
.source "InstructionOffsetMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap$InvalidInstructionIndex;,
        Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap$InvalidInstructionOffset;
    }
.end annotation


# instance fields
.field private final instructionCodeOffsets:[I
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap;->instructionCodeOffsets:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap;->instructionCodeOffsets:[I

    aput v1, v2, v0

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getInstructionCodeOffset(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap;->instructionCodeOffsets:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 76
    aget p1, v0, p1

    return p1

    .line 74
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap$InvalidInstructionIndex;

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap$InvalidInstructionIndex;-><init>(I)V

    throw v0
.end method

.method public getInstructionIndexAtCodeOffset(I)I
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap;->getInstructionIndexAtCodeOffset(IZ)I

    move-result p1

    return p1
.end method

.method public getInstructionIndexAtCodeOffset(IZ)I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap;->instructionCodeOffsets:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_1

    if-nez p2, :cond_0

    not-int p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 61
    :cond_0
    new-instance p2, Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap$InvalidInstructionOffset;

    invoke-direct {p2, p1}, Lcom/android/tools/smali/dexlib2/util/InstructionOffsetMap$InvalidInstructionOffset;-><init>(I)V

    throw p2

    :cond_1
    return v0
.end method
