.class Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;
.super Ljava/lang/Object;
.source "OatFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OatHeader"
.end annotation


# instance fields
.field private final headerOffset:I

.field private final keyValueStoreOffset:I

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;I)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result p1

    const/16 p2, 0xaa

    if-lt p1, p2, :cond_0

    const/16 p1, 0x38

    .line 258
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->keyValueStoreOffset:I

    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result p1

    const/16 p2, 0xa6

    if-lt p1, p2, :cond_1

    const/16 p1, 0x40

    .line 260
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->keyValueStoreOffset:I

    return-void

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result p1

    const/16 p2, 0xa2

    if-lt p1, p2, :cond_2

    const/16 p1, 0x44

    .line 262
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->keyValueStoreOffset:I

    return-void

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result p1

    const/16 p2, 0x7f

    if-lt p1, p2, :cond_3

    const/16 p1, 0x4c

    .line 264
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->keyValueStoreOffset:I

    return-void

    :cond_3
    const/16 p1, 0x48

    .line 266
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->keyValueStoreOffset:I

    return-void
.end method

.method static synthetic access$1200(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;)I
    .locals 0

    .line 251
    iget p0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    return p0
.end method


# virtual methods
.method public getDexFileCount()I
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getDexListStart()I
    .locals 3

    .line 344
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result v0

    const/16 v1, 0x7f

    if-lt v0, v1, :cond_0

    .line 345
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    add-int/lit8 v2, v0, 0x18

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 347
    :cond_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getHeaderSize()I

    move-result v1

    goto :goto_0
.end method

.method public getHeaderSize()I
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result v0

    const/16 v1, 0x38

    if-lt v0, v1, :cond_0

    .line 306
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->keyValueStoreOffset:I

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getKeyValueStoreSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported oat version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getKeyValueStoreSize()I

    move-result v0

    .line 313
    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->keyValueStoreOffset:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_0
    if-ge v1, v0, :cond_5

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_0

    .line 318
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v3, v3, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 321
    :cond_0
    const-string v3, "Oat file contains truncated key value store"

    if-ge v2, v0, :cond_4

    .line 326
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v5, v5, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    sub-int v6, v2, v1

    invoke-direct {v4, v5, v1, v6}, Ljava/lang/String;-><init>([BII)V

    .line 327
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    move p1, v2

    :goto_2
    if-ge p1, v0, :cond_1

    .line 329
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    aget-byte v1, v1, p1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_1
    if-ge p1, v0, :cond_2

    .line 336
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    sub-int/2addr p1, v2

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    .line 333
    :cond_2
    new-instance p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    invoke-direct {p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 322
    :cond_4
    new-instance p1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    invoke-direct {p1, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeyValueStoreSize()I
    .locals 3

    .line 295
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result v0

    const/16 v1, 0x38

    if-lt v0, v1, :cond_0

    .line 298
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->keyValueStoreOffset:I

    add-int/lit8 v0, v0, -0x4

    .line 299
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    return v0

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported oat version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()I
    .locals 4

    .line 287
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/lit8 v2, v2, 0x4

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 271
    :goto_0
    invoke-static {}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->access$200()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    invoke-static {}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->access$200()[B

    move-result-object v3

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_1
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    .line 278
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v0

    .line 283
    :cond_4
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/2addr v3, v2

    aget-byte v1, v1, v3

    if-nez v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method
