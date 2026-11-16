.class public Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
.super Ljava/lang/Object;
.source "DexBackedDexFile.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/DexFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;,
        Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;,
        Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile;
    }
.end annotation


# instance fields
.field private callSiteSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;",
            ">;"
        }
    .end annotation
.end field

.field private final classCount:I

.field private classSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;",
            ">;"
        }
    .end annotation
.end field

.field private final classStartOffset:I

.field private final dataBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

.field private final dexBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

.field private final fieldCount:I

.field private fieldSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldStartOffset:I

.field private final fileSize:I

.field private final hiddenApiRestrictionsOffset:I

.field private final mapOffset:I

.field private final methodCount:I

.field private methodHandleSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;",
            ">;"
        }
    .end annotation
.end field

.field private methodSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;",
            ">;"
        }
    .end annotation
.end field

.field private final methodStartOffset:I

.field private final opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final protoCount:I

.field private protoSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;",
            ">;"
        }
    .end annotation
.end field

.field private final protoStartOffset:I

.field private final stringCount:I

.field private stringSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final stringStartOffset:I

.field private final typeCount:I

.field private typeSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeStartOffset:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 181
    iget-object v0, p2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    iget p2, p2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;[BI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;[B)V
    .locals 2
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 189
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;[BIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;[BI)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;[BIZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;[BIZ)V
    .locals 6
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 95
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;[BIZI)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;[BIZI)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$5;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->stringSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    .line 357
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$6;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$6;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->typeSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    .line 393
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$7;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$7;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->fieldSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    .line 419
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$8;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$8;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->methodSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    .line 445
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$9;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$9;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->protoSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    .line 472
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$10;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$10;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->classSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    .line 499
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$11;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$11;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->callSiteSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    .line 530
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$12;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$12;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->methodHandleSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    .line 103
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-direct {v0, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;-><init>([BI)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->dexBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    .line 104
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getBaseDataOffset()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, p2, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;-><init>([BI)V

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->dataBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    .line 106
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getVersion([BIZ)I

    move-result p2

    if-nez p1, :cond_0

    .line 109
    invoke-virtual {p0, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDefaultOpcodes(I)Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    goto :goto_0

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    :goto_0
    add-int/lit8 p1, p5, 0x20

    .line 114
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->fileSize:I

    add-int/lit8 p1, p5, 0x38

    .line 115
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->stringCount:I

    add-int/lit8 p1, p5, 0x3c

    .line 116
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->stringStartOffset:I

    add-int/lit8 p1, p5, 0x40

    .line 117
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->typeCount:I

    add-int/lit8 p1, p5, 0x44

    .line 118
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->typeStartOffset:I

    add-int/lit8 p1, p5, 0x48

    .line 119
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->protoCount:I

    add-int/lit8 p1, p5, 0x4c

    .line 120
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->protoStartOffset:I

    add-int/lit8 p1, p5, 0x50

    .line 121
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->fieldCount:I

    add-int/lit8 p1, p5, 0x54

    .line 122
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->fieldStartOffset:I

    add-int/lit8 p1, p5, 0x58

    .line 123
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->methodCount:I

    add-int/lit8 p1, p5, 0x5c

    .line 124
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->methodStartOffset:I

    add-int/lit8 p1, p5, 0x60

    .line 125
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->classCount:I

    add-int/lit8 p1, p5, 0x64

    .line 126
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->classStartOffset:I

    add-int/lit8 p1, p5, 0x34

    .line 127
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->mapOffset:I

    const p1, 0xf000

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMapItemForSection(I)Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getOffset()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->hiddenApiRestrictionsOffset:I

    goto :goto_1

    .line 133
    :cond_1
    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->hiddenApiRestrictionsOffset:I

    :goto_1
    const/16 p1, 0x29

    if-lt p2, p1, :cond_2

    add-int/lit8 p1, p5, 0x74

    .line 138
    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-ne p1, p5, :cond_3

    return-void

    .line 141
    :cond_3
    new-instance p1, Lcom/android/tools/smali/dexlib2/util/DexUtil$InvalidFile;

    const-string p2, "Unexpected container offset in header"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/smali/dexlib2/util/DexUtil$InvalidFile;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->classCount:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->mapOffset:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->methodCount:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->methodStartOffset:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->protoCount:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->protoStartOffset:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)I
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->readHiddenApiRestrictionsOffset(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->classStartOffset:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->dexBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->dataBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->stringCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->stringStartOffset:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->typeCount:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->typeStartOffset:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->fieldCount:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->fieldStartOffset:I

    return p0
.end method

.method public static fromInputStream(Lcom/android/tools/smali/dexlib2/Opcodes;Ljava/io/InputStream;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 195
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/util/DexUtil;->verifyDexHeader(Ljava/io/InputStream;)I

    .line 197
    invoke-static {p1}, Lcom/android/tools/smali/util/InputStreamUtil;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 198
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;[BIZ)V

    return-object v0
.end method

.method private readHiddenApiRestrictionsOffset(I)I
    .locals 3

    .line 567
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->hiddenApiRestrictionsOffset:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 571
    :cond_0
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->dexBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    invoke-virtual {v2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 579
    :cond_1
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->hiddenApiRestrictionsOffset:I

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected createMethodImplementation(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;I)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 563
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethodImplementation;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedMethod;I)V

    return-object v0
.end method

.method public getBaseDataOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->dexBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    return-object v0
.end method

.method public getCallSiteSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedCallSiteReference;",
            ">;"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->callSiteSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    return-object v0
.end method

.method public getClassSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->classSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    return-object v0
.end method

.method public getClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 211
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V

    return-object v0
.end method

.method public getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->dataBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    return-object v0
.end method

.method protected getDefaultOpcodes(I)Lcom/android/tools/smali/dexlib2/Opcodes;
    .locals 0

    .line 169
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/Opcodes;->forDexVersion(I)Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object p1

    return-object p1
.end method

.method public getFieldSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedFieldReference;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->fieldSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->fileSize:I

    return v0
.end method

.method public getMapItemForSection(I)Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMapItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;

    .line 295
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMapItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->dataBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->mapOffset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v0

    .line 279
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$4;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$4;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v1
.end method

.method public getMethodHandleSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodHandleReference;",
            ">;"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->methodHandleSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    return-object v0
.end method

.method public getMethodSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodReference;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->methodSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    return-object v0
.end method

.method public getOpcodes()Lcom/android/tools/smali/dexlib2/Opcodes;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    return-object v0
.end method

.method public getProtoSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;",
            ">;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->protoSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    return-object v0
.end method

.method public getReferences(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/reference/Reference;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid reference type: %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMethodHandleSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object p1

    return-object p1

    .line 270
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getCallSiteSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object p1

    return-object p1

    .line 266
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMethodSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object p1

    return-object p1

    .line 262
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMethodSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object p1

    return-object p1

    .line 264
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getFieldSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$IndexedSection;

    move-result-object p1

    return-object p1

    .line 260
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getTypeReferences()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 258
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getStringReferences()Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStringReferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedStringReference;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$2;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$2;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V

    return-object v0
.end method

.method public getStringSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->stringSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    return-object v0
.end method

.method public getTypeReferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/reference/DexBackedTypeReference;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$3;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$3;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V

    return-object v0
.end method

.method public getTypeSection()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->typeSection:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$OptionalIndexedSection;

    return-object v0
.end method

.method protected getVersion([BIZ)I
    .locals 0

    if-eqz p3, :cond_0

    .line 162
    invoke-static {p1, p2}, Lcom/android/tools/smali/dexlib2/util/DexUtil;->verifyDexHeader([BI)I

    move-result p1

    return p1

    .line 164
    :cond_0
    invoke-static {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem;->getVersion([BI)I

    move-result p1

    return p1
.end method

.method public supportsOptimizedOpcodes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
