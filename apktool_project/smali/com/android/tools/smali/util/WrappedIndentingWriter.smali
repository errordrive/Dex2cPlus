.class public Lcom/android/tools/smali/util/WrappedIndentingWriter;
.super Ljava/io/FilterWriter;
.source "WrappedIndentingWriter.java"


# instance fields
.field private currentIndent:I

.field private final line:Ljava/lang/StringBuilder;

.field private final maxIndent:I

.field private final maxWidth:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->currentIndent:I

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->line:Ljava/lang/StringBuilder;

    .line 48
    iput p2, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->maxIndent:I

    .line 49
    iput p3, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->maxWidth:I

    return-void
.end method

.method private getIndent()I
    .locals 2

    .line 59
    iget v0, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->currentIndent:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    iget v1, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->maxIndent:I

    if-le v0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private wrapLine()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->line:Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->maxWidth:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/util/StringWrapper;->wrapStringOnBreaks(Ljava/lang/String;I)Ljava/lang/Iterable;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->out:Ljava/io/Writer;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 80
    iget-object v1, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->out:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    .line 82
    iget-object v1, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v5, ""

    invoke-virtual {v1, v2, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {p0}, Lcom/android/tools/smali/util/WrappedIndentingWriter;->writeIndent()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 84
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    if-le v2, v1, :cond_0

    .line 86
    invoke-virtual {p0, v3}, Lcom/android/tools/smali/util/WrappedIndentingWriter;->write(I)V

    .line 88
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/tools/smali/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeIndent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-direct {p0}, Lcom/android/tools/smali/util/WrappedIndentingWriter;->getIndent()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x20

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/tools/smali/util/WrappedIndentingWriter;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public deindent(I)V
    .locals 1

    .line 73
    iget v0, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->currentIndent:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->currentIndent:I

    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public indent(I)V
    .locals 1

    .line 69
    iget v0, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->currentIndent:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->currentIndent:I

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 96
    iget-object p1, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->line:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {p0}, Lcom/android/tools/smali/util/WrappedIndentingWriter;->writeIndent()V

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->line:Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    iget-object p1, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->line:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iget v0, p0, Lcom/android/tools/smali/util/WrappedIndentingWriter;->maxWidth:I

    if-le p1, v0, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/android/tools/smali/util/WrappedIndentingWriter;->wrapLine()V

    :cond_1
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, v0, p2

    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/tools/smali/util/WrappedIndentingWriter;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, v0, p2

    .line 108
    aget-char v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/android/tools/smali/util/WrappedIndentingWriter;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
