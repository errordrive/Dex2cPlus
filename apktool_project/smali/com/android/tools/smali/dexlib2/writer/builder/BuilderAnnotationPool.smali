.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;
.source "BuilderAnnotationPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;",
        "Lcom/android/tools/smali/dexlib2/writer/AnnotationSection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final internedItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    .line 45
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getElementName(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 81
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;->name:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    return-object p1
.end method

.method public bridge synthetic getElementName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->getElementName(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1
.end method

.method public getElementValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 86
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;->value:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    return-object p1
.end method

.method public bridge synthetic getElementValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->getElementValue(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p1

    return-object p1
.end method

.method public getElements(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 76
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->elements:Ljava/util/Set;

    return-object p1
.end method

.method public bridge synthetic getElements(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->getElements(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 90
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->offset:I

    return p1
.end method

.method public bridge synthetic getItemOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->getItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;)I

    move-result p1

    return p1
.end method

.method public getItems()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 94
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getType(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 71
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->type:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    return-object p1
.end method

.method public bridge synthetic getType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->getType(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 67
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;->visibility:I

    return p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 43
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->getVisibility(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;)I

    move-result p1

    return p1
.end method

.method public internAnnotation(Lcom/android/tools/smali/dexlib2/iface/Annotation;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;
    .locals 4
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/Annotation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;

    if-eqz v0, :cond_0

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;

    .line 59
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Annotation;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v2, v2, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->typeSection:Lcom/android/tools/smali/dexlib2/writer/TypeSection;

    check-cast v2, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;

    .line 60
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Annotation;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    .line 61
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Annotation;->getElements()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->internAnnotationElements(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;-><init>(ILcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;Ljava/util/Set;)V

    .line 62
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method
