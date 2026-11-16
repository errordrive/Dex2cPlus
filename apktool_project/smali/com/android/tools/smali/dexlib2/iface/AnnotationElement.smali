.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;
.super Ljava/lang/Object;
.source "AnnotationElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract compareTo(Lcom/android/tools/smali/dexlib2/iface/AnnotationElement;)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getValue()Lcom/android/tools/smali/dexlib2/iface/value/EncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract hashCode()I
.end method
