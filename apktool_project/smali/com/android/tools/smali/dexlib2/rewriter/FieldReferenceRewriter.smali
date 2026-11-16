.class public Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;
.super Ljava/lang/Object;
.source "FieldReferenceRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
        "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    return-void
.end method


# virtual methods
.method public rewrite(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 46
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)V

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

    .line 38
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/FieldReferenceRewriter;->rewrite(Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    return-object p1
.end method
