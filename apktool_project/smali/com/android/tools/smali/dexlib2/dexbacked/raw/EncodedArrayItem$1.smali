.class Lcom/android/tools/smali/dexlib2/dexbacked/raw/EncodedArrayItem$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.source "EncodedArrayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/raw/EncodedArrayItem;->makeAnnotator(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    return-void
.end method


# virtual methods
.method protected annotateItem(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/EncodedArrayItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object p2

    .line 52
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/EncodedArrayItem$1;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {p3, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/EncodedValue;->annotateEncodedArray(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    return-void
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 46
    const-string v0, "encoded_array_item"

    return-object v0
.end method
