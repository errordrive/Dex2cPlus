.class public Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;
.super Ljava/lang/Object;
.source "CodeItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;,
        Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$TryItem;
    }
.end annotation


# static fields
.field public static CDEX_INSTRUCTIONS_SIZE_AND_PREHEADER_FLAGS_OFFSET:I = 0x2

.field public static CDEX_INSTRUCTIONS_SIZE_SHIFT:I = 0x5

.field public static CDEX_INS_COUNT_SHIFT:I = 0x8

.field public static CDEX_OUTS_COUNT_SHIFT:I = 0x4

.field public static CDEX_PREHEADER_FLAGS_MASK:I = 0x1f

.field public static CDEX_PREHEADER_FLAG_INSTRUCTIONS_SIZE:I = 0x10

.field public static CDEX_PREHEADER_FLAG_INS_COUNT:I = 0x2

.field public static CDEX_PREHEADER_FLAG_OUTS_COUNT:I = 0x4

.field public static CDEX_PREHEADER_FLAG_REGISTER_COUNT:I = 0x1

.field public static CDEX_PREHEADER_FLAG_TRIES_COUNT:I = 0x8

.field public static CDEX_REGISTER_COUNT_SHIFT:I = 0xc

.field public static CDEX_TRIES_SIZE_SHIFT:I = 0x0

.field public static final DEBUG_INFO_OFFSET:I = 0x8

.field public static final INSTRUCTION_COUNT_OFFSET:I = 0xc

.field public static final INSTRUCTION_START_OFFSET:I = 0x10

.field public static final INS_OFFSET:I = 0x2

.field public static final OUTS_OFFSET:I = 0x4

.field public static final REGISTERS_OFFSET:I = 0x0

.field public static final TRIES_SIZE_OFFSET:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
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

    .line 103
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    instance-of v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/CDexBackedDexFile;

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->makeAnnotatorForCDex(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p0

    return-object p0

    .line 106
    :cond_0
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem;->makeAnnotatorForDex(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p0

    return-object p0
.end method

.method private static makeAnnotatorForCDex(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
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

    .line 117
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    return-object v0
.end method

.method private static makeAnnotatorForDex(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)Lcom/android/tools/smali/dexlib2/dexbacked/raw/SectionAnnotator;
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

    .line 112
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CodeItem$CodeItemAnnotator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/raw/util/DexAnnotator;Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;)V

    return-object v0
.end method
