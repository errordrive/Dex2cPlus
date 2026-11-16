.class Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$1;
.super Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;
.source "DexBackedOdexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;->getDependencies()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;

.field final synthetic val$fromStartBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;IILcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile;

    iput-object p5, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$1;->val$fromStartBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$1;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/String;
    .locals 3
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
            "Ljava/lang/String;"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->readInt()I

    move-result p2

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    add-int/lit8 v1, p2, 0x14

    .line 73
    invoke-virtual {p1, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->moveRelative(I)V

    .line 75
    :try_start_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/DexBackedOdexFile$1;->val$fromStartBuffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->buf:[B

    add-int/lit8 p2, p2, -0x1

    const-string v2, "US-ASCII"

    invoke-direct {p1, v1, v0, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 77
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
