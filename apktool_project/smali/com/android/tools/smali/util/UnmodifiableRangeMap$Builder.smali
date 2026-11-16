.class public final Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;
.super Ljava/lang/Object;
.source "UnmodifiableRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/util/UnmodifiableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Lcom/android/tools/smali/util/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;->entries:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$build$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 1

    .line 99
    sget-object v0, Lcom/android/tools/smali/util/Range;->RANGE_LEX_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/smali/util/Range;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/util/Range;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public build()Lcom/android/tools/smali/util/UnmodifiableRangeMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/smali/util/UnmodifiableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;->entries:Ljava/util/List;

    new-instance v1, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 102
    :goto_0
    iget-object v3, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/smali/util/Range;

    if-lez v2, :cond_1

    .line 105
    iget-object v4, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;->entries:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/util/Range;

    .line 106
    invoke-virtual {v3, v4}, Lcom/android/tools/smali/util/Range;->isConnected(Lcom/android/tools/smali/util/Range;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Lcom/android/tools/smali/util/Range;->intersection(Lcom/android/tools/smali/util/Range;)Lcom/android/tools/smali/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/smali/util/Range;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overlapping ranges: range "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " overlaps with entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v3, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_2
    new-instance v2, Lcom/android/tools/smali/util/UnmodifiableRangeMap;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/android/tools/smali/util/UnmodifiableRangeMap;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/tools/smali/util/UnmodifiableRangeMap$1;)V

    return-object v2
.end method

.method public put(Lcom/android/tools/smali/util/Range;Ljava/lang/Object;)Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/util/Range<",
            "TK;>;TV;)",
            "Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/tools/smali/util/UnmodifiableRangeMap$Builder;->entries:Ljava/util/List;

    new-instance v1, Lcom/android/tools/smali/util/UnmodifiableRangeMap$UnmodifiableEntry;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/smali/util/UnmodifiableRangeMap$UnmodifiableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ranges cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Both range and value must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
