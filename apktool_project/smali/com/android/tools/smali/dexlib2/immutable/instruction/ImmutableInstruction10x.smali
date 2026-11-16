.class public Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;
.super Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;
.source "ImmutableInstruction10x.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;


# static fields
.field public static final FORMAT:Lcom/android/tools/smali/dexlib2/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/android/tools/smali/dexlib2/Format;->Format10x:Lcom/android/tools/smali/dexlib2/Format;

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;)Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;
    .locals 1

    .line 47
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction10x;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;-><init>(Lcom/android/tools/smali/dexlib2/Opcode;)V

    return-object v0
.end method


# virtual methods
.method public getFormat()Lcom/android/tools/smali/dexlib2/Format;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/instruction/ImmutableInstruction10x;->FORMAT:Lcom/android/tools/smali/dexlib2/Format;

    return-object v0
.end method
