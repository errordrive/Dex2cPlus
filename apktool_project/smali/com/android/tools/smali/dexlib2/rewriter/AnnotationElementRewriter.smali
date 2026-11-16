.class public Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;
.super Ljava/lang/Object;
.source "AnnotationElementRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter$RewrittenAnnotationElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
        "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
        ">;"
    }
.end annotation


# instance fields
.field protected final rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    return-void
.end method


# virtual methods
.method public rewrite(Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;)Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 47
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter$RewrittenAnnotationElement;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter$RewrittenAnnotationElement;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;)V

    return-object v0
.end method

.method public bridge synthetic rewrite(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/AnnotationElementRewriter;->rewrite(Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;)Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;

    move-result-object p1

    return-object p1
.end method
