.class public Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;
.super Lcom/android/tools/smali/dexlib2/base/BaseTryBlock;
.source "TryBlockRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenTryBlock"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/base/BaseTryBlock<",
        "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;

.field protected tryBlock:Lcom/android/tools/smali/dexlib2/iface/TryBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;Lcom/android/tools/smali/dexlib2/iface/TryBlock;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseTryBlock;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;->tryBlock:Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    return-void
.end method


# virtual methods
.method public getCodeUnitCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;->tryBlock:Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v0

    return v0
.end method

.method public getExceptionHandlers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getExceptionHandlerRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;->tryBlock:Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteList(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartCodeAddress()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;->tryBlock:Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v0

    return v0
.end method
