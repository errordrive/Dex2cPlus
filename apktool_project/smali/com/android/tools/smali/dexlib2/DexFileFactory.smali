.class public final Lcom/android/tools/smali/dexlib2/DexFileFactory;
.super Ljava/lang/Object;
.source "DexFileFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;,
        Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;,
        Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;,
        Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException;,
        Lcom/android/tools/smali/dexlib2/DexFileFactory$MultipleMatchingDexEntriesException;,
        Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedOatVersionException;,
        Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/DexFileFactory;->fullEntryMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/DexFileFactory;->partialEntryMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static fullEntryMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 331
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    .line 336
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 339
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    .line 340
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 343
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static loadDexContainer(Ljava/io/File;Lcom/android/tools/smali/dexlib2/Opcodes;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;
    .locals 6
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/tools/smali/dexlib2/Opcodes;",
            ")",
            "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer<",
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

    .line 238
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 242
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;-><init>(Ljava/io/File;Lcom/android/tools/smali/dexlib2/Opcodes;)V

    .line 243
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->isZipFile()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    .line 247
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 249
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->fromInputStream(Lcom/android/tools/smali/dexlib2/Opcodes;Ljava/io/InputStream;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object v3

    .line 250
    new-instance v4, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;-><init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v4

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 256
    :catch_0
    :try_start_1
    invoke-static {p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;->fromInputStream(Lcom/android/tools/smali/dexlib2/Opcodes;Ljava/io/InputStream;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;

    move-result-object p1

    .line 257
    new-instance v3, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;-><init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V
    :try_end_1
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    .line 267
    :catch_1
    :try_start_2
    new-instance p1, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;

    invoke-direct {p1, p0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->fromInputStream(Ljava/io/InputStream;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    move-result-object p1
    :try_end_2
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$NotAnOatFileException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 274
    :try_start_3
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->isSupportedVersion()I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_1

    .line 279
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p1

    .line 275
    :cond_1
    :try_start_4
    new-instance p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedOatVersionException;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedOatVersionException;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 247
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    .line 279
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 281
    new-instance p1, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "%s is not an apk, dex, odex or oat file."

    invoke-direct {p1, p0, v0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 239
    :cond_3
    new-instance p1, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "%s does not exist"

    invoke-direct {p1, p0, v0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static loadDexEntry(Ljava/io/File;Ljava/lang/String;ZLcom/android/tools/smali/dexlib2/Opcodes;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;
    .locals 4
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/tools/smali/dexlib2/Opcodes;",
            ")",
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

    .line 187
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 192
    :try_start_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;

    invoke-direct {v0, p0, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;-><init>(Ljava/io/File;Lcom/android/tools/smali/dexlib2/Opcodes;)V

    .line 193
    new-instance p3, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v3, v0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;-><init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;)V

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->findEntry(Ljava/lang/String;Z)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$NotAZipFileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 198
    :catch_0
    new-instance p3, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 201
    :try_start_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;-><init>(Ljava/io/File;)V

    invoke-static {p3, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->fromInputStream(Ljava/io/InputStream;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    move-result-object v0
    :try_end_1
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$NotAnOatFileException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 207
    :try_start_2
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->isSupportedVersion()I

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getDexFiles()Ljava/util/List;

    move-result-object v3

    .line 213
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    new-instance v1, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;-><init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;)V

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->findEntry(Ljava/lang/String;Z)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    return-object p0

    .line 214
    :cond_0
    :try_start_3
    new-instance p1, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;

    const-string p2, "Oat file %s contains no dex files"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-direct {p1, p2, v0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 208
    :cond_1
    new-instance p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedOatVersionException;

    invoke-direct {p0, v0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedOatVersionException;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    :goto_1
    :try_start_4
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    .line 219
    :cond_2
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 221
    new-instance p1, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, v1

    const-string p0, "%s is not an apk or oat file."

    invoke-direct {p1, p0, p2}, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 188
    :cond_3
    new-instance p1, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, v1

    const-string p0, "Container file %s does not exist"

    invoke-direct {p1, p0, p2}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static loadDexFile(Ljava/io/File;Lcom/android/tools/smali/dexlib2/Opcodes;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .locals 5
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 90
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 95
    :try_start_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;-><init>(Ljava/io/File;Lcom/android/tools/smali/dexlib2/Opcodes;)V

    .line 96
    new-instance v3, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;-><init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;)V

    const-string v0, "classes.dex"

    invoke-virtual {v3, v0, v2}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexEntryFinder;->findEntry(Ljava/lang/String;Z)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;->getDexFile()Lcom/android/tools/smali/dexlib2/iface/DexFile;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$NotAZipFileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 101
    :catch_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 103
    :try_start_1
    invoke-static {p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->fromInputStream(Lcom/android/tools/smali/dexlib2/Opcodes;Ljava/io/InputStream;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p0
    :try_end_1
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 109
    :catch_1
    :try_start_2
    invoke-static {p1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;->fromInputStream(Lcom/android/tools/smali/dexlib2/Opcodes;Ljava/io/InputStream;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;

    move-result-object p0
    :try_end_2
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    .line 119
    :catch_2
    :try_start_3
    new-instance p1, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;

    invoke-direct {p1, p0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->fromInputStream(Ljava/io/InputStream;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;)Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    move-result-object p1
    :try_end_3
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$NotAnOatFileException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 125
    :try_start_4
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->isSupportedVersion()I

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getDexFiles()Ljava/util/List;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    .line 132
    :cond_0
    :try_start_5
    new-instance p1, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;

    const-string v3, "Oat file %s contains no dex files"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-direct {p1, v3, v2}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 126
    :cond_1
    new-instance p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedOatVersionException;

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedOatVersionException;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    .line 137
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 139
    new-instance p1, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "%s is not an apk, dex, odex or oat file."

    invoke-direct {p1, p0, v0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$UnsupportedFileTypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 91
    :cond_3
    new-instance p1, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "%s does not exist"

    invoke-direct {p1, p0, v0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static loadDexFile(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/Opcodes;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/tools/smali/dexlib2/DexFileFactory;->loadDexFile(Ljava/io/File;Lcom/android/tools/smali/dexlib2/Opcodes;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p0

    return-object p0
.end method

.method private static partialEntryMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 357
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 361
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 367
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 368
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_3

    const/16 v3, 0x2f

    if-eq p1, v3, :cond_3

    const/16 v4, 0x21

    if-eq p1, v4, :cond_3

    if-eq p0, v0, :cond_3

    if-eq p0, v3, :cond_3

    if-ne p0, v4, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public static writeDexFile(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/DexFile;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->writeTo(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/DexFile;)V

    return-void
.end method
