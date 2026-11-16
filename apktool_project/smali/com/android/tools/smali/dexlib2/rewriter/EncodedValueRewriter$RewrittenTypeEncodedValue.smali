.class public Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenTypeEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseTypeEncodedValue;
.source "EncodedValueRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenTypeEncodedValue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

.field protected typeEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 84
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenTypeEncodedValue;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseTypeEncodedValue;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenTypeEncodedValue;->typeEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenTypeEncodedValue;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenTypeEncodedValue;->typeEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
