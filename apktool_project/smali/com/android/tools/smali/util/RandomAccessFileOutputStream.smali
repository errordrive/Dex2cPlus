.class public Lcom/android/tools/smali/util/RandomAccessFileOutputStream;
.super Ljava/io/OutputStream;
.source "RandomAccessFileOutputStream.java"


# instance fields
.field private filePosition:I

.field private final raf:Ljava/io/RandomAccessFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;I)V
    .locals 0
    .param p1    # Ljava/io/RandomAccessFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 43
    iput p2, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->filePosition:I

    .line 44
    iput-object p1, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->raf:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->filePosition:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 49
    iget v0, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->filePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->filePosition:I

    .line 50
    iget-object v0, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->filePosition:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 55
    iget v0, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->filePosition:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->filePosition:I

    .line 56
    iget-object v0, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->filePosition:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 61
    iget v0, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->filePosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->filePosition:I

    .line 62
    iget-object v0, p0, Lcom/android/tools/smali/util/RandomAccessFileOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
