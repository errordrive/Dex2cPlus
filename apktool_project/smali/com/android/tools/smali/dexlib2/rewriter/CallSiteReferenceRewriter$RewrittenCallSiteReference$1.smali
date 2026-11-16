.class Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference$1;
.super Ljava/lang/Object;
.source "CallSiteReferenceRewriter.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;->getExtraArguments()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
        "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference$1;->this$1:Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference$1;->this$1:Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-static {v0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteValue(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 82
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/CallSiteReferenceRewriter$RewrittenCallSiteReference$1;->apply(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    return-object p1
.end method
