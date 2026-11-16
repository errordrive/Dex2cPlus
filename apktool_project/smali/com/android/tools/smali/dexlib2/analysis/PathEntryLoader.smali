.class public Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;
.super Ljava/lang/Object;
.source "PathEntryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader$NoDexException;
    }
.end annotation


# instance fields
.field final classProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/analysis/ClassProvider;",
            ">;"
        }
    .end annotation
.end field

.field final loadedFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->loadedFiles:Ljava/util/Set;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->classProviders:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    return-void
.end method

.method private getFilenameForOatDependency(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x2f

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 128
    const-string v0, ".art"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".oat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private loadOatDependencies(Ljava/io/File;Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader$NoDexException;,
            Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$NotFoundException;
        }
    .end annotation

    .line 112
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->getFilenameForOatDependency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {p0, v1, v3}, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->loadEntry(Ljava/io/File;Z)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance p2, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$NotFoundException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "Cannot find dependency %s in %s"

    invoke-direct {p2, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$NotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    return-void
.end method


# virtual methods
.method public getClassProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/analysis/ClassProvider;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->classProviders:Ljava/util/List;

    return-object v0
.end method

.method public getOpcodes()Lcom/android/tools/smali/dexlib2/Opcodes;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    return-object v0
.end method

.method public getResolvedClassProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/analysis/ClassProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->classProviders:Ljava/util/List;

    return-object v0
.end method

.method public loadEntry(Ljava/io/File;Z)V
    .locals 7
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader$NoDexException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->loadedFiles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    invoke-static {p1, v0}, Lcom/android/tools/smali/dexlib2/DexFileFactory;->loadDexContainer(Ljava/io/File;Lcom/android/tools/smali/dexlib2/Opcodes;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 83
    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;->getDexEntryNames()Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->loadedFiles:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->classProviders:Ljava/util/List;

    new-instance v6, Lcom/android/tools/smali/dexlib2/analysis/DexClassProvider;

    invoke-interface {v0, v2}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;->getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;->getDexFile()Lcom/android/tools/smali/dexlib2/iface/DexFile;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/android/tools/smali/dexlib2/analysis/DexClassProvider;-><init>(Lcom/android/tools/smali/dexlib2/iface/DexFile;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 95
    instance-of p2, v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    if-eqz p2, :cond_2

    .line 96
    check-cast v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getBootClassPath()Ljava/util/List;

    move-result-object p2

    .line 97
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader;->loadOatDependencies(Ljava/io/File;Ljava/util/List;)V
    :try_end_1
    .catch Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader$NoDexException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 103
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Error while loading dependencies for oat file %s"

    invoke-direct {v0, p2, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p2

    .line 101
    new-instance v0, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Error while loading oat file %s"

    invoke-direct {v0, p2, p1, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_1
    return-void

    .line 86
    :cond_3
    new-instance p2, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader$NoDexException;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "%s contains no dex file"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/smali/dexlib2/analysis/PathEntryLoader$NoDexException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p1

    .line 80
    new-instance p2, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;

    invoke-direct {p2, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
