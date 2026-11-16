.class public Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;
.super Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;
.source "InstructionRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenInstruction35c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction<",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 193
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)V

    return-void
.end method


# virtual methods
.method public getRegisterC()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v0

    return v0
.end method

.method public getRegisterCount()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterCount()I

    move-result v0

    return v0
.end method

.method public getRegisterD()I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v0

    return v0
.end method

.method public getRegisterE()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v0

    return v0
.end method

.method public getRegisterF()I
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result v0

    return v0
.end method

.method public getRegisterG()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterG()I

    move-result v0

    return v0
.end method
