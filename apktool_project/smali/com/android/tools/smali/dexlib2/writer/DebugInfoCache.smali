.class public Lcom/android/tools/smali/dexlib2/writer/DebugInfoCache;
.super Ljava/lang/Object;
.source "DebugInfoCache.java"


# instance fields
.field private final data:[B

.field private final threshold:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 7
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugInfoCache;->threshold:I

    .line 10
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/DebugInfoCache;->data:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/DebugInfoCache;

    .line 18
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugInfoCache;->data:[B

    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/DebugInfoCache;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/DebugInfoCache;->data:[B

    array-length v0, v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 26
    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/DebugInfoCache;->data:[B

    aget-byte v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
