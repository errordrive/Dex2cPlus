.class Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$6;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodHandleReference;
.source "RewriterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteMethodHandleReference(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$methodHandleReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

.field final synthetic val$rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$6;->val$methodHandleReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$6;->val$rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodHandleReference;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$6;->val$rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getMethodReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$6;->val$methodHandleReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/Reference;

    return-object v0
.end method

.method public getMethodHandleType()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$6;->val$methodHandleReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result v0

    return v0
.end method
