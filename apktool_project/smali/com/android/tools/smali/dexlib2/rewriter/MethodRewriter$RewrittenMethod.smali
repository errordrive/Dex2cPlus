.class public Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.source "MethodRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/Method;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenMethod"
.end annotation


# instance fields
.field protected method:Lcom/android/tools/smali/dexlib2/iface/Method;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;Lcom/android/tools/smali/dexlib2/iface/Method;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 59
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v0

    return v0
.end method

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

    .line 92
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getAnnotationRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteSet(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getMethodReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenApiRestrictions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getHiddenApiRestrictions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getMethodImplementationRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 101
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteNullable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getMethodReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .locals 2
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

    .line 72
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getMethodReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getMethodParameterRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteList(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getMethodReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lcom/android/tools/smali/dexlib2/iface/Method;

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
