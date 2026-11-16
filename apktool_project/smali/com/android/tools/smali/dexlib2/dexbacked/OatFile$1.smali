.class Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;
.super Lcom/android/tools/smali/util/AbstractForwardSequentialList;
.source "OatFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;->getDexFiles()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/AbstractForwardSequentialList<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    invoke-direct {p0}, Lcom/android/tools/smali/util/AbstractForwardSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 192
    new-instance v0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;

    new-instance v1, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;)V

    new-instance v2, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1$1;

    invoke-direct {v2, p0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public size()I
    .locals 3

    .line 187
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/OatFile;Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$1;)V

    .line 188
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/OatFile$DexEntryIterator;->getSize()I

    move-result v0

    return v0
.end method
