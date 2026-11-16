.class public Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
.super Ljava/lang/Object;
.source "DexReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private offset:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;I)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    .line 44
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return-void
.end method

.method private peekUleb128Size(Z)I
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    .line 170
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    .line 172
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x7f

    if-le v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x2

    .line 174
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-le v2, v4, :cond_2

    add-int/lit8 v2, v0, 0x3

    .line 176
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    if-le v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x4

    .line 178
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-le v2, v4, :cond_2

    add-int/lit8 v2, v0, 0x5

    .line 180
    aget-byte v0, v1, v3

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    and-int/lit8 v0, v0, 0xf

    const/4 v4, 0x7

    if-le v0, v4, :cond_3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Encountered valid uleb128 that is out of range at offset 0x%x"

    invoke-direct {p1, v0, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 184
    :cond_1
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Invalid uleb128 integer encountered at offset 0x%x"

    invoke-direct {p1, v0, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    move v2, v3

    .line 199
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget p1, p1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr p1, v0

    sub-int/2addr v2, p1

    return v2
.end method

.method private readUleb128(Z)I
    .locals 9

    .line 126
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    .line 129
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    .line 131
    aget-byte v3, v1, v0

    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0x7f

    if-le v4, v5, :cond_5

    add-int/lit8 v4, v0, 0x2

    .line 133
    aget-byte v2, v1, v2

    and-int/lit16 v6, v2, 0xff

    and-int/2addr v3, v5

    and-int/2addr v2, v5

    const/4 v7, 0x7

    shl-int/2addr v2, v7

    or-int/2addr v2, v3

    if-le v6, v5, :cond_4

    add-int/lit8 v3, v0, 0x3

    .line 136
    aget-byte v4, v1, v4

    and-int/lit16 v6, v4, 0xff

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v4, v2

    if-le v6, v5, :cond_3

    add-int/lit8 v2, v0, 0x4

    .line 139
    aget-byte v3, v1, v3

    and-int/lit16 v6, v3, 0xff

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v4, v3

    if-le v6, v5, :cond_5

    add-int/lit8 v0, v0, 0x5

    .line 142
    aget-byte v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_2

    and-int/lit8 v5, v1, 0xf

    if-le v5, v7, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Encountered valid uleb128 that is out of range at offset 0x%x"

    invoke-direct {p1, v0, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    shl-int/lit8 p1, v1, 0x1c

    or-int/2addr v4, p1

    move v2, v0

    goto :goto_1

    .line 146
    :cond_2
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Invalid uleb128 integer encountered at offset 0x%x"

    invoke-direct {p1, v0, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    move v8, v4

    move v4, v2

    move v2, v8

    .line 162
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget p1, p1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v4
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v0
.end method

.method public moveRelative(I)V
    .locals 1

    .line 373
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return-void
.end method

.method public peekBigUleb128Size()I
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    .line 257
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    .line 259
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x7f

    if-le v3, v4, :cond_2

    add-int/lit8 v3, v0, 0x2

    .line 261
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-le v2, v4, :cond_1

    add-int/lit8 v2, v0, 0x3

    .line 263
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    if-le v3, v4, :cond_2

    add-int/lit8 v3, v0, 0x4

    .line 265
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-le v2, v4, :cond_1

    add-int/lit8 v2, v0, 0x5

    .line 267
    aget-byte v0, v1, v3

    if-ltz v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Invalid uleb128 integer encountered at offset 0x%x"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    move v2, v3

    .line 279
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    return v2
.end method

.method public peekSleb128Size()I
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    .line 94
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    .line 96
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x7f

    if-le v3, v4, :cond_2

    add-int/lit8 v3, v0, 0x2

    .line 98
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-le v2, v4, :cond_1

    add-int/lit8 v2, v0, 0x3

    .line 100
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    if-le v3, v4, :cond_2

    add-int/lit8 v3, v0, 0x4

    .line 102
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-le v2, v4, :cond_1

    add-int/lit8 v2, v0, 0x5

    .line 104
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    if-gt v0, v4, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Invalid sleb128 integer encountered at offset 0x%x"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    move v2, v3

    .line 114
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    return v2
.end method

.method public peekSmallUleb128Size()I
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->peekUleb128Size(Z)I

    move-result v0

    return v0
.end method

.method public peekStringLength(I)I
    .locals 4

    const/4 v0, 0x1

    .line 617
    new-array v0, v0, [I

    .line 618
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v2, v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v2, v3

    invoke-static {v1, v2, p1, v0}, Lcom/android/tools/smali/util/Utf8Utils;->utf8BytesWithUtf16LengthToString([BII[I)Ljava/lang/String;

    const/4 p1, 0x0

    .line 620
    aget p1, v0, p1

    return p1
.end method

.method public peekUbyte()I
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v0

    return v0
.end method

.method public peekUshort()I
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v0

    return v0
.end method

.method public readBigUleb128()I
    .locals 8

    .line 220
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    .line 223
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    .line 225
    aget-byte v3, v1, v0

    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0x7f

    if-le v4, v5, :cond_3

    add-int/lit8 v4, v0, 0x2

    .line 227
    aget-byte v2, v1, v2

    and-int/lit16 v6, v2, 0xff

    and-int/2addr v3, v5

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v2, v3

    if-le v6, v5, :cond_2

    add-int/lit8 v3, v0, 0x3

    .line 230
    aget-byte v4, v1, v4

    and-int/lit16 v6, v4, 0xff

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v4, v2

    if-le v6, v5, :cond_1

    add-int/lit8 v2, v0, 0x4

    .line 233
    aget-byte v3, v1, v3

    and-int/lit16 v6, v3, 0xff

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v4, v3

    if-le v6, v5, :cond_3

    add-int/lit8 v0, v0, 0x5

    .line 236
    aget-byte v1, v1, v2

    if-ltz v1, :cond_0

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v4, v1

    move v2, v0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Invalid uleb128 integer encountered at offset 0x%x"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v7, v4

    move v4, v2

    move v2, v7

    .line 249
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v4
.end method

.method public readByte()I
    .locals 2

    .line 366
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 367
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readByte(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 368
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v1
.end method

.method public readByte(I)I
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readByte(I)I

    move-result p1

    return p1
.end method

.method public readInt()I
    .locals 2

    .line 352
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 353
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    .line 354
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v1
.end method

.method public readInt(I)I
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result p1

    return p1
.end method

.method public readLargeUleb128()I
    .locals 1

    const/4 v0, 0x1

    .line 210
    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUleb128(Z)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 3

    .line 345
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 346
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readLong(I)J

    move-result-wide v1

    add-int/lit8 v0, v0, 0x8

    .line 347
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return-wide v1
.end method

.method public readLong(I)J
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readOptionalUint()I
    .locals 2

    .line 316
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 317
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readOptionalUint(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    .line 318
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v1
.end method

.method public readShort()I
    .locals 2

    .line 359
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 360
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readShort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    .line 361
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v1
.end method

.method public readShort(I)I
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readShort(I)I

    move-result p1

    return p1
.end method

.method public readSizedInt(I)I
    .locals 5

    .line 384
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    .line 385
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 390
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x18

    goto :goto_0

    .line 408
    :cond_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v2

    const-string p1, "Invalid size %d for sized int at offset 0x%x"

    invoke-direct {v0, p1, v3}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 396
    :cond_1
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 401
    :cond_2
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x8

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    .line 405
    :cond_3
    aget-byte v1, v1, v0

    :goto_1
    add-int/2addr v0, p1

    .line 410
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget p1, p1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v1
.end method

.method public readSizedLong(I)J
    .locals 12

    .line 543
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    .line 544
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    const/16 v2, 0x30

    const/16 v3, 0x28

    const/16 v4, 0x20

    const/16 v5, 0x18

    const-wide/16 v6, 0xff

    packed-switch p1, :pswitch_data_0

    .line 601
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const-string p1, "Invalid size %d for sized long at offset 0x%x"

    invoke-direct {v0, p1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 549
    :pswitch_0
    aget-byte v8, v1, v0

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x2

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    int-to-long v8, v8

    add-int/lit8 v10, v0, 0x3

    aget-byte v10, v1, v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, v1, v5

    int-to-long v10, v5

    and-long/2addr v10, v6

    shl-long v4, v10, v4

    or-long/2addr v4, v8

    add-int/lit8 v8, v0, 0x5

    aget-byte v8, v1, v8

    int-to-long v8, v8

    and-long/2addr v8, v6

    shl-long/2addr v8, v3

    or-long/2addr v4, v8

    add-int/lit8 v3, v0, 0x6

    aget-byte v3, v1, v3

    int-to-long v8, v3

    and-long/2addr v6, v8

    shl-long v2, v6, v2

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x7

    aget-byte v1, v1, v4

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    goto/16 :goto_1

    .line 559
    :pswitch_1
    aget-byte v8, v1, v0

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x2

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    int-to-long v8, v8

    add-int/lit8 v10, v0, 0x3

    aget-byte v10, v1, v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, v1, v5

    int-to-long v10, v5

    and-long/2addr v10, v6

    shl-long v4, v10, v4

    or-long/2addr v4, v8

    add-int/lit8 v8, v0, 0x5

    aget-byte v8, v1, v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    add-int/lit8 v3, v0, 0x6

    aget-byte v1, v1, v3

    int-to-long v6, v1

    shl-long v1, v6, v2

    goto :goto_0

    .line 568
    :pswitch_2
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v8, v0, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v2, v8

    add-int/lit8 v8, v0, 0x2

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v2, v8

    int-to-long v8, v2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v10, v2

    and-long/2addr v10, v6

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v10, v2

    and-long/2addr v6, v10

    shl-long v4, v6, v4

    or-long/2addr v4, v8

    add-int/lit8 v2, v0, 0x5

    aget-byte v1, v1, v2

    int-to-long v1, v1

    shl-long/2addr v1, v3

    :goto_0
    or-long/2addr v1, v4

    move-wide v2, v1

    goto :goto_4

    .line 576
    :pswitch_3
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    int-to-long v2, v2

    add-int/lit8 v8, v0, 0x3

    aget-byte v8, v1, v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    shl-long v5, v6, v5

    or-long/2addr v2, v5

    add-int/lit8 v5, v0, 0x4

    aget-byte v1, v1, v5

    int-to-long v5, v1

    shl-long v4, v5, v4

    goto :goto_1

    .line 583
    :pswitch_4
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    int-to-long v2, v2

    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v1, v4

    int-to-long v6, v1

    shl-long v4, v6, v5

    :goto_1
    or-long/2addr v2, v4

    goto :goto_4

    .line 589
    :pswitch_5
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x10

    goto :goto_2

    .line 594
    :pswitch_6
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x8

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    .line 598
    :pswitch_7
    aget-byte v1, v1, v0

    :goto_3
    int-to-long v2, v1

    :goto_4
    add-int/2addr v0, p1

    .line 604
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget p1, p1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readSizedRightExtendedInt(I)I
    .locals 5

    .line 445
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    .line 446
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 451
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v1, v1, v3

    goto :goto_0

    .line 469
    :cond_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v2

    const-string p1, "Invalid size %d for sized, right extended int at offset 0x%x"

    invoke-direct {v0, p1, v3}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 457
    :cond_1
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v1, v1, v3

    goto :goto_0

    .line 462
    :cond_2
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget-byte v1, v1, v3

    :goto_0
    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v2

    goto :goto_1

    .line 466
    :cond_3
    aget-byte v1, v1, v0

    shl-int/lit8 v1, v1, 0x18

    :goto_1
    add-int/2addr v0, p1

    .line 472
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget p1, p1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v1
.end method

.method public readSizedRightExtendedLong(I)J
    .locals 13

    .line 477
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    .line 478
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    const/16 v2, 0x18

    const/16 v3, 0x20

    const/16 v4, 0x28

    const/16 v5, 0x30

    const/16 v6, 0x38

    const-wide/16 v7, 0xff

    packed-switch p1, :pswitch_data_0

    .line 535
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    .line 536
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const-string p1, "Invalid size %d for sized, right extended long at offset 0x%x"

    invoke-direct {v0, p1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 483
    :pswitch_0
    aget-byte v9, v1, v0

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v0, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v0, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    int-to-long v9, v9

    add-int/lit8 v11, v0, 0x3

    aget-byte v11, v1, v11

    int-to-long v11, v11

    and-long/2addr v11, v7

    shl-long/2addr v11, v2

    or-long/2addr v9, v11

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v11, v2

    and-long/2addr v11, v7

    shl-long v2, v11, v3

    or-long/2addr v2, v9

    add-int/lit8 v9, v0, 0x5

    aget-byte v9, v1, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v4

    or-long/2addr v2, v9

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v7, v9

    shl-long v4, v7, v5

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x7

    aget-byte v1, v1, v4

    goto/16 :goto_0

    .line 493
    :pswitch_1
    aget-byte v9, v1, v0

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v10, v0, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    int-to-long v9, v9

    add-int/lit8 v11, v0, 0x2

    aget-byte v11, v1, v11

    int-to-long v11, v11

    and-long/2addr v11, v7

    shl-long/2addr v11, v2

    or-long/2addr v9, v11

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v11, v2

    and-long/2addr v11, v7

    shl-long v2, v11, v3

    or-long/2addr v2, v9

    add-int/lit8 v9, v0, 0x4

    aget-byte v9, v1, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v4

    or-long/2addr v2, v9

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v7, v9

    shl-long v4, v7, v5

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v1, v1, v4

    goto/16 :goto_0

    .line 502
    :pswitch_2
    aget-byte v9, v1, v0

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    int-to-long v9, v9

    add-int/lit8 v11, v0, 0x1

    aget-byte v11, v1, v11

    int-to-long v11, v11

    and-long/2addr v11, v7

    shl-long/2addr v11, v2

    or-long/2addr v9, v11

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    int-to-long v11, v2

    and-long/2addr v11, v7

    shl-long v2, v11, v3

    or-long/2addr v2, v9

    add-int/lit8 v9, v0, 0x3

    aget-byte v9, v1, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v4

    or-long/2addr v2, v9

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v7, v9

    shl-long v4, v7, v5

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v1, v1, v4

    goto :goto_0

    .line 510
    :pswitch_3
    aget-byte v9, v1, v0

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v2

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    int-to-long v11, v2

    and-long/2addr v11, v7

    shl-long v2, v11, v3

    or-long/2addr v2, v9

    add-int/lit8 v9, v0, 0x2

    aget-byte v9, v1, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v4

    or-long/2addr v2, v9

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v7, v9

    shl-long v4, v7, v5

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v1, v1, v4

    goto :goto_0

    .line 517
    :pswitch_4
    aget-byte v2, v1, v0

    int-to-long v9, v2

    and-long/2addr v9, v7

    shl-long v2, v9, v3

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, v1, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v4

    or-long/2addr v2, v9

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v7, v9

    shl-long v4, v7, v5

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v1, v4

    goto :goto_0

    .line 523
    :pswitch_5
    aget-byte v2, v1, v0

    int-to-long v2, v2

    and-long/2addr v2, v7

    shl-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v7, v9

    shl-long v4, v7, v5

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v1, v1, v4

    goto :goto_0

    .line 528
    :pswitch_6
    aget-byte v2, v1, v0

    int-to-long v2, v2

    and-long/2addr v2, v7

    shl-long/2addr v2, v5

    add-int/lit8 v4, v0, 0x1

    aget-byte v1, v1, v4

    :goto_0
    int-to-long v4, v1

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    goto :goto_1

    .line 532
    :pswitch_7
    aget-byte v1, v1, v0

    int-to-long v1, v1

    shl-long v2, v1, v6

    :goto_1
    add-int/2addr v0, p1

    .line 538
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget p1, p1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return-wide v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readSizedSmallUint(I)I
    .locals 6

    .line 415
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    .line 416
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_2

    const/4 v5, 0x4

    if-ne p1, v5, :cond_1

    add-int/lit8 v4, v0, 0x3

    .line 421
    aget-byte v4, v1, v4

    if-ltz v4, :cond_0

    shl-int/lit8 v2, v4, 0x18

    goto :goto_0

    .line 423
    :cond_0
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Encountered valid sized uint that is out of range at offset 0x%x"

    invoke-direct {p1, v0, v1}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 438
    :cond_1
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object v1, v4, v3

    const-string p1, "Invalid size %d for sized uint at offset 0x%x"

    invoke-direct {v0, p1, v4}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    add-int/lit8 v3, v0, 0x2

    .line 429
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    :cond_3
    add-int/lit8 v3, v0, 0x1

    .line 432
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 435
    :cond_4
    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    add-int/2addr v0, p1

    .line 440
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget p1, p1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v1
.end method

.method public readSleb128()I
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    .line 54
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    .line 56
    aget-byte v3, v1, v0

    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_0

    shl-int/lit8 v0, v4, 0x19

    shr-int/lit8 v0, v0, 0x19

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v0, 0x2

    .line 60
    aget-byte v2, v1, v2

    and-int/lit16 v6, v2, 0xff

    and-int/2addr v3, v5

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v2, v3

    if-gt v6, v5, :cond_1

    shl-int/lit8 v0, v2, 0x12

    shr-int/lit8 v0, v0, 0x12

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v0, 0x3

    .line 65
    aget-byte v4, v1, v4

    and-int/lit16 v6, v4, 0xff

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v2, v4

    if-gt v6, v5, :cond_2

    shl-int/lit8 v0, v2, 0xb

    shr-int/lit8 v0, v0, 0xb

    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v0, 0x4

    .line 70
    aget-byte v3, v1, v3

    and-int/lit16 v6, v3, 0xff

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v2, v3

    if-gt v6, v5, :cond_3

    shl-int/lit8 v0, v2, 0x4

    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x5

    .line 75
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    if-gt v1, v5, :cond_4

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v1, v2

    move v2, v0

    move v0, v1

    .line 86
    :goto_1
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v0

    .line 77
    :cond_4
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Invalid sleb128 integer encountered at offset 0x%x"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public readSmallUint()I
    .locals 2

    .line 309
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 310
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    .line 311
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v1
.end method

.method public readSmallUint(I)I
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readSmallUint(I)I

    move-result p1

    return p1
.end method

.method public readSmallUleb128()I
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readUleb128(Z)I

    move-result v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 609
    new-array v0, v0, [I

    .line 610
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v2, v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v2, v3

    invoke-static {v1, v2, p1, v0}, Lcom/android/tools/smali/util/Utf8Utils;->utf8BytesWithUtf16LengthToString([BII[I)Ljava/lang/String;

    move-result-object p1

    .line 612
    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    const/4 v2, 0x0

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return-object p1
.end method

.method public readUbyte()I
    .locals 2

    .line 338
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 339
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 340
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v1
.end method

.method public readUbyte(I)I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUbyte(I)I

    move-result p1

    return p1
.end method

.method public readUshort()I
    .locals 2

    .line 327
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 328
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    .line 329
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return v1
.end method

.method public readUshort(I)I
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readUshort(I)I

    move-result p1

    return p1
.end method

.method public setOffset(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return-void
.end method

.method public skipByte()V
    .locals 1

    .line 372
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return-void
.end method

.method public skipUleb128()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    add-int/2addr v0, v1

    .line 285
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    .line 287
    aget-byte v3, v1, v0

    if-gez v3, :cond_2

    add-int/lit8 v3, v0, 0x2

    .line 289
    aget-byte v2, v1, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v0, 0x3

    .line 291
    aget-byte v3, v1, v3

    if-gez v3, :cond_2

    add-int/lit8 v3, v0, 0x4

    .line 293
    aget-byte v2, v1, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v0, 0x5

    .line 295
    aget-byte v0, v1, v3

    if-ltz v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Invalid uleb128 integer encountered at offset 0x%x"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    move v2, v3

    .line 305
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->dexBuf:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->baseOffset:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->offset:I

    return-void
.end method
