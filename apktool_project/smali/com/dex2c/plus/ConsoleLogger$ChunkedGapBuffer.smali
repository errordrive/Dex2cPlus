.class public final Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;
.super Ljava/lang/Object;
.source "ConsoleLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/ConsoleLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChunkedGapBuffer"
.end annotation


# static fields
.field private static final MAX_LINES:I = 0x800


# instance fields
.field private final keyRing:[Ljava/lang/String;

.field private lineCount:I

.field private lineHead:I

.field private final lineRing:[Ljava/lang/String;

.field private final partialLine:Ljava/lang/StringBuilder;

.field private revisionSeq:J

.field private totalPushedLines:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 23
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineRing:[Ljava/lang/String;

    .line 24
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->keyRing:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineHead:I

    .line 26
    iput v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineCount:I

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->totalPushedLines:J

    .line 28
    iput-wide v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->revisionSeq:J

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->partialLine:Ljava/lang/StringBuilder;

    return-void
.end method

.method private pushLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 63
    iget v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineHead:I

    iget v1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineCount:I

    add-int v2, v0, v1

    const/16 v3, 0x800

    rem-int/2addr v2, v3

    .line 64
    iget-object v4, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineRing:[Ljava/lang/String;

    aput-object p2, v4, v2

    .line 65
    iget-object p2, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->keyRing:[Ljava/lang/String;

    aput-object p1, p2, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 67
    iput v1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineCount:I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 69
    rem-int/2addr v0, v3

    iput v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineHead:I

    .line 71
    :goto_0
    iget-wide p1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->totalPushedLines:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->totalPushedLines:J

    return-void
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 32
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 35
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 37
    iget-object v3, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->partialLine:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->pushLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v3, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->partialLine:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_1
    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    .line 40
    iget-object v4, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->partialLine:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_3
    iget-wide v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->revisionSeq:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->revisionSeq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 32
    :cond_4
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x800

    if-ge v1, v2, :cond_0

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineRing:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 129
    iget-object v2, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->keyRing:[Ljava/lang/String;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    iput v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineHead:I

    .line 132
    iput v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineCount:I

    const-wide/16 v1, 0x0

    .line 133
    iput-wide v1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->totalPushedLines:J

    .line 134
    iget-wide v1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->revisionSeq:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->revisionSeq:J

    .line 135
    iget-object v1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->partialLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized copyLinesWindow(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 91
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 92
    invoke-virtual {p0}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->getLineCount()I

    move-result v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    add-int/2addr p2, p1

    .line 94
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_3

    .line 96
    iget v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineCount:I

    if-ge p1, v0, :cond_2

    .line 97
    iget v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineHead:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x800

    .line 98
    iget-object v1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineRing:[Ljava/lang/String;

    aget-object v0, v1, v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->partialLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 103
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized exportAllText()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 106
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 107
    :goto_0
    iget v3, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineCount:I

    if-ge v2, v3, :cond_2

    .line 108
    iget v3, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineHead:I

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0x800

    .line 109
    iget-object v4, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineRing:[Ljava/lang/String;

    aget-object v3, v4, v3

    if-eqz v3, :cond_1

    const/16 v4, 0x9

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 113
    invoke-virtual {v0, v3, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0xa

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->partialLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->partialLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 123
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getLineCount()I
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    iget v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineCount:I

    iget-object v1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->partialLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getPartialLength()I
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->partialLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getRevisionSeq()J
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    iget-wide v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->revisionSeq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getTotalPushedLines()J
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    iget-wide v0, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->totalPushedLines:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized upsertKeyedLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-nez p2, :cond_0

    .line 47
    :try_start_0
    const-string p2, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-wide/16 v0, 0x1

    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 49
    iget v2, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineCount:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 50
    iget v3, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineHead:I

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0x800

    .line 51
    iget-object v4, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->keyRing:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    iget-object p1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->lineRing:[Ljava/lang/String;

    aput-object p2, p1, v3

    .line 53
    iget-wide p1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->revisionSeq:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->revisionSeq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 58
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->pushLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-wide p1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->revisionSeq:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->revisionSeq:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
