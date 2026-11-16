.class public Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenAnnotationEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;
.source "EncodedValueRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenAnnotationEncodedValue"
.end annotation


# instance fields
.field protected annotationEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 144
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenAnnotationEncodedValue;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenAnnotationEncodedValue;->annotationEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    return-void
.end method


# virtual methods
.method public getElements()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenAnnotationEncodedValue;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getAnnotationElementRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenAnnotationEncodedValue;->annotationEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    .line 154
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteSet(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenAnnotationEncodedValue;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenAnnotationEncodedValue;->annotationEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
