.class Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$3;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList;
.source "AnnotationsDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getParameterAnnotations(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList<",
        "Ljava/util/Set<",
        "+",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$annotationSetListOffset:I

.field final synthetic val$dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;II)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$3;->val$dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$3;->val$annotationSetListOffset:I

    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$3;->val$size:I

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic readItem(I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$3;->readItem(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public readItem(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$3;->val$dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$3;->val$annotationSetListOffset:I

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    .line 129
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$3;->val$dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getAnnotations(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$3;->val$size:I

    return v0
.end method
