.class public Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;
.super Lcom/android/tools/smali/dexlib2/writer/pool/BaseNullableOffsetPool;
.source "AnnotationSetPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/smali/dexlib2/writer/pool/BaseNullableOffsetPool<",
        "Ljava/util/Set<",
        "+",
        "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
        ">;>;",
        "Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection<",
        "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
        "Ljava/util/Set<",
        "+",
        "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/BaseNullableOffsetPool;-><init>(Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAnnotations(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 40
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;->getAnnotations(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations(Ljava/util/Set;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;)",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    return-object p1
.end method

.method public intern(Ljava/util/Set;)V
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;->internedItems:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/smali/dexlib2/iface/Annotation;

    .line 52
    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationSetPool;->dexPool:Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/writer/pool/DexPool;->annotationSection:Lcom/android/tools/smali/dexlib2/writer/AnnotationSection;

    check-cast v1, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationPool;

    invoke-virtual {v1, v0}, Lcom/android/tools/smali/dexlib2/writer/pool/AnnotationPool;->intern(Lcom/android/tools/smali/dexlib2/iface/Annotation;)V

    goto :goto_0

    :cond_0
    return-void
.end method
