.class public Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;
.super Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction;
.source "DexBackedInstruction35mi.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35mi;


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
.method public getInlineIndex()I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v0

    return v0
.end method

.method public getRegisterC()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractLowUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterCount()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractHighUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterD()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractHighUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterE()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractLowUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterF()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractHighUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterG()I
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractLowUnsignedNibble(I)I

    move-result v0

    return v0
.end method
