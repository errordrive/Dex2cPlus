.class public Lcom/android/tools/smali/dexlib2/dexbacked/raw/HiddenApiClassDataItem;
.super Ljava/lang/Object;
.source "HiddenApiClassDataItem.java"


# static fields
.field public static final OFFSETS_LIST_OFFSET:I = 0x4

.field public static final OFFSET_ITEM_SIZE:I = 0x4

.field public static final SIZE_OFFSET:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
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

    .line 54
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HiddenApiClassDataItem$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HiddenApiClassDataItem$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    return-object v0
.end method
