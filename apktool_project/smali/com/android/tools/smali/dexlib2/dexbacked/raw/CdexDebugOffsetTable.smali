.class public Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexDebugOffsetTable;
.super Ljava/lang/Object;
.source "CdexDebugOffsetTable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static annotate(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;)V
    .locals 18
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    move-object/from16 v0, p0

    .line 70
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->getCursor()I

    move-result v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v1

    const/16 v2, 0x2003

    .line 72
    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->getAnnotator(I)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object v2

    .line 74
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMethodSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v7, v5, 0x10

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v6, v10, v4

    const/4 v6, 0x1

    aput-object v8, v10, v6

    const-string v8, "Offset chuck for methods %d-%d"

    invoke-virtual {v0, v4, v8, v10}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->indent()V

    .line 80
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUbyte()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    .line 81
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUbyte()I

    move-result v10

    or-int/2addr v8, v10

    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    :goto_1
    const/16 v12, 0x10

    if-ge v11, v12, :cond_0

    shr-int v12, v8, v11

    and-int/2addr v12, v6

    .line 84
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v10, v11, v4

    const-string v10, "bitmask: 0b%s"

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v10, v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    check-cast v10, Lcom/android/tools/smali/dexlib2/dexbacked/CDexBackedDexFile;

    invoke-virtual {v10}, Lcom/android/tools/smali/dexlib2/dexbacked/CDexBackedDexFile;->getDebugInfoBase()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_2

    and-int/lit8 v13, v8, 0x1

    if-eqz v13, :cond_1

    .line 91
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readBigUleb128()I

    move-result v13

    add-int/2addr v10, v13

    .line 95
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v14

    add-int v15, v5, v11

    .line 96
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 97
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 p1, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v16, v4, p1

    aput-object v13, v4, v6

    aput-object v17, v4, v9

    .line 95
    const-string v13, "[method_id: %d]: offset_delta: %d  (offset=0x%x)"

    invoke-virtual {v0, v14, v13, v4}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v4, v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 100
    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMethodSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;

    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v2, v10, v4}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->setItemIdentity(ILjava/lang/String;)V

    goto :goto_3

    :cond_1
    const/16 p1, 0x0

    :goto_3
    shr-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/16 p1, 0x0

    .line 106
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->deindent()V

    move v5, v7

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    return-void
.end method
