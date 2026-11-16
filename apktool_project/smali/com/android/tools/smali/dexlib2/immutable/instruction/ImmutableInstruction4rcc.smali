.class public Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;
.super Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;
.source "ImmutableInstruction4rcc.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;


# static fields
.field private static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final reference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final reference2:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final registerCount:I

.field protected final startRegister:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format4rcc:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 59
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkShortRegister(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->startRegister:I

    .line 60
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkRegisterRangeCount(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->registerCount:I

    .line 61
    invoke-static {p4}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReferenceFactory;->of(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->reference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    .line 62
    invoke-static {p5}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReferenceFactory;->of(Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->reference2:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;
    .locals 6

    .line 66
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;

    if-eqz v0, :cond_0

    .line 67
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;

    return-object p0

    .line 69
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;

    .line 70
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 71
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;->getStartRegister()I

    move-result v2

    .line 72
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;->getRegisterCount()I

    move-result v3

    .line 73
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v4

    .line 74
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;->getReference2()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;Lcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 86
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->reference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    return-object v0
.end method

.method public getReference2()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->reference2:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    return-object v0
.end method

.method public getReferenceType()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/Opcode;->referenceType:I

    return v0
.end method

.method public getReferenceType2()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/Opcode;->referenceType2:I

    return v0
.end method

.method public getRegisterCount()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->registerCount:I

    return v0
.end method

.method public getStartRegister()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction4rcc;->startRegister:I

    return v0
.end method
