.class public Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;
.super Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;
.source "ImmutableAnnotationEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;


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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->type:Ljava/lang/String;

    .line 51
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->elements:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotationElement;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/value/BaseAnnotationEncodedValue;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->type:Ljava/lang/String;

    .line 57
    invoke-static {p2}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->elements:Ljava/util/Set;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;
    .locals 2

    .line 61
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;

    if-eqz v0, :cond_0

    .line 62
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;

    return-object p0

    .line 64
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;

    .line 65
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

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

    .line 70
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->elements:Ljava/util/Set;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->type:Ljava/lang/String;

    return-object v0
.end method
