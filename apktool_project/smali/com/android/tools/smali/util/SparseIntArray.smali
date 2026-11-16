.class public Lcom/android/tools/smali/util/SparseIntArray;
.super Ljava/lang/Object;
.source "SparseIntArray.java"


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 43
    invoke-direct {p0, v0}, Lcom/android/tools/smali/util/SparseIntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    .line 53
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    return-void
.end method

.method private static binarySearch([IIII)I
    .locals 4

    add-int/2addr p2, p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    move v1, p2

    :goto_0
    sub-int v2, v1, p1

    if-le v2, v0, :cond_1

    add-int v2, v1, p1

    .line 248
    div-int/lit8 v2, v2, 0x2

    .line 250
    aget v3, p0, v2

    if-ge v3, p3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-ne v1, p2, :cond_2

    not-int p0, p2

    return p0

    .line 258
    :cond_2
    aget p0, p0, v1

    if-ne p0, p3, :cond_3

    return v1

    :cond_3
    not-int p0, v1

    return p0
.end method


# virtual methods
.method public append(II)V
    .locals 6

    .line 219
    iget v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/util/SparseIntArray;->put(II)V

    return-void

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    array-length v2, v1

    if-lt v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 226
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 228
    new-array v2, v1, [I

    .line 229
    new-array v1, v1, [I

    .line 232
    iget-object v3, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iget-object v3, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iput-object v2, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    .line 236
    iput-object v1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    aput p1, v1, v0

    .line 240
    iget-object p1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 241
    iput v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    return-void
.end method

.method public delete(I)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/smali/util/SparseIntArray;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/tools/smali/util/SparseIntArray;->removeAt(I)V

    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/smali/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public get(II)I
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/smali/util/SparseIntArray;->binarySearch([IIII)I

    move-result p1

    if-gez p1, :cond_0

    return p2

    .line 75
    :cond_0
    iget-object p2, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    aget p1, p2, p1

    return p1
.end method

.method public getClosestSmaller(I)I
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/smali/util/SparseIntArray;->binarySearch([IIII)I

    move-result p1

    if-gez p1, :cond_1

    not-int p1, p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    aget p1, v0, p1

    return p1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    aget p1, v0, p1

    return p1
.end method

.method public indexOfKey(I)I
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/smali/util/SparseIntArray;->binarySearch([IIII)I

    move-result p1

    return p1
.end method

.method public indexOfValue(I)I
    .locals 2

    const/4 v0, 0x0

    .line 200
    :goto_0
    iget v1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public keyAt(I)I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public put(II)V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/android/tools/smali/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    aput p2, p1, v0

    return-void

    :cond_0
    not-int v0, v0

    .line 130
    iget v1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    iget-object v3, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    array-length v4, v3

    if-lt v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 131
    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 133
    new-array v3, v1, [I

    .line 134
    new-array v1, v1, [I

    .line 137
    iget-object v4, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    array-length v5, v4

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-object v4, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    array-length v5, v4

    invoke-static {v4, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iput-object v3, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    .line 141
    iput-object v1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    .line 144
    :cond_1
    iget v1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    iget v2, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    aput p1, v1, v0

    .line 151
    iget-object p1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    aput p2, p1, v0

    .line 152
    iget p1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    return-void
.end method

.method public removeAt(I)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    iget v2, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget p1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mSize:I

    return v0
.end method

.method public valueAt(I)I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/tools/smali/util/SparseIntArray;->mValues:[I

    aget p1, v0, p1

    return p1
.end method
