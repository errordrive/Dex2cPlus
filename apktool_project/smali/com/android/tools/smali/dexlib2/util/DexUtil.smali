.class public Lcom/android/tools/smali/dexlib2/util/DexUtil;
.super Ljava/lang/Object;
.source "DexUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile;,
        Lcom/android/tools/smali/dexlib2/util/DexUtil$InvalidFile;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyCdexHeader([BI)I
    .locals 6
    .param p0    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 122
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexHeaderItem;->getVersion([BI)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a valid cdex magic value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_0

    add-int v4, p1, v1

    .line 126
    aget-byte v4, p0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, " %02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-instance p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_1
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/CdexHeaderItem;->isSupportedCdexVersion(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem;->getEndian([BI)I

    move-result p0

    const p1, 0x78563412

    if-eq p0, p1, :cond_3

    const p1, 0x12345678

    if-ne p0, p1, :cond_2

    return v0

    .line 141
    :cond_2
    new-instance p1, Lcom/android/tools/smali/dexlib2/util/DexUtil$InvalidFile;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "Invalid endian tag: 0x%x"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/smali/dexlib2/util/DexUtil$InvalidFile;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_3
    new-instance p0, Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile;

    const-string p1, "Big endian dex files are not supported"

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_4
    new-instance p0, Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "Dex version %03d is not supported"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyDexHeader(Ljava/io/InputStream;)I
    .locals 2
    .param p0    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    .line 62
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 63
    new-array v0, v0, [B

    .line 65
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/tools/smali/util/InputStreamUtil;->readFully(Ljava/io/InputStream;[B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const/4 p0, 0x0

    .line 72
    invoke-static {v0, p0}, Lcom/android/tools/smali/dexlib2/util/DexUtil;->verifyDexHeader([BI)I

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 67
    :catch_0
    :try_start_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile;

    const-string v1, "File is too short"

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 70
    throw v0

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "InputStream must support mark"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyDexHeader([BI)I
    .locals 5
    .param p0    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 86
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem;->getVersion([BI)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Not a valid dex magic value:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 90
    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, " %02x"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_1
    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem;->isSupportedDexVersion(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/HeaderItem;->getEndian([BI)I

    move-result p0

    const p1, 0x78563412

    if-eq p0, p1, :cond_3

    const p1, 0x12345678

    if-ne p0, p1, :cond_2

    return v0

    .line 105
    :cond_2
    new-instance p1, Lcom/android/tools/smali/dexlib2/util/DexUtil$InvalidFile;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "Invalid endian tag: 0x%x"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/smali/dexlib2/util/DexUtil$InvalidFile;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_3
    new-instance p0, Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile;

    const-string p1, "Big endian dex files are not supported"

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_4
    new-instance p0, Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "Dex version %03d is not supported"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyOdexHeader(Ljava/io/InputStream;)V
    .locals 2
    .param p0    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 160
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 161
    new-array v0, v0, [B

    .line 163
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/tools/smali/util/InputStreamUtil;->readFully(Ljava/io/InputStream;[B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const/4 p0, 0x0

    .line 170
    invoke-static {v0, p0}, Lcom/android/tools/smali/dexlib2/util/DexUtil;->verifyOdexHeader([BI)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 165
    :catch_0
    :try_start_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile;

    const-string v1, "File is too short"

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 168
    throw v0

    .line 158
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "InputStream must support mark"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyOdexHeader([BI)V
    .locals 5
    .param p0    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 182
    invoke-static {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/OdexHeaderItem;->getVersion([BI)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Not a valid odex magic value:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    .line 186
    aget-byte v3, p0, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, " %02x"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    new-instance p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile;-><init>(Ljava/lang/String;)V

    throw p0

    .line 191
    :cond_1
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/OdexHeaderItem;->isSupportedOdexVersion(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 192
    :cond_2
    new-instance p0, Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Odex version %03d is not supported"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/util/DexUtil$UnsupportedFile;-><init>(Ljava/lang/String;)V

    throw p0
.end method
