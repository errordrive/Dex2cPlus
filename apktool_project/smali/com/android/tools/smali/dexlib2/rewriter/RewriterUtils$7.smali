.class Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodProtoReference;
.source "RewriterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteMethodProtoReference(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$methodProtoReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

.field final synthetic val$typeRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;->val$typeRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;->val$methodProtoReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodProtoReference;-><init>()V

    return-void
.end method


# virtual methods
.method public getParameterTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;->val$typeRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;->val$methodProtoReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    .line 186
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7$1;

    invoke-direct {v2, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7$1;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;)V

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 190
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 185
    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteList(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;->val$typeRewriter:Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;->val$methodProtoReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
