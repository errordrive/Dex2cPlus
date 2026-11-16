.class public final synthetic Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference$-CC;
.super Ljava/lang/Object;
.source "MethodReference.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 40
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;

    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;->compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;)I

    move-result p1

    return p1
.end method
