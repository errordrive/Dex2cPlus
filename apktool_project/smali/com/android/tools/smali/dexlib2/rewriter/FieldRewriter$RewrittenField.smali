.class public Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;
.source "FieldRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/Field;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenField"
.end annotation


# instance fields
.field protected field:Lcom/android/tools/smali/dexlib2/iface/Field;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;Lcom/android/tools/smali/dexlib2/iface/Field;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 57
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lcom/android/tools/smali/dexlib2/iface/Field;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Field;->getAccessFlags()I

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

    .line 82
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getAnnotationRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/Field;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteSet(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getFieldReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

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

    .line 86
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/Field;->getHiddenApiRestrictions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInitialValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getEncodedValueRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/Field;->getInitialValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteNullable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getFieldReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getFieldReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
