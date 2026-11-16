.class public Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;
.source "ClassDefRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/ClassDef;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenClassDef"
.end annotation


# instance fields
.field protected classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;Lcom/android/tools/smali/dexlib2/iface/ClassDef;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 59
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getAccessFlags()I

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

    .line 84
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getAnnotationRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteSet(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getMethodRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 98
    new-instance v0, Lcom/android/tools/smali/util/ChainedIterable;

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ChainedIterable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public getInstanceFields()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getFieldRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getInterfaces()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteList(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 112
    new-instance v0, Lcom/android/tools/smali/util/ChainedIterable;

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ChainedIterable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStaticFields()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getFieldRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteNullable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualMethods()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getMethodRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
