.class public Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodProtoReference;
.source "ImmutableMethodProtoReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;


# instance fields
.field protected final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final returnType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodProtoReference;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/util/CharSequenceConverter;->immutableStringList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;->parameters:Ljava/util/List;

    .line 55
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;->returnType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodProtoReference;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;->parameters:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;->returnType:Ljava/lang/String;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;
    .locals 2
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 59
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    return-object p0

    .line 62
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    .line 63
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    .line 64
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->getReturnType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;-><init>(Ljava/lang/Iterable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getParameterTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodProtoReference;->returnType:Ljava/lang/String;

    return-object v0
.end method
