.class public Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;
.super Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
.source "BuilderInstruction35c.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final reference:Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final registerC:I

.field protected final registerCount:I

.field protected final registerD:I

.field protected final registerE:I

.field protected final registerF:I

.field protected final registerG:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format35c:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;IIIIIILcom/android/tools/smali/dexlib2/iface/reference/Reference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p8    # Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 61
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 62
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->check35cAnd45ccRegisterCount(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->registerCount:I

    const/4 p1, 0x0

    if-lez p2, :cond_0

    .line 63
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput p3, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->registerC:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    .line 64
    invoke-static {p4}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput p3, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->registerD:I

    const/4 p3, 0x2

    if-le p2, p3, :cond_2

    .line 65
    invoke-static {p5}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p3

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    iput p3, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->registerE:I

    const/4 p3, 0x3

    if-le p2, p3, :cond_3

    .line 66
    invoke-static {p6}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p3

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    iput p3, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->registerF:I

    const/4 p3, 0x4

    if-le p2, p3, :cond_4

    .line 67
    invoke-static {p7}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p1

    :cond_4
    iput p1, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->registerG:I

    .line 68
    iput-object p8, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->reference:Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 80
    sget-object v0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->reference:Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    return-object v0
.end method

.method public getReferenceType()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/Opcode;->referenceType:I

    return v0
.end method

.method public getRegisterC()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->registerC:I

    return v0
.end method

.method public getRegisterCount()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->registerCount:I

    return v0
.end method

.method public getRegisterD()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->registerD:I

    return v0
.end method

.method public getRegisterE()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->registerE:I

    return v0
.end method

.method public getRegisterF()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->registerF:I

    return v0
.end method

.method public getRegisterG()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/android/tools/smali/dexlib2/builder/instruction/BuilderInstruction35c;->registerG:I

    return v0
.end method
