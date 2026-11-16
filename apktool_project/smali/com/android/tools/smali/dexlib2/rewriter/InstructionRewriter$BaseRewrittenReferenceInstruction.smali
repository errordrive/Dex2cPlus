.class public Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;
.super Ljava/lang/Object;
.source "InstructionRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BaseRewrittenReferenceInstruction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;"
    }
.end annotation


# instance fields
.field protected instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;


# direct methods
.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;)V
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

    .line 121
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    return-void
.end method


# virtual methods
.method public getCodeUnits()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getCodeUnits()I

    move-result v0

    return v0
.end method

.method public getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getOpcode()Lcom/android/tools/smali/dexlib2/Opcode;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    .line 127
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReferenceType()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v2

    .line 126
    invoke-static {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;->access$000(Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter;ILcom/android/tools/smali/dexlib2/iface/reference/Reference;)Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceType()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/instruction/ReferenceInstruction;->getReferenceType()I

    move-result v0

    return v0
.end method
