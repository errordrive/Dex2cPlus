.class public final synthetic Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference$-CC;
.super Ljava/lang/Object;
.source "MethodProtoReference.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 40
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;

    invoke-interface {p0, p1}, Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;->compareTo(Lcom/android/tools/smali/dexlib2/iface/reference/MethodProtoReference;)I

    move-result p1

    return p1
.end method
