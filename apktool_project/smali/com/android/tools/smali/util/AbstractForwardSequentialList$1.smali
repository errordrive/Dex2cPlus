.class Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;
.super Lcom/android/tools/smali/util/AbstractListIterator;
.source "AbstractForwardSequentialList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/util/AbstractForwardSequentialList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/AbstractListIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private forwardIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private index:I

.field final synthetic this$0:Lcom/android/tools/smali/util/AbstractForwardSequentialList;

.field final synthetic val$initialIndex:I

.field final synthetic val$initialIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/util/AbstractForwardSequentialList;ILjava/util/Iterator;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->this$0:Lcom/android/tools/smali/util/AbstractForwardSequentialList;

    iput p2, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->val$initialIndex:I

    iput-object p3, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->val$initialIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/android/tools/smali/util/AbstractListIterator;-><init>()V

    add-int/lit8 p2, p2, -0x1

    .line 66
    iput p2, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->index:I

    .line 67
    iput-object p3, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->forwardIterator:Ljava/util/Iterator;

    return-void
.end method

.method private getForwardIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->forwardIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->this$0:Lcom/android/tools/smali/util/AbstractForwardSequentialList;

    iget v1, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/tools/smali/util/AbstractForwardSequentialList;->access$000(Lcom/android/tools/smali/util/AbstractForwardSequentialList;I)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->forwardIterator:Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 78
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->forwardIterator:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->getForwardIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 86
    iget v0, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->index:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->getForwardIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 91
    iget v1, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->index:I

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->forwardIterator:Ljava/util/Iterator;

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->this$0:Lcom/android/tools/smali/util/AbstractForwardSequentialList;

    iget v1, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->index:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->index:I

    invoke-static {v0, v1}, Lcom/android/tools/smali/util/AbstractForwardSequentialList;->access$000(Lcom/android/tools/smali/util/AbstractForwardSequentialList;I)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 104
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/android/tools/smali/util/AbstractForwardSequentialList$1;->index:I

    return v0
.end method
