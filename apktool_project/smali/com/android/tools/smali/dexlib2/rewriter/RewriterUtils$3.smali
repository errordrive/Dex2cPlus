.class Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$3;
.super Ljava/lang/Object;
.source "RewriterUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$rewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$3;->val$iterable:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$3;->val$rewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$3;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$3$1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$3$1;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$3;Ljava/util/Iterator;)V

    return-object v1
.end method
