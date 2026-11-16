.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$4;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;
.source "DexBackedClassDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;->getRestrictionsForVirtualMethods()Ljava/util/Iterator;
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

    .line 653
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$4;->this$1:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-void
.end method


# virtual methods
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

    .line 656
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

    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedClassDef$HiddenApiRestrictionsReader$4;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
