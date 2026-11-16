.class public Lcom/android/tools/smali/util/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final RANGE_LEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/tools/smali/util/Range<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private allValues:Z

.field private lowerBound:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private lowerOpen:Z

.field private upperBound:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private upperOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/android/tools/smali/util/Range$1;

    invoke-direct {v0}, Lcom/android/tools/smali/util/Range$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/util/Range;->RANGE_LEX_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/android/tools/smali/util/Range;->allValues:Z

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    .line 143
    iput-object v0, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/android/tools/smali/util/Range;->lowerOpen:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/tools/smali/util/Range;->upperOpen:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;ZZ)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    .line 134
    iput-object p2, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    .line 135
    iput-boolean p3, p0, Lcom/android/tools/smali/util/Range;->lowerOpen:Z

    .line 136
    iput-boolean p4, p0, Lcom/android/tools/smali/util/Range;->upperOpen:Z

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/android/tools/smali/util/Range;->allValues:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/tools/smali/util/Range;)Ljava/lang/Comparable;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/tools/smali/util/Range;)Ljava/lang/Comparable;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    return-object p0
.end method

.method public static allValues()Lcom/android/tools/smali/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/android/tools/smali/util/Range<",
            "TC;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/android/tools/smali/util/Range;

    invoke-direct {v0}, Lcom/android/tools/smali/util/Range;-><init>()V

    return-object v0
.end method

.method public static atLeast(Ljava/lang/Comparable;)Lcom/android/tools/smali/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/android/tools/smali/util/Range<",
            "TC;>;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    new-instance v0, Lcom/android/tools/smali/util/Range;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/android/tools/smali/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;ZZ)V

    return-object v0
.end method

.method public static atMost(Ljava/lang/Comparable;)Lcom/android/tools/smali/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/android/tools/smali/util/Range<",
            "TC;>;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    new-instance v0, Lcom/android/tools/smali/util/Range;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/android/tools/smali/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;ZZ)V

    return-object v0
.end method

.method public static closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/tools/smali/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;TC;)",
            "Lcom/android/tools/smali/util/Range<",
            "TC;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 78
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/tools/smali/util/Range;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/android/tools/smali/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;ZZ)V

    return-object v0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lowerBound must be <= upperBound"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    .line 76
    throw p0
.end method

.method public static closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/tools/smali/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;TC;)",
            "Lcom/android/tools/smali/util/Range<",
            "TC;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 108
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/tools/smali/util/Range;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/tools/smali/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;ZZ)V

    return-object v0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lowerBound must be <= upperBound"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    .line 106
    throw p0
.end method

.method public static open(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/tools/smali/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;TC;)",
            "Lcom/android/tools/smali/util/Range<",
            "TC;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 88
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/tools/smali/util/Range;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/android/tools/smali/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;ZZ)V

    return-object v0

    .line 89
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lowerBound must be <= upperBound"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    .line 86
    throw p0
.end method

.method public static openClosed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/tools/smali/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;TC;)",
            "Lcom/android/tools/smali/util/Range<",
            "TC;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 98
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/tools/smali/util/Range;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/tools/smali/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;ZZ)V

    return-object v0

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lowerBound must be <= upperBound"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    .line 96
    throw p0
.end method


