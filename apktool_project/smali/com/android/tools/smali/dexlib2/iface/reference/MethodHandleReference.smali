.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
.super Ljava/lang/Object;
.source "MethodHandleReference.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/iface/reference/Reference;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)I
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;
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

.method public abstract getMemberReference()Lcom/android/tools/smali/dexlib2/iface/reference/Reference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getMethodHandleType()I
.end method

.method public abstract hashCode()I
.end method
