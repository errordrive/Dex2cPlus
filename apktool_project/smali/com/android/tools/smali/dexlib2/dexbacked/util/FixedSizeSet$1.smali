.class Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet$1;
.super Ljava/lang/Object;
.source "FixedSizeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 48
    iget v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet$1;->index:I

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet;

    invoke-virtual {v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet;->size()I

    move-result v1

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

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet$1;->this$0:Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet$1;->index:I

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/dexbacked/util/FixedSizeSet;->readItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
