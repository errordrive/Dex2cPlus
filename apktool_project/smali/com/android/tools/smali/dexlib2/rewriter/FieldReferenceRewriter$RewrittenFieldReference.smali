.class public Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;
.source "FieldReferenceRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenFieldReference"
.end annotation


# instance fields
.field protected fieldReference:Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 52
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->fieldReference:Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    return-void
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->fieldReference:Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

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

    .line 61
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->fieldReference:Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->fieldReference:Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
