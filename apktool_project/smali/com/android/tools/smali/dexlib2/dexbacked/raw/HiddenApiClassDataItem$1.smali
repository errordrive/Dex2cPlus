.class Lcom/android/tools/smali/dexlib2/dexbacked/raw/HiddenApiClassDataItem$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.source "HiddenApiClassDataItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/raw/HiddenApiClassDataItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    return-void
.end method


# virtual methods
.method protected annotateItem(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .locals 17
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 61
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v2

    .line 63
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HiddenApiClassDataItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x4

    const-string v7, "size = 0x%x"

    invoke-virtual {v1, v3, v7, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v5, v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HiddenApiClassDataItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v5}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getClasses()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    .line 67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v9, v11, v6

    aput-object v8, v11, v4

    const-string v9, "[%d] %s"

    invoke-virtual {v1, v6, v9, v11}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 70
    iget-object v9, v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HiddenApiClassDataItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v9}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v9

    if-nez v9, :cond_0

    .line 72
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v11, v12, v6

    const-string v11, "offset = 0x%x"

    invoke-virtual {v1, v3, v11, v12}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 74
    :cond_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    add-int v12, v2, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v11, v13, v6

    aput-object v12, v13, v4

    const-string v11, "offset = 0x%x (absolute offset: 0x%x)"

    invoke-virtual {v1, v3, v11, v13}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v11

    if-lez v9, :cond_5

    .line 79
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/2addr v9, v2

    .line 81
    invoke-virtual {v1, v9}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 83
    iget-object v9, v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HiddenApiClassDataItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v9}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v9

    .line 85
    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "restriction = 0x%x: %s"

    const-string v15, "%s:"

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/smali/dexlib2/iface/Field;

    .line 86
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v13, v3, v6

    invoke-virtual {v1, v6, v15, v3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 88
    invoke-virtual {v9}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v3

    .line 89
    invoke-virtual {v9}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v13

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 91
    invoke-static {v3}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->formatHiddenRestrictions(I)Ljava/lang/String;

    move-result-object v3

    const/16 p3, 0x0

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v15, v6, p3

    aput-object v3, v6, v4

    .line 89
    invoke-virtual {v1, v13, v14, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    const/4 v3, 0x4

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    const/16 p3, 0x0

    .line 94
    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/Field;

    .line 95
    new-array v12, v4, [Ljava/lang/Object;

    aput-object v6, v12, p3

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v15, v12}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 97
    invoke-virtual {v9}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v12

    .line 98
    invoke-virtual {v9}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v13

    .line 99
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 100
    invoke-static {v12}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->formatHiddenRestrictions(I)Ljava/lang/String;

    move-result-object v12

    const/16 p3, 0x0

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v16, v6, p3

    aput-object v12, v6, v4

    .line 98
    invoke-virtual {v1, v13, v14, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    const/16 p3, 0x0

    goto :goto_3

    .line 103
    :cond_2
    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 104
    new-array v12, v4, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-virtual {v1, v13, v15, v12}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 106
    invoke-virtual {v9}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v6

    .line 107
    invoke-virtual {v9}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v12

    .line 108
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 109
    invoke-static {v6}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->formatHiddenRestrictions(I)Ljava/lang/String;

    move-result-object v6

    const/16 p3, 0x0

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v16, v13, p3

    aput-object v6, v13, v4

    .line 107
    invoke-virtual {v1, v12, v14, v13}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    goto :goto_4

    .line 112
    :cond_3
    invoke-interface {v8}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/iface/Method;

    .line 113
    new-array v8, v4, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v8, v13

    invoke-virtual {v1, v13, v15, v8}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 115
    invoke-virtual {v9}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v6

    .line 116
    invoke-virtual {v9}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v8

    .line 117
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 118
    invoke-static {v6}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->formatHiddenRestrictions(I)Ljava/lang/String;

    move-result-object v6

    const/16 p3, 0x1

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v12, v4, v13

    aput-object v6, v4, p3

    .line 116
    invoke-virtual {v1, v8, v14, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    const/4 v4, 0x1

    goto :goto_5

    :cond_4
    const/16 p3, 0x1

    const/4 v13, 0x0

    .line 122
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    goto :goto_6

    :cond_5
    const/16 p3, 0x1

    const/4 v13, 0x0

    .line 125
    :goto_6
    invoke-virtual {v1, v11}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 127
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 56
    const-string v0, "hiddenapi_class_data_item"

    return-object v0
.end method
