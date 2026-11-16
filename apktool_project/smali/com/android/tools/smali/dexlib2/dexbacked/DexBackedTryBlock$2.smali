.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$2;
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
        "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedExceptionHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;

.field final synthetic val$sizeWithCatchAll:I


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;III)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$2;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;

    iput p5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$2;->val$sizeWithCatchAll:I

    invoke-direct {p0, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-void
.end method


# virtual methods
.method protected readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedExceptionHandler;
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
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedExceptionHandler;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 86
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$2;->val$sizeWithCatchAll:I

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 87
    new-instance p2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedCatchAllExceptionHandler;

    invoke-direct {p2, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedCatchAllExceptionHandler;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)V

    return-object p2

    .line 89
    :cond_0
    new-instance p2, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTypedExceptionHandler;

    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$2;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock;

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

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedTryBlock$2;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedExceptionHandler;

    move-result-object p1

    return-object p1
.end method
