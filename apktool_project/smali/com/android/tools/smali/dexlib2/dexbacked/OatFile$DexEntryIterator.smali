.class Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;
.super Ljava/lang/Object;
.source "OatFile.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;",
        ">;"
    }
.end annotation


# instance fields
.field index:I

.field offset:I

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;


# direct methods
.method private constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)V
    .locals 1

    .line 613
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 614
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->index:I

    .line 615
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->access$1000(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getDexListStart()I

    move-result p1

    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;)V
    .locals 0

    .line 613
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    const/4 v0, 0x0

    .line 687
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->next()Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;

    move-result-object v1

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$1(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 618
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->index:I

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->access$1000(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->getDexFileCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;
    .locals 6

    .line 623
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 624
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    .line 625
    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    .line 628
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    const-string v4, "US-ASCII"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 629
    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    .line 631
    iput v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    .line 633
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-virtual {v0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    .line 634
    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    .line 637
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-virtual {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v2

    const/16 v3, 0x57

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-static {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->access$1100(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-static {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->access$1100(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;->getVdex()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 638
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-static {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->access$1100(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;->getVdex()[B

    move-result-object v2

    goto :goto_1

    .line 640
    :cond_0
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->buf:[B

    .line 641
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-static {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->access$1000(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;->access$1200(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatHeader;)I

    move-result v3

    add-int/2addr v0, v3

    .line 644
    :goto_1
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v3

    const/16 v4, 0x4b

    if-lt v3, v4, :cond_1

    .line 645
    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    .line 647
    :cond_1
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v3

    const/16 v5, 0x49

    if-lt v3, v5, :cond_2

    .line 648
    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    .line 650
    :cond_2
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v3

    const/16 v5, 0x83

    if-lt v3, v5, :cond_3

    .line 651
    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    .line 653
    :cond_3
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v3

    const/16 v5, 0x7f

    if-lt v3, v5, :cond_4

    .line 654
    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    .line 656
    :cond_4
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v3

    const/16 v5, 0x87

    if-lt v3, v5, :cond_5

    .line 657
    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    .line 659
    :cond_5
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v3

    if-ge v3, v4, :cond_6

    .line 661
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    add-int/lit8 v4, v0, 0x60

    invoke-virtual {v3, v4}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v3

    .line 662
    iget v4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->offset:I

    .line 665
    :cond_6
    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->index:I

    .line 667
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-virtual {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v3

    const/16 v4, 0x8a

    if-lt v3, v4, :cond_7

    if-nez v0, :cond_7

    goto/16 :goto_0

    .line 672
    :cond_7
    new-instance v3, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;Ljava/lang/String;[BI)V

    return-object v3

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 613
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->next()Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 678
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
