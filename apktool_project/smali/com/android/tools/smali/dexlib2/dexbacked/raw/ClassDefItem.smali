.class public Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem;
.super Ljava/lang/Object;
.source "ClassDefItem.java"


# static fields
.field public static final ACCESS_FLAGS_OFFSET:I = 0x4

.field public static final ANNOTATIONS_OFFSET:I = 0x14

.field public static final CLASS_DATA_OFFSET:I = 0x18

.field public static final CLASS_OFFSET:I = 0x0

.field public static final INTERFACES_OFFSET:I = 0xc

.field public static final ITEM_SIZE:I = 0x20

.field public static final SOURCE_FILE_OFFSET:I = 0x10

.field public static final STATIC_VALUES_OFFSET:I = 0x1c

.field public static final SUPERCLASS_OFFSET:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getClassSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;->getOffset(I)I

    move-result p1

    .line 125
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    .line 126
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getClasses(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)[Ljava/lang/String;
    .locals 4
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x6

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMapItemForSection(I)Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    .line 135
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getItemCount()I

    move-result v0

    .line 136
    new-array v2, v0, [Ljava/lang/String;

    :goto_0
    if-ge v1, v0, :cond_1

    .line 138
    invoke-static {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem;->asString(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
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

    .line 59
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/ClassDefItem$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    return-object v0
.end method
