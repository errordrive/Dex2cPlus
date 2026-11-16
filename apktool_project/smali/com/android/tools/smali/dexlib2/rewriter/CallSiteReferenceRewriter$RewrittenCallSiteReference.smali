.class public Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;
.source "CallSiteReferenceRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenCallSiteReference"
.end annotation


# instance fields
.field protected callSiteReference:Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 58
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseCallSiteReference;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;->callSiteReference:Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    return-void
.end method


# virtual methods
.method public getExtraArguments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;->callSiteReference:Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getExtraArguments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference$1;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference$1;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;)V

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 86
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;->callSiteReference:Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    .line 68
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodHandle()Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteMethodHandleReference(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;->callSiteReference:Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodProto()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    .line 77
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;->callSiteReference:Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    .line 78
    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getMethodProto()Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteMethodProtoReference(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;->callSiteReference:Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/reference/CallSiteReference;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
