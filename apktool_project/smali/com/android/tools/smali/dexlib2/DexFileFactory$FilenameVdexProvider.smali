.class public Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;
.super Ljava/lang/Object;
.source "DexFileFactory.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$VdexProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/DexFileFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilenameVdexProvider"
.end annotation


# instance fields
.field private buf:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private loadedVdex:Z

.field private final vdexFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;->buf:[B

    const/4 v0, 0x0

    .line 498
    iput-boolean v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;->loadedVdex:Z

    .line 501
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 502
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;->getNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 503
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".vdex"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;->vdexFile:Ljava/io/File;

    return-void
.end method

.method public static getNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 537
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 538
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 539
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getVdex()[B
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 507
    iget-boolean v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;->loadedVdex:Z

    if-nez v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;->vdexFile:Ljava/io/File;

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;->vdexFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 521
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/android/tools/smali/util/InputStreamUtil;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;->buf:[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 527
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;->buf:[B

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;->loadedVdex:Z

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$FilenameVdexProvider;->buf:[B

    return-object v0
.end method
