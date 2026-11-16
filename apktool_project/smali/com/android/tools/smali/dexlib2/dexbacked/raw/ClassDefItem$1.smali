.class Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.source "ClassDefItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private classDataAnnotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->classDataAnnotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    return-void
.end method

.method private addClassDataIdentity(ILjava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->classDataAnnotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->setItemIdentity(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected annotateItem(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .locals 5
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p2

    .line 74
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {p3, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/TypeIdItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x4

    const-string v3, "class_idx = %s"

    invoke-virtual {p1, p3, v3, v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 78
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/AccessFlags;->getAccessFlagsForClass(I)[Lcom/android/tools/smali/dexlib2/AccessFlags;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "|"

    invoke-static {v1, v4}, Lcom/android/tools/smali/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v1, v4, v0

    .line 77
    const-string v1, "access_flags = 0x%x: %s"

    invoke-virtual {p1, p3, v1, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readOptionalUint(I)I

    move-result v1

    .line 81
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 82
    invoke-static {v3, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/TypeIdItem;->getOptionalReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 81
    const-string v1, "superclass_idx = %s"

    invoke-virtual {p1, p3, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    .line 85
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v3, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/TypeListItem;->getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "interfaces_off = %s"

    invoke-virtual {p1, p3, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readOptionalUint(I)I

    move-result v1

    .line 88
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v3, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/StringIdItem;->getOptionalReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "source_file_idx = %s"

    invoke-virtual {p1, p3, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 93
    const-string v1, "annotations_off = annotations_directory_item[NO_OFFSET]"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "annotations_off = annotations_directory_item[0x%x]"

    invoke-virtual {p1, p3, v1, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 100
    const-string p2, "class_data_off = class_data_item[NO_OFFSET]"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2, v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 102
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "class_data_off = class_data_item[0x%x]"

    invoke-virtual {p1, p3, v3, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->addClassDataIdentity(ILjava/lang/String;)V

    .line 106
    :goto_1
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p2

    if-nez p2, :cond_2

    .line 108
    const-string p2, "static_values_off = encoded_array_item[NO_OFFSET]"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string p2, "static_values_off = encoded_array_item[0x%x]"

    invoke-virtual {p1, p3, p2, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public annotateSection(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 63
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->annotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->getAnnotator(I)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;->classDataAnnotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    .line 64
    invoke-super {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->annotateSection(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;)V

    return-void
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 68
    const-string v0, "class_def_item"

    return-object v0
.end method
