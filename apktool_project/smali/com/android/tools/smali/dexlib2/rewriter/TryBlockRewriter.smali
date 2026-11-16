.class public Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;
.super Ljava/lang/Object;
.source "TryBlockRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
        "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
        "+",
        "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
        ">;>;"
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    return-void
.end method


# virtual methods
.method public rewrite(Lcom/android/tools/smali/dexlib2/iface/TryBlock;)Lcom/android/tools/smali/dexlib2/iface/TryBlock;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/TryBlock;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/iface/TryBlock<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 49
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;Lcom/android/tools/smali/dexlib2/iface/TryBlock;)V

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

    .line 40
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/TryBlockRewriter;->rewrite(Lcom/android/tools/smali/dexlib2/iface/TryBlock;)Lcom/android/tools/smali/dexlib2/iface/TryBlock;

    move-result-object p1

    return-object p1
.end method
