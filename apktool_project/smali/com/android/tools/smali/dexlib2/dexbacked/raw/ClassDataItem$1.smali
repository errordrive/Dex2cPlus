.class Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.source "ClassDataItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private codeItemAnnotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->codeItemAnnotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    return-void
.end method

.method private addCodeItemIdentity(ILjava/lang/String;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->codeItemAnnotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->setItemIdentity(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private annotateEncodedField(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)I
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;I)I"
        }
    .end annotation

    .line 136
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    move-result v0

    add-int/2addr p4, v0

    .line 138
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 139
    invoke-static {p2, p4}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/FieldIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    .line 138
    const-string p2, "field_idx_diff = %d: %s"

    invoke-virtual {p1, v1, p2, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    .line 142
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 143
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getAccessFlagsForField(I)[Lcom/android/tools/smali/dexlib2/AccessFlags;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v3, "|"

    invoke-static {p2, v3}, Lcom/android/tools/smali/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object p2, v2, v0

    .line 142
    const-string p2, "access_flags = 0x%x: %s"

    invoke-virtual {p1, p3, p2, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    return p4
.end method

.method private annotateEncodedMethod(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)I
    .locals 7
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;I)I"
        }
    .end annotation

    .line 152
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    move-result v0

    add-int/2addr p4, v0

    .line 154
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 155
    invoke-static {p2, p4}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    .line 154
    const-string v2, "method_idx_diff = %d: %s"

    invoke-virtual {p1, v1, v2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    .line 158
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 159
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getAccessFlagsForField(I)[Lcom/android/tools/smali/dexlib2/AccessFlags;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v6, "|"

    invoke-static {v1, v6}, Lcom/android/tools/smali/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v5

    aput-object v1, v3, v0

    .line 158
    const-string v1, "access_flags = 0x%x: %s"

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p2

    const-string p3, "code_off = code_item[NO_OFFSET]"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    return p4

    .line 165
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v5

    const-string v2, "code_off = code_item[0x%x]"

    invoke-virtual {p1, p3, v2, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {p2, p4}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodIdItem;->asString(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->addCodeItemIdentity(ILjava/lang/String;)V

    return p4
.end method


# virtual methods
.method protected annotateItem(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .locals 9
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p3

    .line 68
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "static_fields_size = %d"

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    .line 71
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, v4

    const-string v3, "instance_fields_size = %d"

    invoke-virtual {p1, v1, v3, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    .line 74
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const-string v5, "direct_methods_size = %d"

    invoke-virtual {p1, v3, v5, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v3

    .line 77
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const-string v6, "virtual_methods_size = %d"

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    if-lez p3, :cond_1

    .line 81
    const-string v5, "static_fields:"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, p3, :cond_0

    .line 84
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v4

    const-string v7, "static_field[%d]"

    invoke-virtual {p1, v4, v7, v8}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 86
    iget-object v7, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0, p1, v7, p2, v6}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->annotateEncodedField(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)I

    move-result v6

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_1
    if-lez v0, :cond_3

    .line 93
    const-string p3, "instance_fields:"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v4, p3, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge p3, v0, :cond_2

    .line 97
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const-string v6, "instance_field[%d]"

    invoke-virtual {p1, v4, v6, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 99
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0, p1, v6, p2, v5}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->annotateEncodedField(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)I

    move-result v5

    .line 100
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_3
    if-lez v1, :cond_5

    .line 106
    const-string p3, "direct_methods:"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v4, p3, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_2
    if-ge p3, v1, :cond_4

    .line 110
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const-string v5, "direct_method[%d]"

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 112
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0, p1, v5, p2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->annotateEncodedMethod(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)I

    move-result v0

    .line 113
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 115
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_5
    if-lez v3, :cond_7

    .line 119
    const-string p3, "virtual_methods:"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v4, p3, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_3
    if-ge p3, v3, :cond_6

    .line 123
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v4

    const-string v1, "virtual_method[%d]"

    invoke-virtual {p1, v4, v1, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 125
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->annotateEncodedMethod(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)I

    move-result v0

    .line 126
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 128
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_7
    return-void
.end method

.method public annotateSection(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 55
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->annotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;

    const/16 v1, 0x2001

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->getAnnotator(I)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDataItem$1;->codeItemAnnotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    .line 56
    invoke-super {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->annotateSection(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;)V

    return-void
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 60
    const-string v0, "class_data_item"

    return-object v0
.end method
