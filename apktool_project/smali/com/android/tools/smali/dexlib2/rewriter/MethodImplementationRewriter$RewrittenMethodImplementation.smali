.class public Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;
.super Ljava/lang/Object;
.source "MethodImplementationRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenMethodImplementation"
.end annotation


# instance fields
.field protected methodImplementation:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 56
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->methodImplementation:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    return-void
.end method


# virtual methods
.method public getDebugItems()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getDebugItemRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->methodImplementation:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    .line 76
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getDebugItems()Ljava/lang/Iterable;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/instruction/Instruction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getInstructionRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->methodImplementation:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    .line 66
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getRegisterCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->methodImplementation:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v0

    return v0
.end method

.method public getTryBlocks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTryBlockRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->methodImplementation:Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    .line 71
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteList(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
