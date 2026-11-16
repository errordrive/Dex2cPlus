.class public Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;
.super Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
.source "DexBackedOdexFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile;
    }
.end annotation


# static fields
.field private static final DEPENDENCY_COUNT_OFFSET:I = 0xc

.field private static final DEPENDENCY_START_OFFSET:I = 0x10


# instance fields
.field private final odexBuf:[B


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;[B[B)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;[B)V

    .line 54
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;->odexBuf:[B

    return-void
.end method

.method public static fromInputStream(Lcom/android/tools/smali/dexlib2/Opcodes;Ljava/io/InputStream;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;
    .locals 4
    .param p0    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 85
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/util/DexUtil;->verifyOdexHeader(Ljava/io/InputStream;)V

    .line 87
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/16 v0, 0x28

    .line 88
    new-array v1, v0, [B

    .line 89
    invoke-static {p1, v1}, Lcom/android/tools/smali/util/InputStreamUtil;->readFully(Ljava/io/InputStream;[B)V

    .line 90
    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/OdexHeaderItem;->getDexOffset([B)I

    move-result v2

    if-le v2, v0, :cond_0

    sub-int/2addr v2, v0

    int-to-long v2, v2

    .line 92
    invoke-static {p1, v2, v3}, Lcom/android/tools/smali/util/InputStreamUtil;->skipFully(Ljava/io/InputStream;J)V

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/android/tools/smali/util/InputStreamUtil;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 97
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;[B[B)V

    return-object v0
.end method


# virtual methods
.method public getDependencies()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;->odexBuf:[B

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/OdexHeaderItem;->getDexOffset([B)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;->odexBuf:[B

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/OdexHeaderItem;->getDependenciesOffset([B)I

    move-result v1

    sub-int/2addr v1, v0

    .line 65
    new-instance v7, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;->getBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    const/4 v2, 0x0

    invoke-direct {v7, v0, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;-><init>([BI)V

    add-int/lit8 v0, v1, 0xc

    .line 66
    invoke-virtual {v7, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readInt(I)I

    move-result v6

    .line 68
    new-instance v2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$1;

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v4

    add-int/lit8 v5, v1, 0x10

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;IILcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;)V

    return-object v2
.end method

.method public getOdexVersion()I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;->odexBuf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/OdexHeaderItem;->getVersion([BI)I

    move-result v0

    return v0
.end method

.method public supportsOptimizedOpcodes()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
