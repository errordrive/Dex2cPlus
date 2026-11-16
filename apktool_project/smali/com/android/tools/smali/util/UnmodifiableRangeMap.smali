.class public Lcom/android/tools/smali/util/UnmodifiableRangeMap;
.super Ljava/lang/Object;
.source "UnmodifiableRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/util/UnmodifiableRangeMap$UnmodifiableEntry;,
        Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/android/tools/smali/util/UnmodifiableRangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/UnmodifiableRangeMap<",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/smali/util/Range<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field private final transient values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/android/tools/smali/util/UnmodifiableRangeMap;

    .line 45
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/UnmodifiableRangeMap;-><init>(Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->EMPTY:Lcom/android/tools/smali/util/UnmodifiableRangeMap;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/util/Range<",
            "TK;>;>;",
            "Ljava/util/List<",
            "TV;>;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->ranges:Ljava/util/List;

    .line 124
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->values:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/android/tools/smali/util/UnmodifiableRangeMap$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/tools/smali/util/UnmodifiableRangeMap;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static builder()Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;

    invoke-direct {v0}, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;-><init>()V

    return-object v0
.end method

.method public static of()Lcom/android/tools/smali/util/UnmodifiableRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/tools/smali/util/UnmodifiableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->EMPTY:Lcom/android/tools/smali/util/UnmodifiableRangeMap;

    return-object v0
.end method

.method private static rangeBinarySearch(Ljava/util/List;Ljava/lang/Comparable;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/util/Range<",
            "TT;>;>;TT;)I"
        }
    .end annotation

    .line 159
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_4

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 163
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/util/Range;

    .line 164
    invoke-virtual {v3, p1}, Lcom/android/tools/smali/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 168
    :cond_0
    invoke-virtual {v3}, Lcom/android/tools/smali/util/Range;->hasLowerBound()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/tools/smali/util/Range;->getLowerBound()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/smali/util/Range;->getUpperBound()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    :goto_1
    if-lez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    if-gez v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_3
    :goto_2
    return v2

    :cond_4
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->ranges:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->rangeBinarySearch(Ljava/util/List;Ljava/lang/Comparable;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->ranges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/util/Range;

    .line 138
    invoke-virtual {v2, p1}, Lcom/android/tools/smali/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->values:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lcom/android/tools/smali/util/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->ranges:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->rangeBinarySearch(Ljava/util/List;Ljava/lang/Comparable;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->ranges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/smali/util/Range;

    .line 153
    invoke-virtual {v2, p1}, Lcom/android/tools/smali/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/tools/smali/util/UnmodifiableRangeMap$UnmodifiableEntry;

    iget-object v0, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap;->values:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/android/tools/smali/util/UnmodifiableRangeMap$UnmodifiableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    return-object v0
.end method
