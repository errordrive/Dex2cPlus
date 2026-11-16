.class public Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;
.super Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;
.source "ImmutableInstruction31t.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final codeOffset:I

.field protected final registerA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format31t:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 50
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkByteRegister(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;->registerA:I

    .line 51
    iput p3, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;->codeOffset:I

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;
    .locals 3

    .line 55
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;

    return-object p0

    .line 58
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;

    .line 59
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 60
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;->getRegisterA()I

    move-result v2

    .line 61
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction31t;->getCodeOffset()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;II)V

    return-object v0
.end method


# virtual methods
.method public getCodeOffset()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;->codeOffset:I

    return v0
.end method

.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 67
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction31t;->registerA:I

    return v0
.end method
