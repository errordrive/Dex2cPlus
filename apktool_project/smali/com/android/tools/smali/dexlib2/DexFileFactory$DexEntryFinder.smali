.class public Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;
.super Ljava/lang/Object;
.source "DexFileFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/DexFileFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DexEntryFinder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dexContainer:Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            ">;"
        }
    .end annotation
.end field

.field private final filename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 375
    const-class v0, Lcom/android/tools/smali/dexlib2/DexFileFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            ">;)V"
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    .line 382
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->dexContainer:Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;

    return-void
.end method


# virtual methods
.method public findEntry(Ljava/lang/String;Z)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 388
    const-string v0, "Entry %s in %s is not a dex file"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 390
    :try_start_0
    iget-object p2, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->dexContainer:Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;

    invoke-interface {p2, p1}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;->getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 392
    :cond_0
    new-instance p2, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;

    const-string v4, "Could not find entry %s in %s."

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object v5, v6, v2

    invoke-direct {p2, v4, v6}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :catch_0
    new-instance p2, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException;

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object v4, v1, v2

    invoke-direct {p2, v0, v1}, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 401
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 403
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 404
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 405
    iget-object v7, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->dexContainer:Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;

    invoke-interface {v7}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;->getDexEntryNames()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 406
    invoke-static {v8, p1}, Lcom/android/tools/smali/dexlib2/DexFileFactory;->access$000(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 408
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v9, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->dexContainer:Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;

    invoke-interface {v9, v8}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;->getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;

    move-result-object v8

    .line 411
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    :cond_3
    invoke-static {v8, p1}, Lcom/android/tools/smali/dexlib2/DexFileFactory;->access$100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 413
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v9, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->dexContainer:Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;

    invoke-interface {v9, v8}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;->getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;

    move-result-object v8

    .line 416
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v2, :cond_5

    .line 423
    :try_start_1
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;
    :try_end_1
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 427
    :catch_1
    new-instance p1, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException;

    .line 428
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    iget-object v4, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object v4, v1, v2

    invoke-direct {p1, v0, v1}, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 431
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x3

    const-string v7, ", "

    if-gt v0, v2, :cond_8

    .line 440
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_7

    .line 444
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, v2, :cond_6

    .line 450
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;

    return-object p1

    .line 445
    :cond_6
    new-instance p2, Lcom/android/tools/smali/dexlib2/DexFileFactory$MultipleMatchingDexEntriesException;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    .line 447
    invoke-static {v5, v7}, Lcom/android/tools/smali/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object p1, v4, v2

    aput-object v5, v4, v1

    .line 445
    const-string p1, "Multiple dex entries in %s match %s: %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-direct {p2, p1, v0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$MultipleMatchingDexEntriesException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 441
    :cond_7
    new-instance p2, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object p1, v1, v2

    const-string p1, "Could not find a dex entry in %s matching %s"

    invoke-direct {p2, p1, v1}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 434
    :cond_8
    new-instance v0, Lcom/android/tools/smali/dexlib2/DexFileFactory$MultipleMatchingDexEntriesException;

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    .line 436
    invoke-static {p2, v7}, Lcom/android/tools/smali/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    .line 434
    const-string p1, "Multiple entries in %s match %s: %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/smali/dexlib2/DexFileFactory$MultipleMatchingDexEntriesException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
