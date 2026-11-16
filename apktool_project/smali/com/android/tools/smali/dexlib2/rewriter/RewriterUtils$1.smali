.class Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;
.super Ljava/util/AbstractSet;
.source "RewriterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteSet(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$rewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

.field final synthetic val$set:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;->val$set:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;->val$rewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

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

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;->val$set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1$1;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;->val$set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
