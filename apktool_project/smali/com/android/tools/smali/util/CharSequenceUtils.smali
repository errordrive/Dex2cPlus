.class public Lcom/android/tools/smali/util/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# static fields
.field private static final TO_STRING:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/android/tools/smali/util/CharSequenceUtils$1;

    invoke-direct {v0}, Lcom/android/tools/smali/util/CharSequenceUtils$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/util/CharSequenceUtils;->TO_STRING:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/android/tools/smali/util/TransformedIterable;

    sget-object v1, Lcom/android/tools/smali/util/CharSequenceUtils;->TO_STRING:Ljava/util/function/Function;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/util/TransformedIterable;-><init>(Ljava/lang/Iterable;Ljava/util/function/Function;)V

    invoke-static {v0}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/tools/smali/util/TransformedIterable;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/smali/util/TransformedIterable;-><init>(Ljava/lang/Iterable;Ljava/util/function/Function;)V

    .line 52
    invoke-static {v0}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 51
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static listHashCode(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/android/tools/smali/util/TransformedIterable;

    sget-object v1, Lcom/android/tools/smali/util/CharSequenceUtils;->TO_STRING:Ljava/util/function/Function;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/util/TransformedIterable;-><init>(Ljava/lang/Iterable;Ljava/util/function/Function;)V

    invoke-static {v0}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method
