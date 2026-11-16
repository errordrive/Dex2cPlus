.class public abstract Lcom/android/tools/smali/util/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/lang/Iterable<",
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

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 50
    iput v0, p0, Lcom/android/tools/smali/util/AbstractIterator;->state:I

    return-void
.end method

.method private tryToComputeNext()Z
    .locals 2

    const/4 v0, 0x4

    .line 73
    iput v0, p0, Lcom/android/tools/smali/util/AbstractIterator;->state:I

    .line 74
    invoke-virtual {p0}, Lcom/android/tools/smali/util/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/util/AbstractIterator;->next:Ljava/lang/Object;

    .line 75
    iget v0, p0, Lcom/android/tools/smali/util/AbstractIterator;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 76
    iput v0, p0, Lcom/android/tools/smali/util/AbstractIterator;->state:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 54
    iput v0, p0, Lcom/android/tools/smali/util/AbstractIterator;->state:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 60
    iget v0, p0, Lcom/android/tools/smali/util/AbstractIterator;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/android/tools/smali/util/AbstractIterator;->tryToComputeNext()Z

    move-result v0

    return v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/android/tools/smali/util/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 87
    iput v0, p0, Lcom/android/tools/smali/util/AbstractIterator;->state:I

    .line 88
    iget-object v0, p0, Lcom/android/tools/smali/util/AbstractIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/android/tools/smali/util/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
