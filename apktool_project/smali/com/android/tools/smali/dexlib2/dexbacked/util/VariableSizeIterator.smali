.class public abstract Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;
.super Ljava/lang/Object;
.source "VariableSizeIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private index:I

.field private final reader:Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexReader<",
            "+",
            "Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final size:I


# direct methods
.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;->reader:Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    .line 48
    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;->size:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)V
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
            ">;I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;->reader:Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    .line 53
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;->size:I

    return-void
.end method


# virtual methods
.method public getReaderOffset()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;->reader:Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 71
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;->index:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 76
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;->index:I

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;->size:I

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;->reader:Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;->index:I

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
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

.method public remove()V
    .locals 1

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
