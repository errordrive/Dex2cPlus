.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/MethodParameter;
.super Ljava/lang/Object;
.source "MethodParameter.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
.implements Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;


# virtual methods
.method public abstract getAnnotations()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSignature()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
