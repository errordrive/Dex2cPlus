.class public abstract Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;
.super Ljava/lang/Object;
.source "BuilderInstruction.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;


# instance fields
.field location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final opcode:Lcom/android/tools/smali/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/Opcode;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getFormat()Lcom/android/tools/smali/dexlib2/Format;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/smali/dexlib2/util/Preconditions;->checkFormat(Lcom/android/tools/smali/dexlib2/Opcode;Lcom/android/tools/smali/dexlib2/Format;)V

    .line 48
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    return-void
.end method


# virtual methods
.method public getCodeUnits()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->getFormat()Lcom/android/tools/smali/dexlib2/Format;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/smali/dexlib2/Format;->size:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public abstract getFormat()Lcom/android/tools/smali/dexlib2/Format;
.end method

.method public getLocation()Lcom/android/tools/smali/dexlib2/builder/MethodLocation;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->location:Lcom/android/tools/smali/dexlib2/builder/MethodLocation;

    if-eqz v0, :cond_0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get the location of an instruction that hasn\'t been added to a method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/builder/BuilderInstruction;->opcode:Lcom/android/tools/smali/dexlib2/Opcode;

    return-object v0
.end method
