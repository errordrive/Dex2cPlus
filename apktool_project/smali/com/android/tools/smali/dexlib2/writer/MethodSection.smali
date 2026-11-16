.class public interface abstract Lcom/android/tools/smali/dexlib2/writer/MethodSection;
.super Ljava/lang/Object;
.source "MethodSection.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/IndexSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StringKey:",
        "Ljava/lang/Object;",
        "TypeKey:",
        "Ljava/lang/Object;",
        "ProtoRefKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;",
        "MethodRefKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
        "MethodKey:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/writer/IndexSection<",
        "TMethodRefKey;>;"
    }
.end annotation


# virtual methods
.method public abstract getDefiningClass(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/Object;
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMethodRefKey;)TTypeKey;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getMethodIndex(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMethodKey;)I"
        }
    .end annotation
.end method

.method public abstract getMethodReference(Ljava/lang/Object;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMethodKey;)TMethodRefKey;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getName(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Ljava/lang/Object;
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMethodRefKey;)TStringKey;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getPrototype(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .param p1    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMethodRefKey;)TProtoRefKey;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getPrototype(Ljava/lang/Object;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMethodKey;)TProtoRefKey;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
