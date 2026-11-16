.class public Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenMethodEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseMethodEncodedValue;
.source "EncodedValueRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenMethodEncodedValue"
.end annotation


# instance fields
.field protected methodEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 120
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenMethodEncodedValue;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseMethodEncodedValue;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenMethodEncodedValue;->methodEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;

    return-void
.end method


# virtual methods
.method public getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenMethodEncodedValue;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getMethodReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenMethodEncodedValue;->methodEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    return-object v0
.end method
