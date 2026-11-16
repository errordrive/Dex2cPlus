.class public Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;
.super Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction;
.source "DexBackedInstruction35c.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;


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

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/Opcode;I)V

    return-void
.end method


# virtual methods
.method public getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    iget v1, v1, Lcom/android/tools/smali/dexlib2/Opcode;->referenceType:I

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 82
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v2

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->instructionStart:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v2

    .line 81
    invoke-static {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedReference;->makeReference(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;II)Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceType()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/Opcode;->referenceType:I

    return v0
.end method

.method public getRegisterC()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->instructionStart:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractLowUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterCount()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->instructionStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractHighUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterD()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->instructionStart:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractHighUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterE()I
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->instructionStart:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractLowUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterF()I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->instructionStart:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractHighUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterG()I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/instruction/DexBackedInstruction35c;->instructionStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/smali/util/NibbleUtils;->extractLowUnsignedNibble(I)I

    move-result v0

    return v0
.end method
