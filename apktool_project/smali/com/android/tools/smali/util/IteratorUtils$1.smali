.class Lcom/android/tools/smali/util/IteratorUtils$1;
.super Lcom/android/tools/smali/util/AbstractIterator;
.source "IteratorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/util/IteratorUtils;->filter(Ljava/util/Iterator;Ljava/util/function/Predicate;)Lcom/android/tools/smali/util/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/util/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$retainIfTrue:Ljava/util/function/Predicate;

.field final synthetic val$unfiltered:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Ljava/util/function/Predicate;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/tools/smali/util/IteratorUtils$1;->val$unfiltered:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/android/tools/smali/util/IteratorUtils$1;->val$retainIfTrue:Ljava/util/function/Predicate;

    invoke-direct {p0}, Lcom/android/tools/smali/util/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/util/IteratorUtils$1;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/tools/smali/util/IteratorUtils$1;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/tools/smali/util/IteratorUtils$1;->val$retainIfTrue:Ljava/util/function/Predicate;

    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/smali/util/IteratorUtils$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
