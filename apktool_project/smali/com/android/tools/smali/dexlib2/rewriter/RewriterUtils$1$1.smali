.class Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1$1;
.super Ljava/lang/Object;
.source "RewriterUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;Ljava/util/Iterator;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1$1;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1$1;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;->val$rewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteNullable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
