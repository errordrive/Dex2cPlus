.class public final Lcom/android/tools/smali/util/TwoColumnOutput;
.super Ljava/lang/Object;
.source "TwoColumnOutput.java"


# instance fields
.field private leftLines:[Ljava/lang/String;

.field private final leftWidth:I

.field private final out:Ljava/io/Writer;

.field private rightLines:[Ljava/lang/String;

.field private final rightWidth:I

.field private final spacer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IILjava/lang/String;)V
    .locals 1

    .line 90
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/tools/smali/util/TwoColumnOutput;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;IILjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/Writer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->leftLines:[Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->rightLines:[Ljava/lang/String;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    if-lt p3, v0, :cond_0

    .line 74
    iput-object p1, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->out:Ljava/io/Writer;

    .line 75
    iput p2, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->leftWidth:I

    .line 76
    iput p3, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->rightWidth:I

    .line 77
    iput-object p4, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->spacer:Ljava/lang/String;

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rightWidth < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "leftWidth < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static writeSpaces(Ljava/io/Writer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_0

    const/16 v0, 0x20

    .line 150
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget v0, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->leftWidth:I

    iget-object v1, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->leftLines:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/tools/smali/util/StringWrapper;->wrapString(Ljava/lang/String;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->leftLines:[Ljava/lang/String;

    .line 97
    iget p1, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->rightWidth:I

    iget-object v0, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->rightLines:[Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/android/tools/smali/util/StringWrapper;->wrapString(Ljava/lang/String;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->rightLines:[Ljava/lang/String;

    .line 98
    iget-object p2, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->leftLines:[Ljava/lang/String;

    array-length p2, p2

    .line 99
    array-length p1, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p2, :cond_1

    if-ge v1, p1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-ge v1, p2, :cond_2

    .line 106
    iget-object v3, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->leftLines:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-nez v3, :cond_3

    move p2, v1

    goto :goto_2

    :cond_2
    move-object v3, v2

    :cond_3
    :goto_2
    if-ge v1, p1, :cond_4

    .line 113
    iget-object v2, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->rightLines:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    move p1, v1

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_9

    :cond_5
    if-eqz v3, :cond_6

    .line 122
    iget-object v4, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->out:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    .line 126
    :goto_3
    iget v4, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->leftWidth:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_7

    .line 128
    iget-object v3, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->out:Ljava/io/Writer;

    invoke-static {v3, v4}, Lcom/android/tools/smali/util/TwoColumnOutput;->writeSpaces(Ljava/io/Writer;I)V

    .line 131
    :cond_7
    iget-object v3, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->out:Ljava/io/Writer;

    iget-object v4, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->spacer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v2, :cond_8

    .line 134
    iget-object v3, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->out:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 137
    :cond_8
    iget-object v2, p0, Lcom/android/tools/smali/util/TwoColumnOutput;->out:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
