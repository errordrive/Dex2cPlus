.class Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;
.super Ljava/lang/Object;
.source "OatFile.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OatDexEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final buf:[B

.field public final dexOffset:I

.field public final entryName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;Ljava/lang/String;[BI)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->entryName:Ljava/lang/String;

    .line 577
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->buf:[B

    .line 578
    iput p4, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->dexOffset:I

    return-void
.end method


# virtual methods
.method public getContainer()Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    return-object v0
.end method

.method public getDexFile()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .locals 5

    .line 582
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->buf:[B

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->dexOffset:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/CDexBackedDexFile;->isCdex([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatCDexFile;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->buf:[B

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->dexOffset:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatCDexFile;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;[BI)V

    return-object v0

    .line 586
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->buf:[B

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->dexOffset:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/util/DexUtil;->verifyDexHeader([BI)I
    :try_end_0
    .catch Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexFile;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->buf:[B

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->dexOffset:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexFile;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;[BI)V

    return-object v0

    :catch_0
    move-exception v0

    .line 588
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v1

    const/16 v2, 0x57

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    .line 589
    new-instance v1, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->entryName:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "Could not locate the embedded dex file %s. Is the vdex file missing?"

    invoke-direct {v1, v0, v2, v4}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 592
    :cond_1
    new-instance v1, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->entryName:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "The embedded dex file %s does not appear to be a valid dex file."

    invoke-direct {v1, v0, v2, v4}, Lcom/android/tools/smali/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic getDexFile()Lcom/android/tools/smali/dexlib2/iface/DexFile;
    .locals 1

    .line 570
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->getDexFile()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object v0

    return-object v0
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$OatDexEntry;->entryName:Ljava/lang/String;

    return-object v0
.end method
