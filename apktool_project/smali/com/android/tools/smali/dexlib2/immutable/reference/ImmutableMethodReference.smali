.class public Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.source "ImmutableMethodReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableReference;


# instance fields
.field protected final definingClass:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->definingClass:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->name:Ljava/lang/String;

    .line 54
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/immutable/util/CharSequenceConverter;->immutableStringList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->parameters:Ljava/util/List;

    .line 55
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->returnType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->definingClass:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->name:Ljava/lang/String;

    .line 64
    invoke-static {p3}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->parameters:Ljava/util/List;

    .line 65
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->returnType:Ljava/lang/String;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;
    .locals 4
    .param p0    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 70
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    if-eqz v0, :cond_0

    .line 71
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    return-object p0

    .line 73
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;

    .line 74
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    .line 77
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->definingClass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/reference/ImmutableMethodReference;->returnType:Ljava/lang/String;

    return-object v0
.end method
