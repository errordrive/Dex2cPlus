.class public Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenFieldEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseFieldEncodedValue;
.source "EncodedValueRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RewrittenFieldEncodedValue"
.end annotation


# instance fields
.field protected fieldEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 96
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenFieldEncodedValue;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseFieldEncodedValue;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenFieldEncodedValue;->fieldEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;

    return-void
.end method


# virtual methods
.method public getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenFieldEncodedValue;->this$0:Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getFieldReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenFieldEncodedValue;->fieldEncodedValue:Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    return-object v0
.end method
