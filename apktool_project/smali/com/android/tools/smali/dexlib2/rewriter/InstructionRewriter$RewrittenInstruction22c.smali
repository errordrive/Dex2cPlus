.class public Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction22c;
.super Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;
.source "InstructionRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenInstruction22c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction<",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 167
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction22c;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)V

    return-void
.end method


# virtual methods
.method public getRegisterA()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction22c;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterA()I

    move-result v0

    return v0
.end method

.method public getRegisterB()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction22c;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v0

    return v0
.end method
