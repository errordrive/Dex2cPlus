.class public Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction4rcc;
.super Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenDualReferenceInstruction;
.source "InstructionRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenInstruction4rcc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenDualReferenceInstruction<",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 287
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction4rcc;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenDualReferenceInstruction;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;)V

    return-void
.end method


# virtual methods
.method public getRegisterCount()I
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction4rcc;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;->getRegisterCount()I

    move-result v0

    return v0
.end method

.method public getStartRegister()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction4rcc;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction4rcc;->getStartRegister()I

    move-result v0

    return v0
.end method
