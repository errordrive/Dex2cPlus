.class Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;
.source "PoolClassDef.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/ClassDef;


# instance fields
.field annotationDirectoryOffset:I

.field final classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field classDefIndex:I

.field final directMethods:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final instanceFields:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final interfaces:Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final staticFields:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final virtualMethods:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)V
    .locals 3
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/ClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->classDefIndex:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->annotationDirectoryOffset:I

    .line 65
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    .line 67
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->interfaces:Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key;

    .line 68
    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->naturalOrdering()Ljava/util/Comparator;

    move-result-object v0

    .line 69
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/android/tools/smali/util/ArraySortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/android/tools/smali/util/ArraySortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->staticFields:Ljava/util/SortedSet;

    .line 70
    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->naturalOrdering()Ljava/util/Comparator;

    move-result-object v0

    .line 71
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/android/tools/smali/util/ArraySortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/android/tools/smali/util/ArraySortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->instanceFields:Ljava/util/SortedSet;

    .line 72
    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->naturalOrdering()Ljava/util/Comparator;

    move-result-object v0

    .line 73
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->TRANSFORM:Ljava/util/function/Function;

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 74
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 72
    invoke-static {v0, v1}, Lcom/android/tools/smali/util/ArraySortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/android/tools/smali/util/ArraySortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->directMethods:Ljava/util/SortedSet;

    .line 75
    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->naturalOrdering()Ljava/util/Comparator;

    move-result-object v0

    .line 76
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;->TRANSFORM:Ljava/util/function/Function;

    invoke-static {p1, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 77
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 75
    invoke-static {v0, p1}, Lcom/android/tools/smali/util/ArraySortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/android/tools/smali/util/ArraySortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->virtualMethods:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getAccessFlags()I

    move-result v0

    return v0
.end method

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

    .line 101
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDirectMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getDirectMethods()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->directMethods:Ljava/util/SortedSet;

    return-object v0
.end method

.method public bridge synthetic getFields()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getFields()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 113
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)V

    return-object v0
.end method

.method public bridge synthetic getInstanceFields()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getInstanceFields()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFields()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->instanceFields:Ljava/util/SortedSet;

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

    .line 93
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->interfaces:Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/pool/TypeListPool$Key;->types:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getMethods()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 136
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef$2;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef$2;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;)V

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStaticFields()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getStaticFields()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getStaticFields()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/iface/Field;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->staticFields:Ljava/util/SortedSet;

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->classDef:Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lcom/android/tools/smali/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVirtualMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->getVirtualMethods()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMethods()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/pool/PoolMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/PoolClassDef;->virtualMethods:Ljava/util/SortedSet;

    return-object v0
.end method
