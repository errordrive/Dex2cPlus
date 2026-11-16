.class public Lcom/android/tools/smali/util/IndentingWriter;
.super Ljava/io/Writer;
.source "IndentingWriter.java"


# static fields
.field private static final newLine:Ljava/lang/String;


# instance fields
.field private beginningOfLine:Z

.field protected final buffer:[C

.field protected indentLevel:I

.field protected final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/smali/util/IndentingWriter;->newLine:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/16 v0, 0x18

    .line 35
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->buffer:[C

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->indentLevel:I

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->beginningOfLine:Z

    .line 41
    iput-object p1, p0, Lcom/android/tools/smali/util/IndentingWriter;->writer:Ljava/io/Writer;

    return-void
.end method

.method private writeLine(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-boolean v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->beginningOfLine:Z

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/smali/util/IndentingWriter;->writeIndent()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->beginningOfLine:Z

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    return-void
.end method

.method private writeLine([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-boolean v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->beginningOfLine:Z

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/smali/util/IndentingWriter;->writeIndent()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->beginningOfLine:Z

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/util/IndentingWriter;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/util/IndentingWriter;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/util/IndentingWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/util/IndentingWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public deindent(I)V
    .locals 1

    .line 170
    iget v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->indentLevel:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->indentLevel:I

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 172
    iput p1, p0, Lcom/android/tools/smali/util/IndentingWriter;->indentLevel:I

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public indent(I)V
    .locals 1

    .line 163
    iget v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->indentLevel:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->indentLevel:I

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lcom/android/tools/smali/util/IndentingWriter;->indentLevel:I

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 53
    iget-object p1, p0, Lcom/android/tools/smali/util/IndentingWriter;->writer:Ljava/io/Writer;

    sget-object v0, Lcom/android/tools/smali/util/IndentingWriter;->newLine:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/android/tools/smali/util/IndentingWriter;->beginningOfLine:Z

    return-void

    .line 56
    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->beginningOfLine:Z

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/smali/util/IndentingWriter;->writeIndent()V

    :cond_1
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->beginningOfLine:Z

    .line 60
    iget-object v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/smali/util/IndentingWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    move v0, p2

    :goto_0
    if-ge p2, p3, :cond_2

    const/16 p2, 0xa

    .line 121
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-lt p2, p3, :cond_0

    goto :goto_1

    :cond_0
    sub-int v1, p2, v0

    .line 126
    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/util/IndentingWriter;->writeLine(Ljava/lang/String;II)V

    .line 127
    iget-object v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->writer:Ljava/io/Writer;

    sget-object v1, Lcom/android/tools/smali/util/IndentingWriter;->newLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->beginningOfLine:Z

    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p3, v0

    .line 123
    invoke-direct {p0, p1, v0, p3}, Lcom/android/tools/smali/util/IndentingWriter;->writeLine(Ljava/lang/String;II)V

    :cond_2
    return-void
.end method

.method public write([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/smali/util/IndentingWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    move v0, p2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 97
    aget-char v1, p1, p2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    sub-int v1, p2, v0

    .line 98
    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/smali/util/IndentingWriter;->writeLine([CII)V

    .line 100
    iget-object v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->writer:Ljava/io/Writer;

    sget-object v1, Lcom/android/tools/smali/util/IndentingWriter;->newLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/android/tools/smali/util/IndentingWriter;->beginningOfLine:Z

    add-int/lit8 v0, p2, 0x1

    move p2, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v0

    .line 108
    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/smali/util/IndentingWriter;->writeLine([CII)V

    return-void
.end method

.method protected writeIndent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    :goto_0
    iget v1, p0, Lcom/android/tools/smali/util/IndentingWriter;->indentLevel:I

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/tools/smali/util/IndentingWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
