.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/BasicAnnotation;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/iface/BasicAnnotation;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract compareTo(Lcom/android/tools/smali/dexlib2/iface/Annotation;)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getElements()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getVisibility()I
.end method

.method public abstract hashCode()I
.end method
