.class public Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;
.super Ljava/lang/Object;
.source "DebugItemRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenRestartLocal;,
        Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenEndLocal;,
        Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;,
        Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
        "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected final rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    return-void
.end method


# virtual methods
.method public rewrite(Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-object p1

    .line 59
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenRestartLocal;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenRestartLocal;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;Lcom/android/tools/smali/dexlib2/iface/debug/RestartLocal;)V

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenEndLocal;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenEndLocal;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;)V

    return-object v0

    .line 55
    :cond_2
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;)V

    return-object v0
.end method

.method public bridge synthetic rewrite(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 45
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;->rewrite(Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    move-result-object p1

    return-object p1
.end method
