.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
.super Ljava/lang/Object;
.source "MethodProtoReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/Reference;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)I
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
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

.method public abstract getParameterTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getReturnType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract hashCode()I
.end method
