.class public Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;
.super Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;
.source "ImmutableInstruction51l.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final literal:J

.field protected final registerA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format51l:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;IJ)V
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

    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;->registerA:I

    .line 51
    iput-wide p3, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;->literal:J

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;
    .locals 5

    .line 55
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;

    return-object p0

    .line 58
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;

    .line 59
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 60
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;->getRegisterA()I

    move-result v2

    .line 61
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction51l;->getWideLiteral()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;IJ)V

    return-object v0
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 67
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;->registerA:I

    return v0
.end method

.method public getWideLiteral()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction51l;->literal:J

    return-wide v0
.end method
