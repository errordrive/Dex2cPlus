.class public Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;
.super Ljava/lang/Object;
.source "EncodedValueRewriter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenAnnotationEncodedValue;,
        Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenArrayEncodedValue;,
        Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenMethodEncodedValue;,
        Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenEnumEncodedValue;,
        Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenFieldEncodedValue;,
        Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenTypeEncodedValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
        "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;->rewriters:Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;

    return-void
.end method


# virtual methods
.method public rewrite(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-object p1

    .line 75
    :pswitch_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenAnnotationEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenAnnotationEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;)V

    return-object v0

    .line 73
    :pswitch_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenArrayEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenArrayEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;Lcom/android/tools/smali/dexlib2/iface/value/ArrayEncodedValue;)V

    return-object v0

    .line 71
    :pswitch_2
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenEnumEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenEnumEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;Lcom/android/tools/smali/dexlib2/iface/value/EnumEncodedValue;)V

    return-object v0

    .line 69
    :pswitch_3
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenMethodEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenMethodEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;Lcom/android/tools/smali/dexlib2/iface/value/MethodEncodedValue;)V

    return-object v0

    .line 67
    :pswitch_4
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenFieldEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenFieldEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;Lcom/android/tools/smali/dexlib2/iface/value/FieldEncodedValue;)V

    return-object v0

    .line 65
    :pswitch_5
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenTypeEncodedValue;

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter$RewrittenTypeEncodedValue;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;Lcom/android/tools/smali/dexlib2/iface/value/TypeEncodedValue;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic rewrite(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 55
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/EncodedValueRewriter;->rewrite(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    return-object p1
.end method
