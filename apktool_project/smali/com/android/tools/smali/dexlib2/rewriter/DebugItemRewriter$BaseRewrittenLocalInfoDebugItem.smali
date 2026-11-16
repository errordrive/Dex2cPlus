.class public Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;
.super Ljava/lang/Object;
.source "DebugItemRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;
.implements Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BaseRewrittenLocalInfoDebugItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
        ":",
        "Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;",
        "Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;"
    }
.end annotation


# instance fields
.field protected debugItem:Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;->debugItem:Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    return-void
.end method


# virtual methods
.method public getCodeAddress()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;->debugItem:Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getCodeAddress()I

    move-result v0

    return v0
.end method

.method public getDebugItemType()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;->debugItem:Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;->debugItem:Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;->debugItem:Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;->debugItem:Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteNullable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
