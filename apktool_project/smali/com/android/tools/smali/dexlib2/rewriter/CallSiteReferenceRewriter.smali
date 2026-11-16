.class public Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;
.super Ljava/lang/Object;
.source "CallSiteReferenceRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
        "Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;",
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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    return-void
.end method


# virtual methods
.method public rewrite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 52
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)V

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

    .line 44
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;->rewrite(Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    move-result-object p1

    return-object p1
.end method
