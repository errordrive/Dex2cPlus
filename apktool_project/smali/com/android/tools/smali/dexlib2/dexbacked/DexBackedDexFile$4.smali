.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$4;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList;
.source "DexBackedDexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getMapItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

.field final synthetic val$mapSize:I


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$4;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$4;->val$mapSize:I

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList;-><init>()V

    return-void
.end method


# virtual methods
.method public readItem(I)Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$4;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->access$100(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr v0, p1

    .line 283
    new-instance p1, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$4;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p1, v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object p1
.end method

.method public bridge synthetic readItem(I)Ljava/lang/Object;
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$4;->readItem(I)Lcom/android/tools/smali/dexlib2/dexbacked/raw/MapItem;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile$4;->val$mapSize:I

    return v0
.end method
