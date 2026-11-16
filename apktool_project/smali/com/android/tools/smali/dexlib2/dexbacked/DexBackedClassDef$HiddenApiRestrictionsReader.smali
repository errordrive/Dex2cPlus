.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;
.super Ljava/lang/Object;
.source "DexBackedClassDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HiddenApiRestrictionsReader"
.end annotation


# instance fields
.field private directMethodsStartOffset:I

.field private instanceFieldsStartOffset:I

.field private final startOffset:I

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

.field private virtualMethodsStartOffset:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;I)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->startOffset:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;)Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;
    .locals 0

    .line 556
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->getRestrictionsForStaticFields()Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;I)I
    .locals 0

    .line 556
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->instanceFieldsStartOffset:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;I)I
    .locals 0

    .line 556
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->directMethodsStartOffset:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;I)I
    .locals 0

    .line 556
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->virtualMethodsStartOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;)Ljava/util/Iterator;
    .locals 0

    .line 556
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->getRestrictionsForInstanceFields()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;)Ljava/util/Iterator;
    .locals 0

    .line 556
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->getRestrictionsForDirectMethods()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;)Ljava/util/Iterator;
    .locals 0

    .line 556
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->getRestrictionsForVirtualMethods()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private getDirectMethodsStartOffset()I
    .locals 3

    .line 613
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->directMethodsStartOffset:I

    if-nez v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->getInstanceFieldsStartOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    const/4 v1, 0x0

    .line 615
    :goto_0
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-static {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->access$400(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 616
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->directMethodsStartOffset:I

    .line 620
    :cond_1
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->directMethodsStartOffset:I

    return v0
.end method

.method private getInstanceFieldsStartOffset()I
    .locals 3

    .line 585
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->instanceFieldsStartOffset:I

    if-nez v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->startOffset:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    const/4 v1, 0x0

    .line 587
    :goto_0
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-static {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->access$100(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 588
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->instanceFieldsStartOffset:I

    .line 592
    :cond_1
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->instanceFieldsStartOffset:I

    return v0
.end method

.method private getRestrictionsForDirectMethods()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 624
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$3;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 625
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->getDirectMethodsStartOffset()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-static {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->access$700(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$3;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-object v0
.end method

.method private getRestrictionsForInstanceFields()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 596
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$2;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 597
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->getInstanceFieldsStartOffset()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-static {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->access$400(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$2;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-object v0
.end method

.method private getRestrictionsForStaticFields()Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 569
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->startOffset:I

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-static {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->access$100(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-object v0
.end method

.method private getRestrictionsForVirtualMethods()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 652
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$4;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    .line 653
    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->getVirtualMethodsStartOffset()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-static {v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->access$1000(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$4;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-object v0
.end method

.method private getVirtualMethodsStartOffset()I
    .locals 3

    .line 641
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->virtualMethodsStartOffset:I

    if-nez v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;->getDataBuffer()Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->getDirectMethodsStartOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object v0

    const/4 v1, 0x0

    .line 643
    :goto_0
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-static {v2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->access$700(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 644
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->virtualMethodsStartOffset:I

    .line 648
    :cond_1
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->virtualMethodsStartOffset:I

    return v0
.end method
