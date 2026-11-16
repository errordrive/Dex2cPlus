.class Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;
.super Ljava/lang/Object;
.source "DexFileFactory.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/DexFileFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonMultiDexContainer"
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
.field private final dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

.field private final entryName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;->entryName:Ljava/lang/String;

    .line 460
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    return-void
.end method

.method static synthetic access$200(Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    return-object p0
.end method


# virtual methods
.method public getDexEntryNames()Ljava/util/List;
    .locals 1
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

    .line 464
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;->entryName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;
    .locals 1
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;->entryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer$1;-><init>(Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
