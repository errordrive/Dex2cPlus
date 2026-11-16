.class public abstract Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;
.super Ljava/lang/Object;
.source "AnnotationsDirectory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;,
        Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->EMPTY:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnnotations(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/Set;
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "I)",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    .line 102
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$2;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-object v1

    .line 114
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public static getParameterAnnotations(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/List;
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedAnnotation;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-lez p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    .line 123
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$3;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-object v1

    .line 135
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static newOrEmpty(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;
    .locals 1
    .param p0    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    .line 61
    sget-object p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;->EMPTY:Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory;

    return-object p0

    .line 63
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v0
.end method


# virtual methods
.method public abstract getClassAnnotations()Ljava/util/Set;
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
.end method

.method public abstract getFieldAnnotationCount()I
.end method

.method public abstract getFieldAnnotationIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getMethodAnnotationIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getParameterAnnotationIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
