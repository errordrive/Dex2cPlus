.class public Lcom/android/tools/smali/util/TransformedIterable;
.super Ljava/lang/Object;
.source "TransformedIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final backingIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TF;>;"
        }
    .end annotation
.end field

.field final transformFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TF;TT;>;"
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
            "+TF;>;",
            "Ljava/util/function/Function<",
            "TF;TT;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/tools/smali/util/TransformedIterable;->backingIterable:Ljava/lang/Iterable;

    .line 50
    iput-object p2, p0, Lcom/android/tools/smali/util/TransformedIterable;->transformFunction:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;

    iget-object v1, p0, Lcom/android/tools/smali/util/TransformedIterable;->backingIterable:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/smali/util/TransformedIterable;->transformFunction:Ljava/util/function/Function;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/TransformedIterable$TransformedIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    return-object v0
.end method
