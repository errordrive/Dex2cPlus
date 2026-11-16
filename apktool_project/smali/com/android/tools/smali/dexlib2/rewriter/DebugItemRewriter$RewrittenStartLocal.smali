.class public Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;
.super Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;
.source "DebugItemRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenStartLocal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem<",
        "Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 94
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)V

    return-void
.end method


# virtual methods
.method public getNameReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;->debugItem:Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getNameReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    move-result-object v0

    return-object v0
.end method

.method public getRegister()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;->debugItem:Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getRegister()I

    move-result v0

    return v0
.end method

.method public getSignatureReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;->debugItem:Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getSignatureReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;

    move-result-object v0

    return-object v0
.end method

.method public getTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;->debugItem:Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;->getTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteTypeReference(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;

    move-result-object v0

    return-object v0
.end method
