.class public Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.source "MethodReferenceRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenMethodReference"
.end annotation


# instance fields
.field protected methodReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 55
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;->methodReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    return-void
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;->methodReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;->methodReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;->methodReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    .line 69
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference$1;

    invoke-direct {v2, p0}, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference$1;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;)V

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 74
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 68
    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteList(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;->methodReference:Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
