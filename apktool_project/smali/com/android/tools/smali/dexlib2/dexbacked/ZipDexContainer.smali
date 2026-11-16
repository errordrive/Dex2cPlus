.class public Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;
.super Ljava/lang/Object;
.source "ZipDexContainer.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$NotAZipFileException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
        ">;"
    }
.end annotation


# instance fields
.field private entries:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            ">;"
        }
    .end annotation
.end field

.field private final opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zipFilePath:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/tools/smali/dexlib2/Opcodes;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->zipFilePath:Ljava/io/File;

    .line 73
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    return-void
.end method

.method private getEntries()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->entries:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->entries:Ljava/util/TreeMap;

    .line 90
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v1

    .line 91
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 93
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 96
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->isDex(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 102
    :try_start_1
    invoke-static {v3}, Lcom/android/tools/smali/util/InputStreamUtil;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v6

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 103
    :goto_1
    array-length v4, v6

    if-ge v9, v4, :cond_4

    .line 104
    new-instance v4, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;[BIZI)V

    .line 105
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->entries:Ljava/util/TreeMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v11, v10, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    const-string v8, ""

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v4}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getFileSize()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v9, v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_1

    .line 108
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_5

    .line 101
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v2

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->entries:Ljava/util/TreeMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_7

    .line 112
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    :cond_7
    return-object v0

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_8

    .line 90
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v2
.end method


# virtual methods
.method public getDexEntryNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/DexFile;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 127
    :cond_0
    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/DexFile;)V

    return-object v1
.end method

.method protected getZipFile()Ljava/util/zip/ZipFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->zipFilePath:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 176
    :catch_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$NotAZipFileException;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$NotAZipFileException;-><init>()V

    throw v0
.end method

.method protected isDex(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Z
    .locals 2
    .param p1    # Ljava/util/zip/ZipFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/zip/ZipEntry;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 160
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/tools/smali/dexlib2/util/DexUtil$InvalidFile; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/util/DexUtil;->verifyDexHeader(Ljava/io/InputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/tools/smali/dexlib2/util/DexUtil$InvalidFile; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 160
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/tools/smali/dexlib2/util/DexUtil$InvalidFile; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return v0
.end method

.method public isZipFile()Z
    .locals 3

    const/4 v0, 0x0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$NotAZipFileException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v2

    :catch_0
    return v0
.end method
