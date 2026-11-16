.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$3;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;
.source "DexBackedClassDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->getRestrictionsForDirectMethods()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$3;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Integer;
    .locals 2

    .line 632
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$3;->nextIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$3;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;

    invoke-static {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;->access$700(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$3;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;

    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$3;->getReaderOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->access$1302(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;I)I

    .line 635
    :cond_0
    invoke-super {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$3;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/Integer;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;I)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 628
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 625
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$3;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
