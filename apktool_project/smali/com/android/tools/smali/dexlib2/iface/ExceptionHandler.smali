.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract compareTo(Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;)I
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/ExceptionHandler;
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

.method public abstract getExceptionType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getExceptionTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getHandlerCodeAddress()I
.end method

.method public abstract hashCode()I
.end method
