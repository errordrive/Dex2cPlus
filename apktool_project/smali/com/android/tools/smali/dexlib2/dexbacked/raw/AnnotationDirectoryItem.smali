.class public Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem;
.super Ljava/lang/Object;
.source "AnnotationDirectoryItem.java"


# static fields
.field public static final ANNOTATED_METHOD_SIZE_OFFSET:I = 0x8

.field public static final ANNOTATED_PARAMETERS_SIZE:I = 0xc

.field public static final CLASS_ANNOTATIONS_OFFSET:I = 0x0

.field public static final FIELD_SIZE_OFFSET:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 47
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    return-object v0
.end method
