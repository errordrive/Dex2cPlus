.class public Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;
.source "BuilderClassDef.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/ClassDef;


# instance fields
.field final accessFlags:I

.field annotationDirectoryOffset:I

.field final annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field classDefIndex:I

.field final directMethods:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
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
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final interfaces:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final sourceFile:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final staticFields:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final staticInitializers:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final superclass:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final type:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final virtualMethods:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;ILcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;Ljava/util/SortedSet;Ljava/util/SortedSet;Ljava/lang/Iterable;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;)V
    .locals 1
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nonnull;
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
    .param p9    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            "I",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            ">;",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseTypeReference;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->annotationDirectoryOffset:I

    if-nez p9, :cond_0

    .line 80
    sget-object p9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    if-nez p7, :cond_1

    .line 83
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/SortedSet;

    move-result-object p7

    :cond_1
    if-nez p8, :cond_2

    .line 86
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/SortedSet;

    move-result-object p8

    .line 89
    :cond_2
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->type:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    .line 90
    iput p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->accessFlags:I

    .line 91
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->superclass:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    .line 92
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->interfaces:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    .line 93
    iput-object p5, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->sourceFile:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    .line 94
    iput-object p6, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    .line 95
    iput-object p7, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->staticFields:Ljava/util/SortedSet;

    .line 96
    iput-object p8, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->instanceFields:Ljava/util/SortedSet;

    .line 97
    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->naturalOrdering()Ljava/util/Comparator;

    move-result-object p1

    sget-object p2, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->METHOD_IS_DIRECT:Ljava/util/function/Predicate;

    .line 98
    invoke-static {p9, p2}, Lcom/android/tools/smali/util/IteratorUtils;->filter(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/smali/util/AbstractIterator;

    move-result-object p2

    .line 97
    invoke-static {p2}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/tools/smali/util/ArraySortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/android/tools/smali/util/ArraySortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->directMethods:Ljava/util/SortedSet;

    .line 99
    invoke-static {}, Lcom/android/tools/smali/util/CollectionUtils;->naturalOrdering()Ljava/util/Comparator;

    move-result-object p1

    sget-object p2, Lcom/android/tools/smali/dexlib2/util/MethodUtil;->METHOD_IS_VIRTUAL:Ljava/util/function/Predicate;

    .line 100
    invoke-static {p9, p2}, Lcom/android/tools/smali/util/IteratorUtils;->filter(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/smali/util/AbstractIterator;

    move-result-object p2

    .line 99
    invoke-static {p2}, Lcom/android/tools/smali/util/IteratorUtils;->toList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/tools/smali/util/ArraySortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/android/tools/smali/util/ArraySortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->virtualMethods:Ljava/util/SortedSet;

    .line 101
    iput-object p10, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->staticInitializers:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    return-void
.end method

.method static synthetic lambda$getInterfaces$0(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)Ljava/lang/String;
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->accessFlags:I

    return v0
.end method

.method public getAnnotations()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->annotations:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    return-object v0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Set;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getAnnotations()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDirectMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getDirectMethods()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->directMethods:Ljava/util/SortedSet;

    return-object v0
.end method

.method public bridge synthetic getFields()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getFields()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 122
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$1;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)V

    return-object v0
.end method

.method public bridge synthetic getInstanceFields()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getInstanceFields()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFields()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->instanceFields:Ljava/util/SortedSet;

    return-object v0
.end method

.method public getInterfaces()Ljava/util/List;
    .locals 2
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

    .line 116
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->interfaces:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$$ExternalSyntheticLambda1;-><init>()V

    .line 117
    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 118
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getMethods()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 137
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$2;

    invoke-direct {v0, p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef$2;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)V

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->sourceFile:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStaticFields()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getStaticFields()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getStaticFields()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->staticFields:Ljava/util/SortedSet;

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->superclass:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->type:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVirtualMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->getVirtualMethods()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMethods()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->virtualMethods:Ljava/util/SortedSet;

    return-object v0
.end method
