.class public interface abstract Lcom/android/tools/smali/dexlib2/writer/MethodHandleSection;
.super Ljava/lang/Object;
.source "MethodHandleSection.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/writer/IndexSection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MethodHandleKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;",
        "FieldRefKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;",
        "MethodRefKey::",
        "Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/smali/dexlib2/writer/IndexSection<",
        "TMethodHandleKey;>;"
    }
.end annotation


# virtual methods
.method public abstract getFieldReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMethodHandleKey;)TFieldRefKey;"
        }
    .end annotation
.end method

.method public abstract getMethodReference(Lcom/android/tools/smali/dexlib2/iface/reference/MethodHandleReference;)Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMethodHandleKey;)TMethodRefKey;"
        }
    .end annotation
.end method
