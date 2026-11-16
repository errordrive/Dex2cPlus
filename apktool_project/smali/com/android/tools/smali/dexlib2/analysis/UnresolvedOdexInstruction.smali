.class public Lcom/android/tools/smali/dexlib2/analysis/UnresolvedOdexInstruction;
.super Ljava/lang/Object;
.source "UnresolvedOdexInstruction.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;


# instance fields
.field public final objectRegisterNum:I

.field public final originalInstruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/UnresolvedOdexInstruction;->originalInstruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    .line 48
    iput p2, p0, Lcom/android/tools/smali/dexlib2/analysis/UnresolvedOdexInstruction;->objectRegisterNum:I

    return-void
.end method


# virtual methods
.method public getCodeUnits()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/UnresolvedOdexInstruction;->originalInstruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v0

    return v0
.end method

.method public getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/UnresolvedOdexInstruction;->originalInstruction:Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v0

    return-object v0
.end method
