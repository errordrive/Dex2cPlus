.class Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$11;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseFieldEncodedValue;
.source "RewriterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;->rewriteValue(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$encodedValue:Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

.field final synthetic val$rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$11;->val$rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$11;->val$encodedValue:Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseFieldEncodedValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$11;->val$rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;->getFieldReferenceRewriter()Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$11;->val$encodedValue:Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    check-cast v1, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;

    invoke-interface {v1}, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;->getValue()Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;

    return-object v0
.end method
