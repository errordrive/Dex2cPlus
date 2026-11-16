.class public abstract Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList;
.super Ljava/util/AbstractList;
.source "FixedSizeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeList;->readItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public abstract readItem(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
