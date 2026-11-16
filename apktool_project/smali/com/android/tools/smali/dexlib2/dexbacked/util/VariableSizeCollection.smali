.class public abstract Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;
.super Ljava/util/AbstractCollection;
.source "VariableSizeCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
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
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;->buffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    .line 46
    iput p2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;->offset:I

    .line 47
    iput p3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;->size:I

    return-void
.end method


# virtual methods
.method public iterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 55
    new-instance v0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;->buffer:Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;

    iget v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;->offset:I

    iget v3, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;->size:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection$1;-><init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;Lcom/android/tools/smali/dexlib2/dexbacked/DexBuffer;II)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;->iterator()Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeIterator;

    move-result-object v0

    return-object v0
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

    .line 63
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/VariableSizeCollection;->size:I

    return v0
.end method
