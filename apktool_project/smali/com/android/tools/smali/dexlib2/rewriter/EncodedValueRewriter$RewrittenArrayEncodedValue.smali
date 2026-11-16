.class public Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenArrayEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;
.source "EncodedValueRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenArrayEncodedValue"
.end annotation


# instance fields
.field protected arrayEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 132
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenArrayEncodedValue;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseArrayEncodedValue;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenArrayEncodedValue;->arrayEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/util/List;
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

    .line 137
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenArrayEncodedValue;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getEncodedValueRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenArrayEncodedValue;->arrayEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteList(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
