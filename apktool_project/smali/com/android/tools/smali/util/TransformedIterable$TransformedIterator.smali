.class public Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;
.super Ljava/lang/Object;
.source "TransformedIterable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/util/TransformedIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<G:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final backingIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TG;>;"
        }
    .end annotation
.end field

.field final transformFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TG;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TG;>;",
            "Ljava/util/function/Function<",
            "TG;TU;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;->backingIterator:Ljava/util/Iterator;

    .line 72
    iput-object p2, p0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;->transformFunction:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TG;>;",
            "Ljava/util/function/Function<",
            "TG;TU;>;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;->backingIterator:Ljava/util/Iterator;

    .line 78
    iput-object p2, p0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;->transformFunction:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;->transformFunction:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
