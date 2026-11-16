.class Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;
.super Ljava/lang/Object;
.source "AnnotationsDirectory.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnnotationIteratorImpl"
.end annotation


# instance fields
.field private currentIndex:I

.field private currentItemIndex:I

.field private final size:I

.field private final startOffset:I

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;II)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->startOffset:I

    .line 218
    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->size:I

    .line 219
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->currentItemIndex:I

    const/4 p1, 0x0

    .line 220
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->currentIndex:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->startOffset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->currentItemIndex:I

    const/4 v0, 0x0

    .line 237
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->currentIndex:I

    return-void
.end method

.method public seekTo(I)I
    .locals 4

    .line 224
    :goto_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->currentItemIndex:I

    if-ge v0, p1, :cond_0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->size:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 225
    iput v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->currentIndex:I

    .line 226
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->startOffset:I

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->currentIndex:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->currentItemIndex:I

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object p1

    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->startOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;->currentIndex:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
