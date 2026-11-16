.class Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;
.source "AnnotationsDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnotationsDirectoryImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;
    }
.end annotation


# static fields
.field private static final ANNOTATIONS_START_OFFSET:I = 0x10

.field private static final FIELD_ANNOTATION_SIZE:I = 0x8

.field private static final FIELD_COUNT_OFFSET:I = 0x4

.field private static final METHOD_ANNOTATION_SIZE:I = 0x8

.field private static final METHOD_COUNT_OFFSET:I = 0x8

.field private static final PARAMETER_COUNT_OFFSET:I = 0xc


# instance fields
.field public final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final directoryOffset:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 153
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 155
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    return-void
.end method


# virtual methods
.method public getClassAnnotations()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getAnnotations(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFieldAnnotationCount()I
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getFieldAnnotationIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getFieldAnnotationCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->EMPTY:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    return-object v0

    .line 181
    :cond_0
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, p0, v2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;II)V

    return-object v1
.end method

.method public getMethodAnnotationCount()I
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getMethodAnnotationIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getMethodAnnotationCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 188
    sget-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->EMPTY:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getFieldAnnotationCount()I

    move-result v1

    .line 191
    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    add-int/lit8 v2, v2, 0x10

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v2, v1

    .line 193
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;II)V

    return-object v1
.end method

.method public getParameterAnnotationCount()I
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getParameterAnnotationIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getParameterAnnotationCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    sget-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->EMPTY:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    return-object v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getFieldAnnotationCount()I

    move-result v1

    .line 203
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getMethodAnnotationCount()I

    move-result v2

    .line 204
    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    add-int/lit8 v3, v3, 0x10

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v3, v1

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v3, v2

    .line 207
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;II)V

    return-object v1
.end method
