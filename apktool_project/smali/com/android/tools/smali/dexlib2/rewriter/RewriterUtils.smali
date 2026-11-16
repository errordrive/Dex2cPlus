.class public Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils;
.super Ljava/lang/Object;
.source "RewriterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rewriteIterable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$3;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$3;-><init>(Ljava/lang/Iterable;Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;)V

    return-object v0
.end method

.method public static rewriteList(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "TT;>;",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$2;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/List;)V

    return-object v0
.end method

.method public static rewriteMethodHandleReference(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 146
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    new-instance p0, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 176
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;->getMethodHandleType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Invalid method handle type: %d"

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 165
    :pswitch_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$6;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$6;-><init>(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0

    .line 151
    :pswitch_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$5;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$5;-><init>(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static rewriteMethodProtoReference(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;",
            ")",
            "Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 183
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$7;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)V

    return-object v0
.end method

.method public static rewriteNullable(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static rewriteSet(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "TT;>;",
            "Ljava/util/Set<",
            "+TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$1;-><init>(Ljava/util/Set;Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;)V

    return-object v0
.end method

.method public static rewriteTypeReference(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/rewriter/Rewriter<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;",
            ")",
            "Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;"
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$4;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$4;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriter;Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;)V

    return-object v0
.end method

.method public static rewriteValue(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 202
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 250
    new-instance p0, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 251
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unsupported encoded value type: %d"

    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 243
    :pswitch_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$12;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$12;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    return-object v0

    .line 236
    :pswitch_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$11;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$11;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    return-object v0

    .line 229
    :pswitch_2
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$10;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$10;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    return-object v0

    .line 220
    :pswitch_3
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$9;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$9;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    return-object v0

    .line 211
    :pswitch_4
    new-instance v0, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$8;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/rewriter/RewriterUtils$8;-><init>(Lcom/android/tools/smali/dexlib2/rewriter/Rewriters;Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)V

    return-object v0

    :cond_0
    :pswitch_5
    return-object p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
