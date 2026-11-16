.class Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.source "AnnotationDirectoryItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    return-void
.end method


# virtual methods
.method protected annotateItem(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .locals 8
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p2

    .line 59
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 60
    invoke-static {p3, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationSetItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x4

    .line 59
    const-string v2, "class_annotations_off = %s"

    invoke-virtual {p1, p2, v2, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, p3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v2, "fields_size = %d"

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v2

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, p3, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v3, "annotated_methods_size = %d"

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v3

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, p3, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "annotated_parameters_size = %d"

    invoke-virtual {p1, p2, v4, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const-string v4, "%s"

    if-lez v0, :cond_1

    .line 72
    const-string v5, "field_annotations:"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v5, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    .line 75
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, p3, [Ljava/lang/Object;

    aput-object v6, v7, v1

    const-string v6, "field_annotation[%d]"

    invoke-virtual {p1, v1, v6, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 77
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v6

    .line 78
    iget-object v7, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v7, v6}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/FieldIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v6

    new-array v7, p3, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-virtual {p1, p2, v4, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v6

    .line 80
    iget-object v7, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v7, v6}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationSetItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v6

    new-array v7, p3, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-virtual {p1, p2, v4, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_1
    if-lez v2, :cond_3

    .line 87
    const-string v0, "method_annotations:"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, p3, [Ljava/lang/Object;

    aput-object v5, v6, v1

    const-string v5, "method_annotation[%d]"

    invoke-virtual {p1, v1, v5, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 92
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v5

    .line 93
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v6, v5}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v5

    new-array v6, p3, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-virtual {p1, p2, v4, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v5

    .line 95
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v6, v5}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationSetItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v5

    new-array v6, p3, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-virtual {p1, p2, v4, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_3
    if-lez v3, :cond_5

    .line 102
    const-string v0, "parameter_annotations:"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v5, p3, [Ljava/lang/Object;

    aput-object v2, v5, v1

    const-string v2, "parameter_annotation[%d]"

    invoke-virtual {p1, v1, v2, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 107
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v2

    .line 108
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v5, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MethodIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v2

    new-array v5, p3, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {p1, p2, v4, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v2

    .line 110
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v5, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationSetRefList;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v2

    new-array v5, p3, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {p1, p2, v4, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 113
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_5
    return-void
.end method

.method public getItemAlignment()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 49
    const-string v0, "annotation_directory_item"

    return-object v0
.end method
