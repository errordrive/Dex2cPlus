.class public Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenDualReferenceInstruction;
.super Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;
.source "InstructionRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BaseRewrittenDualReferenceInstruction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;",
        ">",
        "Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction<",
        "TT;>;",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenDualReferenceInstruction;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)V

    return-void
.end method


# virtual methods
.method public getReference2()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenDualReferenceInstruction;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenDualReferenceInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;

    .line 246
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;->getReferenceType2()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenDualReferenceInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v2, Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;->getReference2()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v2

    .line 245
    invoke-static {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;->access$000(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceType2()I
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenDualReferenceInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/DualReferenceInstruction;->getReferenceType2()I

    move-result v0

    return v0
.end method
