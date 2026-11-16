.class public Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction12x;
.super Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction;
.source "DexBackedInstruction12x.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction12x;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/Opcode;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/Opcode;I)V

    return-void
.end method


# virtual methods
.method public getRegisterA()I
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction12x;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction12x;->instructionStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readByte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractLowUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterB()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction12x;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction12x;->instructionStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readByte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractHighUnsignedNibble(I)I

    move-result v0

    return v0
.end method
