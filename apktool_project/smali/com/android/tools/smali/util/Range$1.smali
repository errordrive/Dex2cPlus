.class Lcom/android/tools/smali/util/Range$1;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/util/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/tools/smali/util/Range<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/tools/smali/util/Range;Lcom/android/tools/smali/util/Range;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/util/Range<",
            "*>;",
            "Lcom/android/tools/smali/util/Range<",
            "*>;)I"
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->hasLowerBound()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/smali/util/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 48
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/smali/util/Range;->hasLowerBound()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/smali/util/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-static {p1}, Lcom/android/tools/smali/util/Range;->access$000(Lcom/android/tools/smali/util/Range;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {p2}, Lcom/android/tools/smali/util/Range;->access$000(Lcom/android/tools/smali/util/Range;)Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->hasUpperBound()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/smali/util/Range;->hasUpperBound()Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    .line 59
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/smali/util/Range;->hasUpperBound()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->hasUpperBound()Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 61
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/smali/util/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 62
    invoke-static {p1}, Lcom/android/tools/smali/util/Range;->access$100(Lcom/android/tools/smali/util/Range;)Ljava/lang/Comparable;

    move-result-object p1

    invoke-static {p2}, Lcom/android/tools/smali/util/Range;->access$100(Lcom/android/tools/smali/util/Range;)Ljava/lang/Comparable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Lcom/android/tools/smali/util/Range;

    check-cast p2, Lcom/android/tools/smali/util/Range;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/util/Range$1;->compare(Lcom/android/tools/smali/util/Range;Lcom/android/tools/smali/util/Range;)I

    move-result p1

    return p1
.end method
