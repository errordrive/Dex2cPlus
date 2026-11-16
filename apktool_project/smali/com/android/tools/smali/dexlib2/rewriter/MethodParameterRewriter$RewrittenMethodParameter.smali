.class public Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;
.super Lcom/android/tools/smali/dexlib2/base/BaseMethodParameter;
.source "MethodParameterRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenMethodParameter"
.end annotation


# instance fields
.field protected methodParameter:Lcom/android/tools/smali/dexlib2/iface/MethodParameter;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter;Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 55
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseMethodParameter;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->methodParameter:Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getAnnotationRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->methodParameter:Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteSet(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->methodParameter:Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->methodParameter:Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->methodParameter:Lcom/android/tools/smali/dexlib2/iface/MethodParameter;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
