.class public abstract Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;
.super Ljava/lang/Object;
.source "VariableSizeLookaheadIterator.java"

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


# static fields
.field private static final STATE_DONE:I = 0x3

.field private static final STATE_FAILED:I = 0x4

.field private static final STATE_NOT_READY:I = 0x2

.field private static final STATE_READY:I = 0x1


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

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

.field private state:I


# direct methods
.method protected constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;I)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 54
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->state:I

    .line 60
    invoke-virtual {p1, p2}, Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;->readerAt(I)Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->reader:Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    return-void
.end method

.method private tryToComputeNext()Z
    .locals 2

    const/4 v0, 0x4

    .line 81
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->state:I

    .line 82
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->next:Ljava/lang/Object;

    .line 83
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 84
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->state:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->reader:Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    invoke-virtual {p0, v0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 64
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->state:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getReaderOffset()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->reader:Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 70
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->tryToComputeNext()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 95
    iput v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->state:I

    .line 96
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected abstract readNextItem(Lcom/android/tools/smali/dexlib2/dexbacked/DexReader;)Ljava/lang/Object;
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
            ">;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
