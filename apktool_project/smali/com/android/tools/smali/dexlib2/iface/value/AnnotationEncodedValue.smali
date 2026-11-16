.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/value/AnnotationEncodedValue;
.super Ljava/lang/Object;
.source "AnnotationEncodedValue.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
.implements Lcom/android/tools/smali/dexlib2/iface/BasicAnnotation;


# virtual methods
.method public abstract compareTo(Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;)I
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
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

.method public abstract hashCode()I
.end method
