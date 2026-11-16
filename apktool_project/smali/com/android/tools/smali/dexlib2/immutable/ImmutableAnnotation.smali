.class public Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;
.super Lcom/android/tools/smali/dexlib2/base/BaseAnnotation;
.source "ImmutableAnnotation.java"


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/ImmutableConverter<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final elements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final visibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseAnnotation;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->visibility:I

    .line 53
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->type:Ljava/lang/String;

    .line 54
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->elements:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Set;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/BaseAnnotation;-><init>()V

    .line 60
    iput p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->visibility:I

    .line 61
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->type:Ljava/lang/String;

    .line 62
    invoke-static {p3}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->elements:Ljava/util/Set;

    return-void
.end method

.method public static immutableSetOf(Ljava/lang/Iterable;)Ljava/util/Set;
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
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 81
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/Annotation;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;
    .locals 3

    .line 66
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;

    if-eqz v0, :cond_0

    .line 67
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;

    return-object p0

    .line 69
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;

    .line 70
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Annotation;->getVisibility()I

    move-result v1

    .line 71
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Annotation;->getType()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Annotation;->getElements()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;-><init>(ILjava/lang/String;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public getElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->elements:Ljava/util/Set;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->visibility:I

    return v0
.end method
