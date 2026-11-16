.class public Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenEndLocal;
.super Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;
.source "DebugItemRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenEndLocal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem<",
        "Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;",
        ">;",
        "Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 121
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenEndLocal;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter;Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;)V

    return-void
.end method


# virtual methods
.method public getRegister()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/DebugItemRewriter$RewrittenEndLocal;->debugItem:Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/debug/EndLocal;->getRegister()I

    move-result v0

    return v0
.end method
