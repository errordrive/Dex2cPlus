.class public interface abstract Lcom/android/tools/smali/dexlib2/writer/AnnotationSetSection;
.super Ljava/lang/Object;
.source "AnnotationSetSection.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/NullableOffsetSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AnnotationKey::",
        "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
        "AnnotationSetKey:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/writer/NullableOffsetSection<",
        "TAnnotationSetKey;>;"
    }
.end annotation


# virtual methods
.method public abstract getAnnotations(Ljava/lang/Object;)Ljava/util/Collection;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAnnotationSetKey;)",
            "Ljava/util/Collection<",
            "+TAnnotationKey;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
