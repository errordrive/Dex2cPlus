.class Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$1;
.super Ljava/lang/Object;
.source "ZipDexContainer.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;->getEntry(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer$DexEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;

.field final synthetic val$dexFile:Lcom/android/tools/smali/dexlib2/iface/DexFile;

.field final synthetic val$entryName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;Ljava/lang/String;Lcom/android/tools/smali/dexlib2/iface/DexFile;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$1;->val$entryName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$1;->val$dexFile:Lcom/android/tools/smali/dexlib2/iface/DexFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContainer()Lcom/android/tools/smali/dexlib2/iface/MultiDexContainer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer;

    return-object v0
.end method

.method public getDexFile()Lcom/android/tools/smali/dexlib2/iface/DexFile;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$1;->val$dexFile:Lcom/android/tools/smali/dexlib2/iface/DexFile;

    return-object v0
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/ZipDexContainer$1;->val$entryName:Ljava/lang/String;

    return-object v0
.end method
