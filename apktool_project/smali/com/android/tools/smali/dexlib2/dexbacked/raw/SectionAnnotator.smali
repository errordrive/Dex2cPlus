.class public abstract Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.super Ljava/lang/Object;
.source "SectionAnnotator.java"


# instance fields
.field public final annotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final itemCount:I

.field protected itemIdentities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final itemType:I

.field public final sectionOffset:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->itemIdentities:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->annotator:Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;

    .line 55
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 56
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->itemType:I

    .line 58
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v0

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_0

    .line 59
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getOffset()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBaseDataOffset()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->sectionOffset:I

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getOffset()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->sectionOffset:I

    .line 64
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getItemCount()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->itemCount:I

    return-void
.end method

.method private getItemIdentity(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->itemIdentities:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected abstract annotateItem(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public annotateSection(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->sectionOffset:I

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 77
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->itemCount:I

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->annotateSectionInner(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;I)V

    return-void
.end method

.method protected annotateSectionInner(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;I)V
    .locals 8
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 85
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->getItemName()Ljava/lang/String;

    move-result-object v0

    if-lez p2, :cond_1

    const/4 v1, 0x0

    .line 87
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "-----------------------------"

    invoke-virtual {p1, v1, v4, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 89
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const-string v6, "%s section"

    invoke-virtual {p1, v1, v6, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v4, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->getItemOffset(II)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    .line 96
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->getItemIdentity(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v1

    aput-object v0, v7, v2

    aput-object v4, v7, v5

    const-string v5, "[%d] %s: %s"

    invoke-virtual {p1, v1, v5, v7}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 100
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v1

    aput-object v0, v5, v2

    const-string v6, "[%d] %s"

    invoke-virtual {p1, v1, v6, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indent()V

    .line 103
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->annotateItem(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getItemAlignment()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract getItemName()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method protected getItemOffset(II)I
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->getItemAlignment()I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/tools/smali/dexlib2/util/AlignmentUtils;->alignOffset(II)I

    move-result p1

    return p1
.end method

.method public setItemIdentity(ILjava/lang/String;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->itemIdentities:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBaseDataOffset()I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
