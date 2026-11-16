.class public Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
.super Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;
.source "OatFile.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$NotAnOatFileException;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader64Bit;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader32Bit;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatCDexFile;,
        Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexFile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
        "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
        ">;"
    }
.end annotation


# static fields
.field private static final ELF_MAGIC:[B

.field private static final MAX_OAT_VERSION:I = 0xb2

.field private static final MIN_ELF_HEADER_SIZE:I = 0x34

.field private static final MIN_OAT_VERSION:I = 0x38

.field private static final OAT_MAGIC:[B

.field public static final SUPPORTED:I = 0x1

.field public static final UNKNOWN:I = 0x2

.field public static final UNSUPPORTED:I


# instance fields
.field private final is64bit:Z

.field private final oatHeader:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final vdexProvider:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 59
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->ELF_MAGIC:[B

    .line 60
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->OAT_MAGIC:[B

    return-void

    :array_0
    .array-data 1
        0x7ft
        0x45t
        0x4ct
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x6ft
        0x61t
        0x74t
        0xat
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;-><init>([BLcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;)V

    return-void
.end method

.method public constructor <init>([BLcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;)V
    .locals 4
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;-><init>([B)V

    .line 84
    array-length v0, p1

    const/16 v1, 0x34

    if-lt v0, v1, :cond_6

    .line 88
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->verifyMagic([B)V

    const/4 v0, 0x4

    .line 90
    aget-byte v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 91
    iput-boolean v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->is64bit:Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 93
    iput-boolean v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->is64bit:Z

    .line 99
    :goto_0
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getSymbolTable()Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;->getSymbols()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;

    .line 101
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oatdata"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    new-instance p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;->getFileOffset()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 110
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->oatHeader:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;

    .line 112
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result p1

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/Opcodes;->forArtVersion(I)Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    .line 117
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->vdexProvider:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;

    return-void

    .line 113
    :cond_3
    new-instance p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string p2, "Invalid oat magic value"

    invoke-direct {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_4
    new-instance p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string p2, "Oat file has no oatdata symbol"

    invoke-direct {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_5
    new-instance p2, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const/4 v0, 0x5

    aget-byte p1, p1, v0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Invalid word-size value: %x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 85
    :cond_6
    new-instance p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$NotAnOatFileException;

    invoke-direct {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$NotAnOatFileException;-><init>()V

    throw p1
.end method

.method static synthetic access$100(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Lcom/android/tools/smali/dexlib2/Opcodes;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->oatHeader:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->vdexProvider:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;

    return-object p0
.end method

.method static synthetic access$200()[B
    .locals 1

    .line 58
    sget-object v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->OAT_MAGIC:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->is64bit:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getSectionNameStringTable()Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Ljava/util/List;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getSections()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static fromInputStream(Ljava/io/InputStream;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
    .locals 1
    .param p0    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->fromInputStream(Ljava/io/InputStream;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    move-result-object p0

    return-object p0
.end method

.method public static fromInputStream(Ljava/io/InputStream;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
    .locals 1
    .param p0    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 137
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 138
    new-array v0, v0, [B

    .line 140
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/tools/smali/util/InputStreamUtil;->readFully(Ljava/io/InputStream;[B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 147
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->verifyMagic([B)V

    .line 149
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 151
    invoke-static {p0}, Lcom/android/tools/smali/util/InputStreamUtil;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 152
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;-><init>([BLcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 142
    :catch_0
    :try_start_1
    new-instance p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$NotAnOatFileException;

    invoke-direct {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$NotAnOatFileException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 145
    throw p1

    .line 135
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "InputStream must support mark"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSectionNameStringTable()Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x32

    .line 401
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readUshort(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    :try_start_0
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getSections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$StringTable;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 409
    :catch_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string v1, "The section index for the section name string table is invalid"

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string v1, "There is no section name string table"

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSections()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 357
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->is64bit:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readLongAsSmallUint(I)I

    move-result v0

    const/16 v1, 0x3a

    .line 359
    invoke-virtual {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readUshort(I)I

    move-result v1

    const/16 v2, 0x3c

    .line 360
    invoke-virtual {p0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readUshort(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    const/16 v1, 0x2e

    .line 363
    invoke-virtual {p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readUshort(I)I

    move-result v1

    const/16 v2, 0x30

    .line 364
    invoke-virtual {p0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readUshort(I)I

    move-result v2

    :goto_0
    mul-int v3, v1, v2

    add-int/2addr v3, v0

    .line 367
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    array-length v4, v4

    if-gt v3, v4, :cond_1

    .line 371
    new-instance v3, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$3;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$3;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;III)V

    return-object v3

    .line 368
    :cond_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string v1, "The ELF section headers extend past the end of the file"

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSymbolTable()Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 391
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;

    .line 392
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 393
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SymbolTable;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$SectionHeader;)V

    return-object v0

    .line 396
    :cond_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string v1, "Oat file has no symbol table"

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static verifyMagic([B)V
    .locals 3

    const/4 v0, 0x0

    .line 121
    :goto_0
    sget-object v1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->ELF_MAGIC:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 122
    aget-byte v2, p0, v0

    aget-byte v1, v1, v0

    if-ne v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    new-instance p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$NotAnOatFileException;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$NotAnOatFileException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public getBootClassPath()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v0

    const/16 v1, 0x4b

    if-ge v0, v1, :cond_0

    .line 173
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->oatHeader:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;

    const-string v1, "bootclasspath"

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 177
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 179
    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDexEntryNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 202
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$2;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$2;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)V

    return-object v0
.end method

.method public getDexFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 184
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 221
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;)V

    .line 222
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->next()Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->getEntryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    return-object v1
.end method

.method public bridge synthetic getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;

    move-result-object p1

    return-object p1
.end method

.method public getOatVersion()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->oatHeader:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result v0

    return v0
.end method

.method public isSupportedVersion()I
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v0

    const/16 v1, 0x38

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0xb2

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method
