.class Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;
.super Ljava/lang/Object;
.source "DexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/DexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestrictionsWriter"
.end annotation


# instance fields
.field private final dataStore:Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;

.field private final offsetsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

.field private pendingBlankEntries:I

.field private final restrictionsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

.field private final startOffset:I

.field private writeRestrictionsForClass:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 609
    iput-boolean v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->writeRestrictionsForClass:Z

    .line 610
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->pendingBlankEntries:I

    .line 614
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->startOffset:I

    .line 615
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->dataStore:Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;

    .line 616
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->restrictionsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    mul-int/lit8 p3, p3, 0x4

    .line 621
    invoke-virtual {p2, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 623
    invoke-virtual {p2}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->access$000(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;I)Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->offsetsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    .line 627
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->restrictionsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {p2, v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->write(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 629
    :cond_0
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->restrictionsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->flush()V

    return-void
.end method

.method private addBlankEntry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->writeRestrictionsForClass:Z

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->restrictionsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    sget-object v1, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->WHITELIST:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    return-void

    .line 647
    :cond_0
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->pendingBlankEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->pendingBlankEntries:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->offsetsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V

    .line 671
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->dataStore:Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->startOffset:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexWriter;->access$000(Lcom/android/tools/smali/dexlib2/writer/io/DexDataStore;I)Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    move-result-object v0

    .line 672
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->restrictionsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->startOffset:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 671
    :try_start_1
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public finishClass()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->writeRestrictionsForClass:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->offsetsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    .line 639
    :cond_0
    iput-boolean v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->writeRestrictionsForClass:Z

    .line 640
    iput v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->pendingBlankEntries:I

    return-void
.end method

.method public writeRestriction(Ljava/util/Set;)V
    .locals 4
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->addBlankEntry()V

    return-void

    .line 657
    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->writeRestrictionsForClass:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 658
    iput-boolean v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->writeRestrictionsForClass:Z

    .line 659
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->offsetsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->restrictionsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->startOffset:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 661
    :goto_0
    iget v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->pendingBlankEntries:I

    if-ge v1, v2, :cond_1

    .line 662
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->restrictionsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    sget-object v3, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->WHITELIST:Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    :cond_1
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->pendingBlankEntries:I

    .line 666
    :cond_2
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DexWriter$RestrictionsWriter;->restrictionsWriter:Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;->combineFlags(Ljava/lang/Iterable;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    return-void
.end method
