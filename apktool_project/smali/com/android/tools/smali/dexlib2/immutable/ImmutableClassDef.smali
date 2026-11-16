.class public Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;
.source "ImmutableClassDef.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/ClassDef;


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/ImmutableConverter<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
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

.field protected final directMethods:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final instanceFields:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final interfaces:Ljava/util/List;
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

.field protected final sourceFile:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final staticFields:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final superclass:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final virtualMethods:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    if-nez p7, :cond_0

    .line 78
    sget-object p7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    if-nez p8, :cond_1

    .line 81
    sget-object p8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 84
    :cond_1
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->type:Ljava/lang/String;

    .line 85
    iput p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->accessFlags:I

    .line 86
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->superclass:Ljava/lang/String;

    if-nez p4, :cond_2

    .line 87
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->interfaces:Ljava/util/List;

    .line 88
    iput-object p5, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->sourceFile:Ljava/lang/String;

    .line 89
    invoke-static {p6}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->annotations:Ljava/util/Set;

    .line 90
    sget-object p1, Lcom/android/tools/smali/dexlib2/util/FieldUtil;->FIELD_IS_STATIC:Ljava/util/function/Predicate;

    invoke-static {p7, p1}, Lcom/android/tools/smali/util/IteratorUtils;->filter(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/smali/util/AbstractIterator;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->staticFields:Ljava/util/SortedSet;

    .line 91
    sget-object p1, Lcom/android/tools/smali/dexlib2/util/FieldUtil;->FIELD_IS_INSTANCE:Ljava/util/function/Predicate;

    invoke-static {p7, p1}, Lcom/android/tools/smali/util/IteratorUtils;->filter(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/smali/util/AbstractIterator;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->instanceFields:Ljava/util/SortedSet;

    .line 92
    sget-object p1, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->METHOD_IS_DIRECT:Ljava/util/function/Predicate;

    invoke-static {p8, p1}, Lcom/android/tools/smali/util/IteratorUtils;->filter(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/smali/util/AbstractIterator;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->directMethods:Ljava/util/SortedSet;

    .line 93
    sget-object p1, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->METHOD_IS_VIRTUAL:Ljava/util/function/Predicate;

    invoke-static {p8, p1}, Lcom/android/tools/smali/util/IteratorUtils;->filter(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/smali/util/AbstractIterator;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->virtualMethods:Ljava/util/SortedSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Method;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->type:Ljava/lang/String;

    .line 107
    iput p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->accessFlags:I

    .line 108
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->superclass:Ljava/lang/String;

    if-nez p4, :cond_0

    .line 109
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->interfaces:Ljava/util/List;

    .line 110
    iput-object p5, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->sourceFile:Ljava/lang/String;

    .line 111
    invoke-static {p6}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->annotations:Ljava/util/Set;

    .line 112
    invoke-static {p7}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->staticFields:Ljava/util/SortedSet;

    .line 113
    invoke-static {p8}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->instanceFields:Ljava/util/SortedSet;

    .line 114
    invoke-static {p9}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->directMethods:Ljava/util/SortedSet;

    .line 115
    invoke-static {p10}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->virtualMethods:Ljava/util/SortedSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Ljava/util/SortedSet;Ljava/util/SortedSet;Ljava/util/SortedSet;Ljava/util/SortedSet;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/SortedSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/SortedSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/SortedSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/SortedSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;",
            ">;",
            "Ljava/util/SortedSet<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;",
            ">;",
            "Ljava/util/SortedSet<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;",
            ">;",
            "Ljava/util/SortedSet<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;",
            ">;",
            "Ljava/util/SortedSet<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->type:Ljava/lang/String;

    .line 129
    iput p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->accessFlags:I

    .line 130
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->superclass:Ljava/lang/String;

    .line 131
    invoke-static {p4}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->interfaces:Ljava/util/List;

    .line 132
    iput-object p5, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->sourceFile:Ljava/lang/String;

    .line 133
    invoke-static {p6}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->annotations:Ljava/util/Set;

    .line 134
    invoke-static {p7}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->staticFields:Ljava/util/SortedSet;

    .line 135
    invoke-static {p8}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->instanceFields:Ljava/util/SortedSet;

    .line 136
    invoke-static {p9}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->directMethods:Ljava/util/SortedSet;

    .line 137
    invoke-static {p10}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->virtualMethods:Ljava/util/SortedSet;

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
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 182
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;
    .locals 11

    .line 141
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;

    if-eqz v0, :cond_0

    .line 142
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;

    return-object p0

    .line 144
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;

    .line 145
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getAccessFlags()I

    move-result v2

    .line 147
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getInterfaces()Ljava/util/List;

    move-result-object v4

    .line 149
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSourceFile()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getAnnotations()Ljava/util/Set;

    move-result-object v6

    .line 151
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v7

    .line 152
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v8

    .line 153
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v9

    .line 154
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->accessFlags:I

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

    .line 162
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->annotations:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic getDirectMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->getDirectMethods()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->directMethods:Ljava/util/SortedSet;

    return-object v0
.end method

.method public getFields()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 171
    new-instance v0, Lcom/android/tools/smali/util/ChainedIterable;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->staticFields:Ljava/util/SortedSet;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->instanceFields:Ljava/util/SortedSet;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ChainedIterable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public bridge synthetic getInstanceFields()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->getInstanceFields()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->instanceFields:Ljava/util/SortedSet;

    return-object v0
.end method

.method public getInterfaces()Ljava/util/List;
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

    .line 160
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->interfaces:Ljava/util/List;

    return-object v0
.end method

.method public getMethods()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 177
    new-instance v0, Lcom/android/tools/smali/util/ChainedIterable;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->directMethods:Ljava/util/SortedSet;

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->virtualMethods:Ljava/util/SortedSet;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/smali/util/ChainedIterable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->sourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getStaticFields()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->getStaticFields()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStaticFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->staticFields:Ljava/util/SortedSet;

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->superclass:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getVirtualMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->getVirtualMethods()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->virtualMethods:Ljava/util/SortedSet;

    return-object v0
.end method
