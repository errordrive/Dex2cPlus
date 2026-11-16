.class public Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;
.super Ljava/lang/Object;
.source "MemoryDataStore.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;


# instance fields
.field private buf:[B

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->size:I

    .line 48
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->buf:[B

    return-void
.end method

.method static synthetic access$000(Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->growBufferIfNeeded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;)[B
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->buf:[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->size:I

    return p0
.end method

.method private growBufferIfNeeded(I)V
    .locals 2

    .line 87
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->size:I

    if-le p1, v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->buf:[B

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 89
    array-length v0, v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->getNewBufferSize(II)I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->buf:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->buf:[B

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 93
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->size:I

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->buf:[B

    return-object v0
.end method

.method public getData()[B
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->buf:[B

    iget v1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected getNewBufferSize(II)I
    .locals 1

    shr-int/lit8 v0, p2, 0x2

    add-int/2addr p2, v0

    const/high16 v0, 0x40000

    add-int/2addr p1, v0

    .line 99
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;->size:I

    return v0
.end method

.method public outputAt(I)Ljava/io/OutputStream;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-ltz p1, :cond_0

    .line 65
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;I)V

    return-object v0

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public readAt(I)Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-ltz p1, :cond_0

    .line 104
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore$2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore$2;-><init>(Lcom/android/tools/smali/dexlib2/writer/io/MemoryDataStore;I)V

    return-object v0

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
