.class public Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter$RewrittenExceptionHandler;
.super Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;
.source "ExceptionHandlerRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenExceptionHandler"
.end annotation


# instance fields
.field protected exceptionHandler:Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter;Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 53
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter$RewrittenExceptionHandler;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseExceptionHandler;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter$RewrittenExceptionHandler;->exceptionHandler:Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    return-void
.end method


# virtual methods
.method public getExceptionType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter$RewrittenExceptionHandler;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter$RewrittenExceptionHandler;->exceptionHandler:Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteNullable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerCodeAddress()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/ExceptionHandlerRewriter$RewrittenExceptionHandler;->exceptionHandler:Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v0

    return v0
.end method
