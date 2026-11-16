.class public Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;
.super Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStream;
.source "MemoryDeferredOutputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private currentBuffer:[B

.field private currentPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x4000

    .line 50
    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStream;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->buffers:Ljava/util/List;

    .line 54
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    return-void
.end method

.method public static getFactory()Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x4000

    .line 106
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->getFactory(I)Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getFactory(I)Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 111
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream$1;-><init>(I)V

    return-object v0
.end method

.method private remaining()I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->buffers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    iget v1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 78
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    sub-int v3, p3, v2

    if-lez v3, :cond_1

    .line 85
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v3, p2, v2

    .line 86
    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    iget v5, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    invoke-static {p1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    .line 88
    iget v3, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    .line 90
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->buffers:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    .line 94
    iput v1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    .line 95
    array-length v0, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 59
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 61
    :cond_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 62
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->buffers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 65
    iput v1, p0, Lcom/android/tools/smali/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    return-void
.end method
