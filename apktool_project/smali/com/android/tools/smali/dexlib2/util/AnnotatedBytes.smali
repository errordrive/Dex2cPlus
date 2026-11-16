.class public Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;
.super Ljava/lang/Object;
.source "AnnotatedBytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;,
        Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;
    }
.end annotation


# instance fields
.field private annotatations:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private cursor:I

.field private endLimit:I

.field private hexCols:I

.field private indentLevel:I

.field private outputWidth:I

.field private startLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    const/16 v0, 0x8

    .line 78
    iput v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->hexCols:I

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->startLimit:I

    .line 81
    iput v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->endLimit:I

    .line 84
    iput p1, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->outputWidth:I

    return-void
.end method

.method private formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    aput-object p3, v3, v2

    const-string p1, "[0x%x, 0x%x) \"%s\""

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 229
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    aput-object p3, p2, v0

    const-string p1, "[0x%x, ) \"%s\""

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatAnnotation(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 222
    invoke-direct {p0, p1, v0, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public varargs annotate(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 120
    iget v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->startLimit:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v3, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->endLimit:I

    if-eq v3, v2, :cond_1

    iget v2, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    if-lt v2, v0, :cond_0

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Lcom/android/tools/smali/util/ExceptionWithContext;

    const-string p2, "Annotating outside the parent bounds"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 125
    array-length v0, p3

    if-lez v0, :cond_2

    .line 126
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 130
    :cond_2
    iget p3, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int v0, p3, p1

    .line 135
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    .line 136
    const-string v2, "Cannot add annotation %s, due to existing annotation %s"

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-nez p3, :cond_4

    .line 138
    iget-object v5, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    iget v6, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 140
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    .line 141
    iget-object v6, v6, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->rangeAnnotation:Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;

    if-nez v6, :cond_3

    goto :goto_1

    .line 143
    :cond_3
    new-instance p3, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr p1, v0

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, v6, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    invoke-direct {p3, v2, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_4
    if-lez p1, :cond_6

    .line 151
    iget-object v5, p3, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->rangeAnnotation:Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;

    if-nez v5, :cond_5

    goto :goto_1

    .line 153
    :cond_5
    new-instance p3, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr p1, v0

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    iget-object v0, v5, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    .line 156
    invoke-direct {p0, p2, v0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    invoke-direct {p3, v2, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_6
    :goto_1
    const/4 v5, 0x0

    if-lez p1, :cond_a

    .line 162
    iget-object v6, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    iget v7, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 164
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v0, :cond_9

    .line 168
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    .line 169
    iget-object v0, p3, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->rangeAnnotation:Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;

    if-nez v0, :cond_8

    .line 176
    iget-object v0, p3, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->pointAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 177
    new-instance v0, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v5, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr p1, v5

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v5, p1, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object p2, p3, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->pointAnnotations:Ljava/util/List;

    .line 181
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;

    iget-object p2, p2, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    .line 180
    invoke-direct {p0, v8, v7, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v1

    aput-object p2, p3, v3

    invoke-direct {v0, v2, p3}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 184
    :cond_7
    new-instance p3, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr p1, v0

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v1

    aput-object v7, p2, v3

    const-string p1, "Cannot add annotation %s, due to existing annotation endpoint at %d"

    invoke-direct {p3, p1, p2}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    .line 171
    :cond_8
    new-instance p3, Lcom/android/tools/smali/util/ExceptionWithContext;

    iget v5, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr p1, v5

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v5, p1, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, v0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    .line 174
    invoke-direct {p0, v8, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    invoke-direct {p3, v2, v0}, Lcom/android/tools/smali/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_9
    if-ne v8, v0, :cond_a

    .line 192
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    goto :goto_2

    :cond_a
    move-object v1, v5

    :goto_2
    if-nez p3, :cond_b

    .line 202
    new-instance p3, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    invoke-direct {p3, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;-><init>(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$1;)V

    .line 203
    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    iget v3, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-nez p1, :cond_c

    .line 206
    iget-object p3, p3, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->pointAnnotations:Ljava/util/List;

    new-instance v0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;

    iget v1, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indentLevel:I

    invoke-direct {v0, v1, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 208
    :cond_c
    new-instance v2, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;

    iget v3, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indentLevel:I

    invoke-direct {v2, v3, p2}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;-><init>(ILjava/lang/String;)V

    iput-object v2, p3, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->rangeAnnotation:Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;

    if-nez v1, :cond_d

    .line 212
    new-instance p2, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    invoke-direct {p2, v5}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;-><init>(Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$1;)V

    .line 213
    iget-object p3, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_d
    :goto_3
    iget p2, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    return-void
.end method

.method public varargs annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 106
    iget v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public clearLimit()V
    .locals 1

    const/4 v0, -0x1

    .line 333
    iput v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->startLimit:I

    .line 334
    iput v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->endLimit:I

    return-void
.end method

.method public deindent()V
    .locals 1

    .line 238
    iget v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indentLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indentLevel:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indentLevel:I

    :cond_0
    return-void
.end method

.method public getAnnotationWidth()I
    .locals 2

    .line 271
    iget v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->hexCols:I

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x8

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 273
    iget v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->outputWidth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCursor()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    return v0
.end method

.method public indent()V
    .locals 1

    .line 234
    iget v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->indentLevel:I

    return-void
.end method

.method public moveBy(I)V
    .locals 1

    .line 102
    iget v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    return-void
.end method

.method public moveTo(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->cursor:I

    return-void
.end method

.method public setLimit(II)V
    .locals 0

    .line 328
    iput p1, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->startLimit:I

    .line 329
    iput p2, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->endLimit:I

    return-void
.end method

.method public writeAnnotations(Ljava/io/Writer;[BI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->getAnnotationWidth()I

    move-result v0

    .line 283
    iget v1, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->outputWidth:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 285
    const-string v2, " "

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Lcom/android/tools/smali/util/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 287
    new-instance v7, Lcom/android/tools/smali/util/TwoColumnOutput;

    const-string v2, "|"

    invoke-direct {v7, p1, v1, v0, v2}, Lcom/android/tools/smali/util/TwoColumnOutput;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Integer;

    .line 290
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    .line 292
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    .line 293
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 295
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const-string v10, ""

    if-ge v0, v1, :cond_2

    .line 296
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v11, v0, 0x1

    .line 297
    aget-object v2, p1, v11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 299
    aget-object v0, v8, v0

    .line 301
    iget-object v3, v0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->pointAnnotations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;

    .line 302
    iget v5, v4, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;->indentLevel:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v6, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 303
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v10, v4}, Lcom/android/tools/smali/util/TwoColumnOutput;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :cond_0
    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->rangeAnnotation:Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;

    if-eqz v0, :cond_1

    .line 309
    iget v3, v0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;->indentLevel:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v6, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_1
    move v0, v1

    add-int v1, v0, p3

    sub-int/2addr v2, v0

    .line 315
    iget v4, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->hexCols:I

    const/4 v5, 0x6

    move v3, v1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/tools/smali/util/Hex;->dump([BIIIII)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v7, v1, v10}, Lcom/android/tools/smali/util/TwoColumnOutput;->write(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    goto :goto_0

    .line 320
    :cond_2
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 321
    array-length v1, p2

    if-ge p1, v1, :cond_3

    add-int v1, p1, p3

    .line 322
    array-length v2, p2

    sub-int v2, v2, p3

    sub-int/2addr v2, p1

    iget v4, p0, Lcom/android/tools/smali/dexlib2/util/AnnotatedBytes;->hexCols:I

    const/4 v5, 0x6

    move v3, v1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/tools/smali/util/Hex;->dump([BIIIII)Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {v7, p1, v10}, Lcom/android/tools/smali/util/TwoColumnOutput;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
