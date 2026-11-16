.class public Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;
.super Lcom/android/tools/smali/dexlib2/base/BaseMethodParameter;
.source "ImmutableMethodParameter.java"


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/ImmutableConverter<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final annotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseMethodParameter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;->type:Ljava/lang/String;

    .line 52
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;->annotations:Ljava/util/Set;

    .line 53
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;->name:Ljava/lang/String;

    return-void
.end method

.method public static immutableListOf(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 76
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/MethodParameter;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;
    .locals 3

    .line 57
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;

    if-eqz v0, :cond_0

    .line 58
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;

    .line 61
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 63
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/MethodParameter;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;->annotations:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;->type:Ljava/lang/String;

    return-object v0
.end method
