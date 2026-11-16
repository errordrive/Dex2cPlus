.class public interface abstract Lcom/android/tools/smali/dexlib2/iface/debug/StartLocal;
.super Ljava/lang/Object;
.source "StartLocal.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/debug/DebugItem;
.implements Lcom/android/tools/smali/dexlib2/iface/debug/LocalInfo;


# virtual methods
.method public abstract getNameReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getRegister()I
.end method

.method public abstract getSignatureReference()Lcom/android/tools/smali/dexlib2/iface/reference/StringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTypeReference()Lcom/android/tools/smali/dexlib2/iface/reference/TypeReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
