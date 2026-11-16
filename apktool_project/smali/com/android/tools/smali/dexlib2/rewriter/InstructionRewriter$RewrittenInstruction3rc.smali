.class public Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction3rc;
.super Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;
.source "InstructionRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenInstruction3rc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction<",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 224
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction3rc;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)V

    return-void
.end method


# virtual methods
.method public getRegisterCount()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction3rc;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getRegisterCount()I

    move-result v0

    return v0
.end method

.method public getStartRegister()I
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction3rc;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction3rc;->getStartRegister()I

    move-result v0

    return v0
.end method
