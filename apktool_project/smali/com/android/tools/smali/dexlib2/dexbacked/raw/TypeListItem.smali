.class public Lcom/android/tools/smali/dexlib2/dexbacked/raw/TypeListItem;
.super Ljava/lang/Object;
.source "TypeListItem.java"


# static fields
.field public static final LIST_OFFSET:I = 0x4

.field public static final SIZE_OFFSET:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;
    .locals 6
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    .line 86
    const-string p0, ""

    return-object p0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v3

    add-int/lit8 v4, p1, 0x4

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v3

    .line 94
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReferenceAnnotation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;
    .locals 5
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    .line 71
    const-string p0, "type_list_item[NO_OFFSET]"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 75
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/TypeListItem;->asString(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p0

    .line 76
    const-string v2, "type_list_item[0x%x]: %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    aput-object p0, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 78
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "type_list_item[0x%x]"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 46
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/TypeListItem$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/TypeListItem$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    return-object v0
.end method
