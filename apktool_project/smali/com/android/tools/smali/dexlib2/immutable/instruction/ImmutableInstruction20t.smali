.class public Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;
.super Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;
.source "ImmutableInstruction20t.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# instance fields
.field protected final codeOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format20t:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    .line 48
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkShortCodeOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;->codeOffset:I

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;
    .locals 2

    .line 52
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;

    if-eqz v0, :cond_0

    .line 53
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;

    .line 56
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v1

    .line 57
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction20t;->getCodeOffset()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;I)V

    return-object v0
.end method


# virtual methods
.method public getCodeOffset()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;->codeOffset:I

    return v0
.end method

.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction20t;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method
