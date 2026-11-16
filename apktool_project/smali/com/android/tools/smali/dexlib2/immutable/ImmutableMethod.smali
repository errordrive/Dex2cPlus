.class public Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.source "ImmutableMethod.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/Method;


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/ImmutableConverter<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final accessFlags:I

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

.field protected final definingClass:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final hiddenApiRestrictions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final methodImplementation:Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;
    .annotation runtime Ljavax/annotation/Nullable;
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
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;",
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
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V
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
    .param p6    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/MethodParameter;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->definingClass:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->name:Ljava/lang/String;

    .line 73
    invoke-static {p3}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;->immutableListOf(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->parameters:Ljava/util/List;

    .line 74
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->returnType:Ljava/lang/String;

    .line 75
    iput p5, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->accessFlags:I

    .line 76
    invoke-static {p6}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->annotations:Ljava/util/Set;

    if-nez p7, :cond_0

    .line 78
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->hiddenApiRestrictions:Ljava/util/Set;

    .line 80
    invoke-static {p8}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;->of(Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->methodImplementation:Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;)V
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
    .param p6    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->definingClass:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->name:Ljava/lang/String;

    .line 93
    invoke-static {p3}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->parameters:Ljava/util/List;

    .line 94
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->returnType:Ljava/lang/String;

    .line 95
    iput p5, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->accessFlags:I

    .line 96
    invoke-static {p6}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->annotations:Ljava/util/Set;

    .line 97
    invoke-static {p7}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->hiddenApiRestrictions:Ljava/util/Set;

    .line 98
    iput-object p8, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->methodImplementation:Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    return-void
.end method

.method public static immutableSetOf(Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;)",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 128
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->naturalOrdering()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toSortedSet(Ljava/util/Comparator;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/Method;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;
    .locals 9

    .line 102
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;

    if-eqz v0, :cond_0

    .line 103
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;

    return-object p0

    .line 105
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;

    .line 106
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v3

    .line 109
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getReturnType()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAccessFlags()I

    move-result v5

    .line 111
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getAnnotations()Ljava/util/Set;

    move-result-object v6

    .line 112
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getHiddenApiRestrictions()Ljava/util/Set;

    move-result-object v7

    .line 113
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Method;->getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;)V

    return-object v0
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->accessFlags:I

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->annotations:Ljava/util/Set;

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->definingClass:Ljava/lang/String;

    return-object v0
.end method

.method public getHiddenApiRestrictions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->hiddenApiRestrictions:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic getImplementation()Lcom/android/tools/smali/dexlib2/iface/MethodImplementation;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->getImplementation()Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->methodImplementation:Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodImplementation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->name:Ljava/lang/String;

    return-object v0
.end method

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

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethodParameter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->returnType:Ljava/lang/String;

    return-object v0
.end method
