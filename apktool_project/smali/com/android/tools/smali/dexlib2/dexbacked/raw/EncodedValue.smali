.class public Lcom/android/tools/smali/dexlib2/dexbacked/raw/EncodedValue;
.super Ljava/lang/Object;
.source "EncodedValue.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static annotateEncodedAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V
    .locals 7
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    .line 99
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    invoke-static {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/TypeIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    .line 102
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const-string v3, "size: %d"

    invoke-virtual {p1, v1, v3, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const-string v3, "element[%d]"

    invoke-virtual {p1, v2, v3, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 108
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v3

    .line 109
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v5

    .line 110
    invoke-static {p0, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/StringIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v2

    .line 109
    const-string v3, "name = %s"

    invoke-virtual {p1, v5, v3, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-static {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/EncodedValue;->annotateEncodedValue(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    .line 114
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static annotateEncodedArray(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V
    .locals 6
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    .line 125
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "size: %d"

    invoke-virtual {p1, v1, v2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const-string v2, "element[%d]"

    invoke-virtual {p1, v5, v2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 131
    invoke-static {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/EncodedValue;->annotateEncodedValue(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    .line 133
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static annotateEncodedValue(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V
    .locals 8
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUbyte()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x5

    and-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    const/4 v6, 0x6

    if-eq v0, v6, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v6, 0x4

    if-eq v0, v6, :cond_1

    const/16 v6, 0x10

    if-eq v0, v6, :cond_1

    const/16 v6, 0x11

    if-eq v0, v6, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 88
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    .line 87
    const-string p1, "Invalid encoded value type 0x%x at offset 0x%x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-ne v1, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p2, v1, v5

    aput-object v0, v1, v3

    const-string p0, "valueArg = %d, valueType = 0x%x: boolean, value=%s"

    invoke-virtual {p1, v5, p0, v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 81
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v4

    aput-object p2, v0, v5

    const-string p0, "valueArg = %d, valueType = 0x%x: null"

    invoke-virtual {p1, v5, p0, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 77
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object v0, v2, v5

    const-string v0, "valueArg = %d, valueType = 0x%x: annotation"

    invoke-virtual {p1, v5, v0, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/EncodedValue;->annotateEncodedAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    return-void

    .line 73
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object v0, v2, v5

    const-string v0, "valueArg = %d, valueType = 0x%x: array"

    invoke-virtual {p1, v5, v0, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-static {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/EncodedValue;->annotateEncodedArray(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    return-void

    .line 67
    :cond_1
    :pswitch_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 68
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/ValueType;->getValueTypeName(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v4

    aput-object v7, v2, v5

    aput-object v0, v2, v3

    .line 67
    const-string v0, "valueArg = %d, valueType = 0x%x: %s"

    invoke-virtual {p1, v5, v0, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->setOffset(I)V

    add-int/2addr v1, v5

    .line 70
    invoke-static {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/EncodedValue;->asString(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/lang/String;

    move-result-object p0

    new-array p2, v5, [Ljava/lang/Object;

    aput-object p0, p2, v4

    const-string p0, "value = %s"

    invoke-virtual {p1, v1, p0, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static asString(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/lang/String;
    .locals 7
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUbyte()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x5

    and-int/lit8 v0, v0, 0x1f

    .line 144
    const-string v2, "0x%x"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    const/4 v5, 0x6

    if-eq v0, v5, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    const/4 v6, 0x3

    if-eq v0, v6, :cond_4

    const/4 v6, 0x4

    if-eq v0, v6, :cond_3

    const/16 v2, 0x10

    const-string v6, "%f"

    if-eq v0, v2, :cond_2

    const/16 v2, 0x11

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 194
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object p1, v1, v4

    .line 194
    const-string p1, "Invalid encoded value type 0x%x at offset 0x%x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-ne v1, v4, :cond_0

    const/4 v3, 0x1

    .line 192
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 190
    :pswitch_1
    const-string p0, "null"

    return-object p0

    :pswitch_2
    add-int/2addr v1, v4

    .line 182
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedSmallUint(I)I

    move-result p1

    .line 183
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/FieldIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    add-int/2addr v1, v4

    .line 179
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedSmallUint(I)I

    move-result p1

    .line 180
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    add-int/2addr v1, v4

    .line 176
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedSmallUint(I)I

    move-result p1

    .line 177
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/FieldIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    add-int/2addr v1, v4

    .line 173
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedSmallUint(I)I

    move-result p1

    .line 174
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/TypeIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    add-int/2addr v1, v4

    .line 170
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedSmallUint(I)I

    move-result p1

    .line 171
    invoke-static {p0, p1, v4}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/StringIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 187
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->setOffset(I)V

    .line 188
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/value/DexBackedEncodedValue;->readFrom(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    add-int/2addr v1, v4

    .line 167
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedSmallUint(I)I

    move-result p1

    .line 168
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ProtoIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/2addr v1, v4

    .line 164
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedRightExtendedLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 165
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v3

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/2addr v1, v4

    .line 161
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedRightExtendedInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 162
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v3

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/2addr v1, v4

    .line 155
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedInt(I)I

    move-result p0

    .line 156
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v3

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/2addr v1, v4

    .line 152
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedSmallUint(I)I

    move-result p0

    .line 153
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v3

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/2addr v1, v4

    .line 149
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedInt(I)I

    move-result p0

    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v3

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/2addr v1, v4

    .line 158
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSizedLong(I)J

    move-result-wide p0

    .line 159
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v3

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 146
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readByte()I

    move-result p0

    .line 147
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v3

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
