.class public Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;
.source "ImmutableField.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/Field;


# static fields
.field private static final CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/util/ImmutableConverter<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
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

.field protected final initialValue:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField$1;

    invoke-direct {v0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField$1;-><init>()V

    sput-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/tools/smali/dexlib2/iface/value/EncodedValue;Ljava/util/Collection;Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/tools/smali/dexlib2/HiddenApiRestriction;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseFieldReference;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->definingClass:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->name:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->type:Ljava/lang/String;

    .line 72
    iput p4, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->accessFlags:I

    .line 73
    invoke-static {p5}, Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValueFactory;->ofNullable(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->initialValue:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;

    .line 74
    invoke-static {p6}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableAnnotation;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->annotations:Ljava/util/Set;

    if-nez p7, :cond_0

    .line 75
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->hiddenApiRestrictions:Ljava/util/Set;

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
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;)",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 103
    sget-object v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->CONVERTER:Lcom/android/tools/smali/util/ImmutableConverter;

    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->naturalOrdering()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/tools/smali/util/ImmutableConverter;->toSortedSet(Ljava/util/Comparator;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/Field;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;
    .locals 8

    .line 80
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;

    if-eqz v0, :cond_0

    .line 81
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;

    return-object p0

    .line 83
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;

    .line 84
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Field;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Field;->getType()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Field;->getAccessFlags()I

    move-result v4

    .line 88
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Field;->getInitialValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;

    move-result-object v5

    .line 89
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Field;->getAnnotations()Ljava/util/Set;

    move-result-object v6

    .line 90
    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/Field;->getHiddenApiRestrictions()Ljava/util/Set;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/tools/smali/dexlib2/iface/value/EncodedValue;Ljava/util/Collection;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->accessFlags:I

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

    .line 98
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->annotations:Ljava/util/Set;

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->definingClass:Ljava/lang/String;

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

    .line 99
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->hiddenApiRestrictions:Ljava/util/Set;

    return-object v0
.end method

.method public getInitialValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->initialValue:Lcom/android/tools/smali/dexlib2/immutable/value/ImmutableEncodedValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableField;->type:Ljava/lang/String;

    return-object v0
.end method
