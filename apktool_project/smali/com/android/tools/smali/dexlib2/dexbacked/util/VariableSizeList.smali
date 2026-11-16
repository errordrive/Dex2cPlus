.class public abstract Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;
.super Ljava/util/AbstractSequentialList;
.source "VariableSizeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final buffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final offset:I

.field private final size:I


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;->buffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    .line 46
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;->offset:I

    .line 47
    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;->size:I

    return-void
.end method


# virtual methods
.method public listIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;->listIterator(I)Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;->buffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;->offset:I

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;->size:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;->listIterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;->listIterator(I)Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeListIterator;

    move-result-object p1

    return-object p1
.end method

.method protected abstract readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
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
            ">;I)TT;"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeList;->size:I

    return v0
.end method
