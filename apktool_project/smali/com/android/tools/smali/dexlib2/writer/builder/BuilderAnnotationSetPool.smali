.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;
.super Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;
.source "BuilderAnnotationSetPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;",
        "Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
        ">;"
    }
.end annotation


# instance fields
.field private final internedItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
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

    .line 53
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BaseBuilderPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;)V

    .line 49
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getAnnotations(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;)Ljava/util/Collection;
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 77
    iget-object p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->annotations:Ljava/util/Set;

    return-object p1
.end method

.method public bridge synthetic getAnnotations(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 47
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->getAnnotations(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 85
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->offset:I

    return p1
.end method

.method public bridge synthetic getItemOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 47
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->getItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;)I

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
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 89
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool$1;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool$1;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public getNullableItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;)I
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 81
    :cond_0
    iget p1, p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->offset:I

    return p1
.end method

.method public bridge synthetic getNullableItemOffset(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->getNullableItemOffset(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;)I

    move-result p1

    return p1
.end method

.method public internAnnotationSet(Ljava/util/Set;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;)",
            "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    .line 58
    sget-object p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;->EMPTY:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    return-object p1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    if-eqz v0, :cond_1

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    .line 67
    invoke-static {p1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Set;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool$$ExternalSyntheticLambda2;-><init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;)V

    .line 68
    invoke-static {p1, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 69
    invoke-static {}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 67
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;-><init>(Ljava/util/Set;)V

    .line 71
    iget-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSet;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method

.method synthetic lambda$internAnnotationSet$0$com-android-tools-smali-dexlib2-writer-builder-BuilderAnnotationSetPool(Lcom/android/tools/smali/dexlib2/iface/Annotation;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationSetPool;->dexBuilder:Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/DexBuilder;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    check-cast v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;

    invoke-virtual {v0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotationPool;->internAnnotation(Lcom/android/tools/smali/dexlib2/iface/Annotation;)Lcom/android/tools/smali/dexlib2/writer/builder/BuilderAnnotation;

    move-result-object p1

    return-object p1
.end method
