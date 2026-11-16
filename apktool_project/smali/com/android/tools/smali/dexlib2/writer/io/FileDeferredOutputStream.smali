.class public Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;
.super Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStream;
.source "FileDeferredOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# instance fields
.field private final backingFile:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final output:Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private writtenBytes:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStream;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->backingFile:Ljava/io/File;

    .line 62
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p2}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->output:Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    return-void
.end method

.method public static getFactory(Ljava/io/File;)Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x1000

    .line 128
    invoke-static {p0, v0}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->getFactory(Ljava/io/File;I)Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;

    move-result-object p0

    return-object p0
.end method

.method public static getFactory(Ljava/io/File;I)Lcom/android/tools/smali/dexlib2/writer/io/DeferredOutputStreamFactory;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 134
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$1;-><init>(Ljava/io/File;I)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->output:Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->output:Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->output:Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->write(I)V

    .line 83
    iget p1, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->output:Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->write([B)V

    .line 88
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->output:Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->write([BII)V

    .line 93
    iget p1, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1    # Ljava/io/OutputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->output:Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->getBuffer()[B

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->output:Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->getCount()I

    move-result v1

    .line 68
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->output:Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->resetBuffer()V

    .line 69
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->output:Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->close()V

    .line 72
    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    if-eq v1, v2, :cond_0

    .line 73
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->backingFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 74
    invoke-static {v2, p1}, Lcom/android/tools/smali/util/InputStreamUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 75
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/io/FileDeferredOutputStream;->backingFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
