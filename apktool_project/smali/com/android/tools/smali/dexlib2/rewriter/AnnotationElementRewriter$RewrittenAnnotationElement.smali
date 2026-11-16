.class public Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter$RewrittenAnnotationElement;
.super Lcom/android/tools/smali/dexlib2/base/BaseAnnotationElement;
.source "AnnotationElementRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenAnnotationElement"
.end annotation


# instance fields
.field protected annotationElement:Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 53
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter$RewrittenAnnotationElement;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseAnnotationElement;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter$RewrittenAnnotationElement;->annotationElement:Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter$RewrittenAnnotationElement;->annotationElement:Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter$RewrittenAnnotationElement;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getEncodedValueRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter$RewrittenAnnotationElement;->annotationElement:Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;->getValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    return-object v0
.end method
