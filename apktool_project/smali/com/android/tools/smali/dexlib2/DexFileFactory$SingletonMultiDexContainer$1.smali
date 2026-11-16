.class Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer$1;
.super Ljava/lang/Object;
.source "DexFileFactory.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;->getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;

.field final synthetic val$entryName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;Ljava/lang/String;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer$1;->this$0:Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer$1;->val$entryName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 485
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer$1;->this$0:Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;

    return-object v0
.end method

.method public getDexFile()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer$1;->this$0:Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;->access$200(Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer;)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDexFile()Lcom/android/tools/smali/dexlib2/iface/DexFile;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 469
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer$1;->getDexFile()Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object v0

    return-object v0
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/DexFileFactory$SingletonMultiDexContainer$1;->val$entryName:Ljava/lang/String;

    return-object v0
.end method
