.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;
.source "DexBackedTryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->getExceptionHandlers()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList<",
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-void
.end method


# virtual methods
.method protected readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;
    .locals 1
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
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 75
    new-instance p2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p2, v0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedDexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    return-object p2
.end method

.method protected bridge synthetic readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$1;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;

    move-result-object p1

    return-object p1
.end method
