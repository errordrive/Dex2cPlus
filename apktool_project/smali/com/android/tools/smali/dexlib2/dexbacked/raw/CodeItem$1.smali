.class Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;
.source "CodeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->makeAnnotatorForCDex(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sortedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    return-void
.end method


# virtual methods
.method protected annotatePreInstructionFields(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator$PreInstructionInfo;
    .locals 17
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator$PreInstructionInfo;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 138
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v2

    .line 140
    sget v3, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_TRIES_SIZE_SHIFT:I

    shr-int v3, v2, v3

    and-int/lit8 v3, v3, 0xf

    .line 141
    sget v4, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_OUTS_COUNT_SHIFT:I

    shr-int v4, v2, v4

    and-int/lit8 v4, v4, 0xf

    .line 142
    sget v5, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_INS_COUNT_SHIFT:I

    shr-int v5, v2, v5

    and-int/lit8 v5, v5, 0xf

    .line 143
    sget v6, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_REGISTER_COUNT_SHIFT:I

    shr-int/2addr v2, v6

    and-int/lit8 v2, v2, 0xf

    .line 145
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v6

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x2

    const-string v11, "tries_size = %d"

    invoke-virtual {v0, v7, v11, v9}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v9, v11, v10

    const-string v9, "outs_size = %d"

    invoke-virtual {v0, v10, v9, v11}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v9, v11, v10

    const-string v9, "ins_size = %d"

    invoke-virtual {v0, v10, v9, v11}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v9, v11, v10

    const-string v9, "registers_size = %d"

    invoke-virtual {v0, v10, v9, v11}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v9

    .line 154
    sget v11, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_INSTRUCTIONS_SIZE_SHIFT:I

    shr-int v11, v9, v11

    .line 156
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v12, v13, v10

    const-string v12, "insns_size = %d"

    invoke-virtual {v0, v7, v12, v13}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v12

    .line 164
    sget v13, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_PREHEADER_FLAGS_MASK:I

    and-int/2addr v13, v9

    if-eqz v13, :cond_1

    .line 165
    sget v13, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_PREHEADER_FLAGS_MASK:I

    and-int/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Integer;->bitCount(I)I

    move-result v13

    .line 167
    sget v14, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_PREHEADER_FLAG_INSTRUCTIONS_SIZE:I

    and-int/2addr v14, v9

    if-eqz v14, :cond_0

    add-int/lit8 v13, v13, 0x1

    :cond_0
    mul-int/lit8 v13, v13, 0x2

    sub-int v13, v6, v13

    .line 172
    invoke-virtual {v0, v13}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 173
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    .line 174
    const-string v13, "[preheader for next code_item]"

    new-array v14, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v13, v14}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 176
    invoke-virtual {v0, v12}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 179
    :cond_1
    sget v13, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_PREHEADER_FLAG_INSTRUCTIONS_SIZE:I

    and-int/2addr v13, v9

    const/4 v14, 0x3

    if-eqz v13, :cond_2

    .line 180
    const-string v13, "insns_size_preheader_flag=1"

    new-array v15, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v13, v15}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v13, v6, -0x2

    .line 182
    invoke-virtual {v1, v13}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->setOffset(I)V

    .line 183
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v13

    add-int/lit8 v6, v6, -0x4

    .line 185
    invoke-virtual {v1, v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->setOffset(I)V

    .line 186
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v15

    add-int/2addr v13, v15

    .line 188
    invoke-virtual {v0, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    add-int v15, v11, v13

    .line 191
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 p3, 0x1

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v11, v8, v10

    aput-object v13, v8, p3

    aput-object v16, v8, v7

    .line 190
    const-string v11, "insns_size = %d + %d = %d"

    invoke-virtual {v0, v7, v11, v8}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v0, v12}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    move v11, v15

    goto :goto_0

    :cond_2
    const/16 p3, 0x1

    .line 195
    :goto_0
    sget v8, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_PREHEADER_FLAG_REGISTER_COUNT:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    .line 196
    const-string v8, "registers_size_preheader_flag=1"

    new-array v13, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v8, v13}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, -0x2

    .line 198
    invoke-virtual {v0, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 199
    invoke-virtual {v1, v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->setOffset(I)V

    .line 200
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v8

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    add-int/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v13, v8, v10

    aput-object v15, v8, p3

    aput-object v2, v8, v7

    .line 201
    const-string v2, "registers_size = %d + %d = %d"

    invoke-virtual {v0, v7, v2, v8}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-virtual {v0, v12}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 205
    :cond_3
    sget v2, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_PREHEADER_FLAG_INS_COUNT:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_4

    .line 206
    const-string v2, "ins_size_preheader_flag=1"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v2, v8}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, -0x2

    .line 208
    invoke-virtual {v0, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 209
    invoke-virtual {v1, v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->setOffset(I)V

    .line 210
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v2

    .line 212
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v8, v5, v10

    aput-object v13, v5, p3

    aput-object v2, v5, v7

    .line 211
    const-string v2, "ins_size = %d + %d = %d"

    invoke-virtual {v0, v7, v2, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v0, v12}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 215
    :cond_4
    sget v2, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_PREHEADER_FLAG_OUTS_COUNT:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_5

    .line 216
    const-string v2, "outs_size_preheader_flag=1"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v2, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, -0x2

    .line 218
    invoke-virtual {v0, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 219
    invoke-virtual {v1, v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->setOffset(I)V

    .line 220
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v2

    .line 222
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v5, v4, v10

    aput-object v8, v4, p3

    aput-object v2, v4, v7

    .line 221
    const-string v2, "outs_size = %d + %d = %d"

    invoke-virtual {v0, v7, v2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v0, v12}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 225
    :cond_5
    sget v2, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->CDEX_PREHEADER_FLAG_TRIES_COUNT:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_6

    .line 226
    const-string v2, "tries_size_preheader_flag=1"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, -0x2

    .line 228
    invoke-virtual {v0, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 229
    invoke-virtual {v1, v6}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->setOffset(I)V

    .line 230
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v2

    add-int v4, v3, v2

    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v14, [Ljava/lang/Object;

    aput-object v3, v6, v10

    aput-object v2, v6, p3

    aput-object v5, v6, v7

    .line 232
    const-string v2, "tries_size = %d + %d = %d"

    invoke-virtual {v0, v7, v2, v6}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-virtual {v0, v12}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    move v3, v4

    .line 237
    :cond_6
    invoke-virtual {v1, v12}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->setOffset(I)V

    .line 239
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator$PreInstructionInfo;

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v11}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator$PreInstructionInfo;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;II)V

    return-object v0
.end method

.method public annotateSection(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$1;->itemIdentities:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$1;->sortedItems:Ljava/util/List;

    .line 123
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$1;->sectionOffset:I

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 127
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$1;->itemIdentities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$1;->annotateSectionInner(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;I)V

    return-void
.end method

.method protected getItemOffset(II)I
    .locals 0

    .line 132
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$1;->sortedItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
