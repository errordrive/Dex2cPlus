.class Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$2;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet;
.source "AnnotationsDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->getAnnotations(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$annotationSetOffset:I

.field final synthetic val$dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;II)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$annotationSetOffset:I

    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$size:I

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet;-><init>()V

    return-void
.end method


# virtual methods
.method public readItem(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotation;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$annotationSetOffset:I

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    .line 107
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotation;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotation;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v0
.end method

.method public bridge synthetic readItem(I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$2;->readItem(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$size:I

    return v0
.end method
