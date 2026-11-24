.class public Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "FastZipModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/engine/FastZipModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;->count:J

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;->count:J

    return-wide v0
.end method

.method public write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 38
    iget-wide v0, p0, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;->count:J

    .line 39
    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 44
    iget-wide p1, p0, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;->count:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/dex2c/plus/engine/FastZipModifier$CountingOutputStream;->count:J

    .line 45
    return-void
.end method
