.class public Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexHeaderItem;
.super Ljava/lang/Object;
.source "CdexHeaderItem.java"


# static fields
.field public static final DEBUG_INFO_BASE:I = 0x7c

.field public static final DEBUG_INFO_OFFSETS_POS_OFFSET:I = 0x74

.field public static final DEBUG_INFO_OFFSETS_TABLE_OFFSET:I = 0x78

.field public static final FEATURE_FLAGS_OFFSET:I = 0x70

.field private static final MAGIC_VALUE:[B

.field private static final SUPPORTED_CDEX_VERSIONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 40
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexHeaderItem;->MAGIC_VALUE:[B

    const/4 v0, 0x1

    .line 41
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexHeaderItem;->SUPPORTED_CDEX_VERSIONS:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x63t
        0x64t
        0x65t
        0x78t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static annotateCdexHeaderFields(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;)V
    .locals 5
    .param p0    # Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 111
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string v4, "feature_flags: 0x%x"

    invoke-virtual {p0, v0, v4, v2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "debug_info_offsets_pos: 0x%x"

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "debug_info_offsets_table_offset: 0x%x"

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "debug_info_base: 0x%x"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getVersion([BI)I
    .locals 1

    .line 86
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexHeaderItem;->verifyMagic([BI)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 90
    :cond_0
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexHeaderItem;->getVersionUnchecked([BI)I

    move-result p0

    return p0
.end method

.method private static getVersionUnchecked([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x4

    .line 94
    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v1, p1, 0x5

    .line 95
    aget-byte v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x6

    .line 96
    aget-byte p0, p0, p1

    add-int/lit8 p0, p0, -0x30

    add-int/2addr v0, p0

    return v0
.end method

.method public static isSupportedCdexVersion(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    :goto_0
    sget-object v2, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexHeaderItem;->SUPPORTED_CDEX_VERSIONS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 103
    aget v2, v2, v1

    if-ne v2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static verifyMagic([BI)Z
    .locals 4

    .line 56
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    add-int v1, p1, v0

    .line 61
    aget-byte v1, p0, v1

    sget-object v3, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexHeaderItem;->MAGIC_VALUE:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x7

    if-ge v1, v0, :cond_5

    add-int v0, p1, v1

    .line 66
    aget-byte v0, p0, v0

    const/16 v3, 0x30

    if-lt v0, v3, :cond_4

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v2

    :cond_5
    add-int/2addr p1, v0

    .line 71
    aget-byte p0, p0, p1

    sget-object p1, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexHeaderItem;->MAGIC_VALUE:[B

    aget-byte p1, p1, v0

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    const/4 p0, 0x1

    return p0
.end method
