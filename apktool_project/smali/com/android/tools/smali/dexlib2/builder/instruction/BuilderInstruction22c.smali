.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
.source "BuilderInstruction22c.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final reference:Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final registerA:I

.field protected final registerB:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format22c:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

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

    .line 53
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 54
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;->registerA:I

    .line 55
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;->registerB:I

    .line 56
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;->reference:Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;->reference:Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    return-object v0
.end method

.method public getReferenceType()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/Opcode;->referenceType:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;->registerA:I

    return v0
.end method

.method public getRegisterB()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction22c;->registerB:I

    return v0
.end method
