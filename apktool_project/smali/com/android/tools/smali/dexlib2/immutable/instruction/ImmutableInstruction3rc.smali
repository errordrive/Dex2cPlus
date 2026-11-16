.class public Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;
.super Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;
.source "ImmutableInstruction3rc.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final reference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final registerCount:I

.field protected final startRegister:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format3rc:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 56
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkShortRegister(I)I

    move-result p2

    iput p2, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;->startRegister:I

    .line 57
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkRegisterRangeCount(I)I

    move-result p2

    iput p2, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;->registerCount:I

    .line 58
    iget p1, p1, Lcom/android/tools/smali/dexlib2/Opcode;->referenceType:I

    invoke-static {p1, p4}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReferenceFactory;->of(ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;->reference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;
    .locals 4

    .line 62
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    if-eqz v0, :cond_0

    .line 63
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    return-object p0

    .line 65
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    .line 66
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 67
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getStartRegister()I

    move-result v2

    .line 68
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getRegisterCount()I

    move-result v3

    .line 69
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public bridge synthetic getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;->getReference()Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;->reference:Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;

    return-object v0
.end method

.method public getReferenceType()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/Opcode;->referenceType:I

    return v0
.end method

.method public getRegisterCount()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;->registerCount:I

    return v0
.end method

.method public getStartRegister()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction3rc;->startRegister:I

    return v0
.end method