# virtual methods
.method public contains(Ljava/lang/Comparable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 187
    :cond_0
    iget-boolean v1, p0, Lcom/android/tools/smali/util/Range;->allValues:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    if-eqz v1, :cond_3

    .line 192
    iget-boolean v3, p0, Lcom/android/tools/smali/util/Range;->lowerOpen:Z

    if-eqz v3, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_3

    return v0

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    if-eqz v1, :cond_5

    .line 200
    iget-boolean v3, p0, Lcom/android/tools/smali/util/Range;->upperOpen:Z

    if-eqz v3, :cond_4

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 203
    :cond_4
    iget-object v1, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 260
    :cond_0
    instance-of v1, p1, Lcom/android/tools/smali/util/Range;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 263
    :cond_1
    check-cast p1, Lcom/android/tools/smali/util/Range;

    .line 265
    iget-boolean v1, p0, Lcom/android/tools/smali/util/Range;->allValues:Z

    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->hasAllValues()Z

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    iget-object v3, p1, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    iget-object v3, p1, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    .line 270
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/tools/smali/util/Range;->lowerOpen:Z

    .line 271
    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->openLowerBound()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/android/tools/smali/util/Range;->upperOpen:Z

    .line 272
    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->openUpperBound()Z

    move-result p1

    if-ne v1, p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public getLowerBound()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    return-object v0
.end method

.method public getUpperBound()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    return-object v0
.end method

.method public hasAllValues()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/android/tools/smali/util/Range;->allValues:Z

    return v0
.end method

.method public hasLowerBound()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasUpperBound()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public intersection(Lcom/android/tools/smali/util/Range;)Lcom/android/tools/smali/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/util/Range<",
            "TC;>;)",
            "Lcom/android/tools/smali/util/Range<",
            "TC;>;"
        }
    .end annotation

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/util/Range;->isConnected(Lcom/android/tools/smali/util/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/smali/util/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->hasLowerBound()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->getLowerBound()Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget-boolean v0, p0, Lcom/android/tools/smali/util/Range;->lowerOpen:Z

    if-eqz v0, :cond_2

    :goto_0
    move-object v0, p0

    goto :goto_2

    :cond_2
    move-object v0, p1

    goto :goto_2

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->getLowerBound()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    .line 231
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/smali/util/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 240
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/smali/util/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->hasUpperBound()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    .line 242
    :cond_5
    iget-object v1, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->getUpperBound()Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 243
    iget-boolean v1, p0, Lcom/android/tools/smali/util/Range;->upperOpen:Z

    if-eqz v1, :cond_8

    :goto_3
    move-object p1, p0

    goto :goto_5

    .line 245
    :cond_6
    iget-object v1, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->getUpperBound()Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_8

    goto :goto_3

    .line 241
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/smali/util/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 248
    :cond_8
    :goto_5
    new-instance v1, Lcom/android/tools/smali/util/Range;

    .line 249
    invoke-virtual {v0}, Lcom/android/tools/smali/util/Range;->getLowerBound()Ljava/lang/Comparable;

    move-result-object v2

    .line 250
    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->getUpperBound()Ljava/lang/Comparable;

    move-result-object v3

    .line 251
    invoke-virtual {v0}, Lcom/android/tools/smali/util/Range;->openLowerBound()Z

    move-result v0

    .line 252
    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->openUpperBound()Z

    move-result p1

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/android/tools/smali/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;ZZ)V

    return-object v1
.end method

.method public isConnected(Lcom/android/tools/smali/util/Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/util/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/android/tools/smali/util/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    .line 216
    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->getUpperBound()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/smali/util/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {p1}, Lcom/android/tools/smali/util/Range;->getLowerBound()Ljava/lang/Comparable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcom/android/tools/smali/util/Range;->allValues:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    .line 150
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/smali/util/Range;->lowerOpen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/smali/util/Range;->upperOpen:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public openLowerBound()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/android/tools/smali/util/Range;->lowerOpen:Z

    return v0
.end method

.method public openUpperBound()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/android/tools/smali/util/Range;->upperOpen:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 277
    iget-boolean v0, p0, Lcom/android/tools/smali/util/Range;->allValues:Z

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "[*]"

    return-object v0

    .line 281
    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/smali/util/Range;->lowerOpen:Z

    if-eqz v0, :cond_1

    .line 282
    const-string v0, "("

    goto :goto_0

    .line 284
    :cond_1
    const-string v0, "["

    .line 286
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/tools/smali/util/Range;->lowerBound:Ljava/lang/Comparable;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/tools/smali/util/Range;->upperBound:Ljava/lang/Comparable;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-boolean v1, p0, Lcom/android/tools/smali/util/Range;->upperOpen:Z

    if-eqz v1, :cond_2

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
